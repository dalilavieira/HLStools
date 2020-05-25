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

// SystemVerilog created from draw_box_bb_B4_stall_region
// SystemVerilog created on Sun May 24 22:30:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module draw_box_bb_B4_stall_region (
    input wire [63:0] in_memdep_26_draw_box_avm_readdata,
    input wire [0:0] in_memdep_26_draw_box_avm_writeack,
    input wire [0:0] in_memdep_26_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_26_draw_box_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_15_0,
    input wire [32:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked90,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_memdep_28_draw_box_avm_readdata,
    input wire [0:0] in_memdep_28_draw_box_avm_writeack,
    input wire [0:0] in_memdep_28_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_28_draw_box_avm_readdatavalid,
    output wire [63:0] out_memdep_26_draw_box_avm_address,
    output wire [0:0] out_memdep_26_draw_box_avm_enable,
    output wire [0:0] out_memdep_26_draw_box_avm_read,
    output wire [0:0] out_memdep_26_draw_box_avm_write,
    output wire [63:0] out_memdep_26_draw_box_avm_writedata,
    output wire [7:0] out_memdep_26_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_26_draw_box_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_32_draw_box_avm_readdata,
    input wire [0:0] in_memdep_32_draw_box_avm_writeack,
    input wire [0:0] in_memdep_32_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_32_draw_box_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_26_o_active,
    input wire [63:0] in_memdep_37_draw_box_avm_readdata,
    input wire [0:0] in_memdep_37_draw_box_avm_writeack,
    input wire [0:0] in_memdep_37_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_37_draw_box_avm_readdatavalid,
    output wire [63:0] out_memdep_28_draw_box_avm_address,
    output wire [0:0] out_memdep_28_draw_box_avm_enable,
    output wire [0:0] out_memdep_28_draw_box_avm_read,
    output wire [0:0] out_memdep_28_draw_box_avm_write,
    output wire [63:0] out_memdep_28_draw_box_avm_writedata,
    output wire [7:0] out_memdep_28_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_28_draw_box_avm_burstcount,
    input wire [63:0] in_memdep_42_draw_box_avm_readdata,
    input wire [0:0] in_memdep_42_draw_box_avm_writeack,
    input wire [0:0] in_memdep_42_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_42_draw_box_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_28_o_active,
    input wire [63:0] in_memdep_47_draw_box_avm_readdata,
    input wire [0:0] in_memdep_47_draw_box_avm_writeack,
    input wire [0:0] in_memdep_47_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_47_draw_box_avm_readdatavalid,
    output wire [63:0] out_memdep_32_draw_box_avm_address,
    output wire [0:0] out_memdep_32_draw_box_avm_enable,
    output wire [0:0] out_memdep_32_draw_box_avm_read,
    output wire [0:0] out_memdep_32_draw_box_avm_write,
    output wire [63:0] out_memdep_32_draw_box_avm_writedata,
    output wire [7:0] out_memdep_32_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_32_draw_box_avm_burstcount,
    output wire [0:0] out_lsu_memdep_32_o_active,
    output wire [63:0] out_memdep_37_draw_box_avm_address,
    output wire [0:0] out_memdep_37_draw_box_avm_enable,
    output wire [0:0] out_memdep_37_draw_box_avm_read,
    output wire [0:0] out_memdep_37_draw_box_avm_write,
    output wire [63:0] out_memdep_37_draw_box_avm_writedata,
    output wire [7:0] out_memdep_37_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_37_draw_box_avm_burstcount,
    output wire [0:0] out_lsu_memdep_37_o_active,
    output wire [63:0] out_memdep_42_draw_box_avm_address,
    output wire [0:0] out_memdep_42_draw_box_avm_enable,
    output wire [0:0] out_memdep_42_draw_box_avm_read,
    output wire [0:0] out_memdep_42_draw_box_avm_write,
    output wire [63:0] out_memdep_42_draw_box_avm_writedata,
    output wire [7:0] out_memdep_42_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_42_draw_box_avm_burstcount,
    output wire [0:0] out_lsu_memdep_42_o_active,
    output wire [63:0] out_memdep_47_draw_box_avm_address,
    output wire [0:0] out_memdep_47_draw_box_avm_enable,
    output wire [0:0] out_memdep_47_draw_box_avm_read,
    output wire [0:0] out_memdep_47_draw_box_avm_write,
    output wire [63:0] out_memdep_47_draw_box_avm_writedata,
    output wire [7:0] out_memdep_47_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_47_draw_box_avm_burstcount,
    output wire [0:0] out_lsu_memdep_47_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_1125_q;
    wire [31:0] c_i32_undef123_q;
    wire [32:0] c_i33_1127_q;
    wire [32:0] c_i33_undef124_q;
    wire [3:0] c_i4_7119_q;
    wire [32:0] i_add110_draw_box37_a;
    wire [32:0] i_add110_draw_box37_b;
    logic [32:0] i_add110_draw_box37_o;
    wire [32:0] i_add110_draw_box37_q;
    wire [32:0] i_add126_draw_box51_a;
    wire [32:0] i_add126_draw_box51_b;
    logic [32:0] i_add126_draw_box51_o;
    wire [32:0] i_add126_draw_box51_q;
    wire [32:0] i_add137_draw_box67_a;
    wire [32:0] i_add137_draw_box67_b;
    logic [32:0] i_add137_draw_box67_o;
    wire [32:0] i_add137_draw_box67_q;
    wire [32:0] i_add148_draw_box81_a;
    wire [32:0] i_add148_draw_box81_b;
    logic [32:0] i_add148_draw_box81_o;
    wire [32:0] i_add148_draw_box81_q;
    wire [32:0] i_add159_draw_box94_a;
    wire [32:0] i_add159_draw_box94_b;
    logic [32:0] i_add159_draw_box94_o;
    wire [32:0] i_add159_draw_box94_q;
    wire [32:0] i_add99_draw_box19_a;
    wire [32:0] i_add99_draw_box19_b;
    logic [32:0] i_add99_draw_box19_o;
    wire [32:0] i_add99_draw_box19_q;
    wire [3:0] i_cleanups_shl_draw_box3_vt_join_q;
    wire [2:0] i_cleanups_shl_draw_box3_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor101_or_draw_box47_qi;
    reg [0:0] i_first_cleanup_xor101_or_draw_box47_q;
    wire [0:0] i_first_cleanup_xor102_or_draw_box63_qi;
    reg [0:0] i_first_cleanup_xor102_or_draw_box63_q;
    wire [0:0] i_first_cleanup_xor103_or_draw_box77_qi;
    reg [0:0] i_first_cleanup_xor103_or_draw_box77_q;
    wire [0:0] i_first_cleanup_xor104_or_draw_box90_qi;
    reg [0:0] i_first_cleanup_xor104_or_draw_box90_q;
    wire [0:0] i_first_cleanup_xor105_or_draw_box102_qi;
    reg [0:0] i_first_cleanup_xor105_or_draw_box102_q;
    wire [0:0] i_first_cleanup_xor_or_draw_box34_q;
    wire [0:0] i_fpga_indvars_iv54_replace_phi_draw_box15_s;
    reg [32:0] i_fpga_indvars_iv54_replace_phi_draw_box15_q;
    wire [33:0] i_fpga_indvars_iv_next55_draw_box109_a;
    wire [33:0] i_fpga_indvars_iv_next55_draw_box109_b;
    logic [33:0] i_fpga_indvars_iv_next55_draw_box109_o;
    wire [33:0] i_fpga_indvars_iv_next55_draw_box109_q;
    wire [0:0] i_i_1103_replace_phi_draw_box12_s;
    reg [31:0] i_i_1103_replace_phi_draw_box12_q;
    wire [32:0] i_inc163_draw_box105_a;
    wire [32:0] i_inc163_draw_box105_b;
    logic [32:0] i_inc163_draw_box105_o;
    wire [32:0] i_inc163_draw_box105_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_dest_data_out_16_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_lsu_memdep_26_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_26_draw_box35_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_lsu_memdep_28_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_28_draw_box48_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_lsu_memdep_32_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_32_draw_box64_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_lsu_memdep_37_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_37_draw_box78_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_lsu_memdep_42_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_42_draw_box91_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_lsu_memdep_47_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_47_draw_box103_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_valid_out;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_draw_box114_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_draw_box114_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_draw_box114_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_draw_box114_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_valid_out;
    wire [0:0] i_masked_draw_box118_qi;
    reg [0:0] i_masked_draw_box118_q;
    wire [0:0] i_next_cleanups_draw_box116_s;
    reg [3:0] i_next_cleanups_draw_box116_q;
    wire [3:0] i_next_initerations_draw_box6_vt_join_q;
    wire [2:0] i_next_initerations_draw_box6_vt_select_2_b;
    wire [0:0] i_notcmp_draw_box113_q;
    wire [0:0] i_or_draw_box115_q;
    wire [0:0] i_reduction_draw_box_24_draw_box25_q;
    wire [0:0] i_reduction_draw_box_25_draw_box27_q;
    wire [0:0] i_reduction_draw_box_26_draw_box29_q;
    wire [0:0] i_reduction_draw_box_27_draw_box31_q;
    wire [0:0] i_reduction_draw_box_28_draw_box41_q;
    wire [0:0] i_reduction_draw_box_29_draw_box42_q;
    wire [0:0] i_reduction_draw_box_30_draw_box43_qi;
    reg [0:0] i_reduction_draw_box_30_draw_box43_q;
    wire [0:0] i_reduction_draw_box_31_draw_box44_q;
    wire [0:0] i_reduction_draw_box_32_draw_box57_q;
    wire [0:0] i_reduction_draw_box_33_draw_box58_q;
    wire [0:0] i_reduction_draw_box_34_draw_box59_qi;
    reg [0:0] i_reduction_draw_box_34_draw_box59_q;
    wire [0:0] i_reduction_draw_box_35_draw_box60_q;
    wire [0:0] i_reduction_draw_box_36_draw_box71_q;
    wire [0:0] i_reduction_draw_box_37_draw_box72_q;
    wire [0:0] i_reduction_draw_box_38_draw_box73_qi;
    reg [0:0] i_reduction_draw_box_38_draw_box73_q;
    wire [0:0] i_reduction_draw_box_39_draw_box74_q;
    wire [0:0] i_reduction_draw_box_41_draw_box85_q;
    wire [0:0] i_reduction_draw_box_42_draw_box86_qi;
    reg [0:0] i_reduction_draw_box_42_draw_box86_q;
    wire [0:0] i_reduction_draw_box_43_draw_box87_q;
    wire [0:0] i_reduction_draw_box_46_draw_box98_qi;
    reg [0:0] i_reduction_draw_box_46_draw_box98_q;
    wire [0:0] i_reduction_draw_box_47_draw_box99_q;
    wire [0:0] i_unnamed_draw_box112_q;
    wire [0:0] i_xor_draw_box2_q;
    wire [31:0] bgTrunc_i_add110_draw_box37_sel_x_b;
    wire [31:0] bgTrunc_i_add126_draw_box51_sel_x_b;
    wire [31:0] bgTrunc_i_add137_draw_box67_sel_x_b;
    wire [31:0] bgTrunc_i_add148_draw_box81_sel_x_b;
    wire [31:0] bgTrunc_i_add159_draw_box94_sel_x_b;
    wire [31:0] bgTrunc_i_add99_draw_box19_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next55_draw_box109_sel_x_b;
    wire [31:0] bgTrunc_i_inc163_draw_box105_sel_x_b;
    wire [63:0] bgTrunc_i_mul98_draw_box17_sel_x_in;
    wire [31:0] bgTrunc_i_mul98_draw_box17_sel_x_b;
    wire [0:0] draw_box_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] draw_box_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [64:0] i_arrayidx106_draw_box0_add_x_a;
    wire [64:0] i_arrayidx106_draw_box0_add_x_b;
    logic [64:0] i_arrayidx106_draw_box0_add_x_o;
    wire [64:0] i_arrayidx106_draw_box0_add_x_q;
    wire [127:0] i_arrayidx106_draw_box0_mult_extender_x_q;
    wire [60:0] i_arrayidx106_draw_box0_mult_multconst_x_q;
    wire [63:0] i_arrayidx106_draw_box0_trunc_sel_x_b;
    wire [63:0] i_arrayidx106_draw_box0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx117_draw_box0_add_x_a;
    wire [64:0] i_arrayidx117_draw_box0_add_x_b;
    logic [64:0] i_arrayidx117_draw_box0_add_x_o;
    wire [64:0] i_arrayidx117_draw_box0_add_x_q;
    wire [127:0] i_arrayidx117_draw_box0_mult_extender_x_q;
    wire [63:0] i_arrayidx117_draw_box0_trunc_sel_x_b;
    wire [63:0] i_arrayidx117_draw_box0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx128_draw_box0_add_x_a;
    wire [64:0] i_arrayidx128_draw_box0_add_x_b;
    logic [64:0] i_arrayidx128_draw_box0_add_x_o;
    wire [64:0] i_arrayidx128_draw_box0_add_x_q;
    wire [127:0] i_arrayidx128_draw_box0_mult_extender_x_q;
    wire [63:0] i_arrayidx128_draw_box0_trunc_sel_x_b;
    wire [63:0] i_arrayidx128_draw_box0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx139_draw_box0_add_x_a;
    wire [64:0] i_arrayidx139_draw_box0_add_x_b;
    logic [64:0] i_arrayidx139_draw_box0_add_x_o;
    wire [64:0] i_arrayidx139_draw_box0_add_x_q;
    wire [127:0] i_arrayidx139_draw_box0_mult_extender_x_q;
    wire [63:0] i_arrayidx139_draw_box0_trunc_sel_x_b;
    wire [63:0] i_arrayidx139_draw_box0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx150_draw_box0_add_x_a;
    wire [64:0] i_arrayidx150_draw_box0_add_x_b;
    logic [64:0] i_arrayidx150_draw_box0_add_x_o;
    wire [64:0] i_arrayidx150_draw_box0_add_x_q;
    wire [127:0] i_arrayidx150_draw_box0_mult_extender_x_q;
    wire [63:0] i_arrayidx150_draw_box0_trunc_sel_x_b;
    wire [63:0] i_arrayidx150_draw_box0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx161_draw_box0_add_x_a;
    wire [64:0] i_arrayidx161_draw_box0_add_x_b;
    logic [64:0] i_arrayidx161_draw_box0_add_x_o;
    wire [64:0] i_arrayidx161_draw_box0_add_x_q;
    wire [127:0] i_arrayidx161_draw_box0_mult_extender_x_q;
    wire [63:0] i_arrayidx161_draw_box0_trunc_sel_x_b;
    wire [63:0] i_arrayidx161_draw_box0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_draw_box1_sel_x_b;
    wire [63:0] i_idxprom105_draw_box20_sel_x_b;
    wire [63:0] i_idxprom116_draw_box38_sel_x_b;
    wire [63:0] i_idxprom127_draw_box52_sel_x_b;
    wire [63:0] i_idxprom138_draw_box68_sel_x_b;
    wire [63:0] i_idxprom149_draw_box82_sel_x_b;
    wire [63:0] i_idxprom160_draw_box95_sel_x_b;
    wire [0:0] i_last_initeration_draw_box8_sel_x_b;
    wire [0:0] i_exitcond56_draw_box107_cmp_nsign_q;
    wire [63:0] i_mul98_draw_box17_sums_join_0_q;
    wire [50:0] i_mul98_draw_box17_sums_align_1_q;
    wire [50:0] i_mul98_draw_box17_sums_align_1_qint;
    wire [64:0] i_mul98_draw_box17_sums_result_add_0_0_a;
    wire [64:0] i_mul98_draw_box17_sums_result_add_0_0_b;
    logic [64:0] i_mul98_draw_box17_sums_result_add_0_0_o;
    wire [64:0] i_mul98_draw_box17_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx106_draw_box0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx106_draw_box0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx106_draw_box0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx106_draw_box0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx106_draw_box0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx106_draw_box0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx106_draw_box0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx106_draw_box0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx117_draw_box0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx117_draw_box0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx117_draw_box0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx117_draw_box0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx117_draw_box0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx117_draw_box0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx117_draw_box0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx117_draw_box0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx128_draw_box0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx128_draw_box0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx128_draw_box0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx128_draw_box0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx128_draw_box0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx128_draw_box0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx128_draw_box0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx128_draw_box0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx139_draw_box0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx139_draw_box0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx139_draw_box0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx139_draw_box0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx139_draw_box0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx139_draw_box0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx139_draw_box0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx139_draw_box0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx150_draw_box0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx150_draw_box0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx150_draw_box0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx150_draw_box0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx150_draw_box0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx150_draw_box0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx150_draw_box0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx150_draw_box0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx161_draw_box0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx161_draw_box0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx161_draw_box0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx161_draw_box0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx161_draw_box0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx161_draw_box0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx161_draw_box0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx161_draw_box0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid542_i_cleanups_shl_draw_box0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid542_i_cleanups_shl_draw_box0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid543_i_cleanups_shl_draw_box0_shift_x_q;
    wire [0:0] leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_s;
    reg [3:0] leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid549_i_next_initerations_draw_box0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid551_i_next_initerations_draw_box0_shift_x_q;
    wire [0:0] rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_s;
    reg [3:0] rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_q;
    wire [11:0] i_arrayidx106_draw_box0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx106_draw_box0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx106_draw_box0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx106_draw_box0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx106_draw_box0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx106_draw_box0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx106_draw_box0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx106_draw_box0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx117_draw_box0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx117_draw_box0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx117_draw_box0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx117_draw_box0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx117_draw_box0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx117_draw_box0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx117_draw_box0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx117_draw_box0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx128_draw_box0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx128_draw_box0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx128_draw_box0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx128_draw_box0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx128_draw_box0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx128_draw_box0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx128_draw_box0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx128_draw_box0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx139_draw_box0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx139_draw_box0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx139_draw_box0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx139_draw_box0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx139_draw_box0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx139_draw_box0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx139_draw_box0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx139_draw_box0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx150_draw_box0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx150_draw_box0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx150_draw_box0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx150_draw_box0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx150_draw_box0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx150_draw_box0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx150_draw_box0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx150_draw_box0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx161_draw_box0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx161_draw_box0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx161_draw_box0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx161_draw_box0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx161_draw_box0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx161_draw_box0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx161_draw_box0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx161_draw_box0_mult_x_im9_shift0_qint;
    wire i_mul98_draw_box17_im0_cma_reset;
    wire [13:0] i_mul98_draw_box17_im0_cma_a0;
    wire [13:0] i_mul98_draw_box17_im0_cma_c0;
    wire [27:0] i_mul98_draw_box17_im0_cma_s0;
    wire [27:0] i_mul98_draw_box17_im0_cma_qq;
    wire [27:0] i_mul98_draw_box17_im0_cma_q;
    wire i_mul98_draw_box17_im0_cma_ena0;
    wire i_mul98_draw_box17_im0_cma_ena1;
    wire i_mul98_draw_box17_im0_cma_ena2;
    wire i_mul98_draw_box17_im8_cma_reset;
    wire [17:0] i_mul98_draw_box17_im8_cma_a0;
    wire [17:0] i_mul98_draw_box17_im8_cma_c0;
    wire [35:0] i_mul98_draw_box17_im8_cma_s0;
    wire [35:0] i_mul98_draw_box17_im8_cma_qq;
    wire [35:0] i_mul98_draw_box17_im8_cma_q;
    wire i_mul98_draw_box17_im8_cma_ena0;
    wire i_mul98_draw_box17_im8_cma_ena1;
    wire i_mul98_draw_box17_im8_cma_ena2;
    wire i_mul98_draw_box17_ma3_cma_reset;
    wire [13:0] i_mul98_draw_box17_ma3_cma_a0;
    wire [17:0] i_mul98_draw_box17_ma3_cma_c0;
    wire [13:0] i_mul98_draw_box17_ma3_cma_a1;
    wire [17:0] i_mul98_draw_box17_ma3_cma_c1;
    wire [32:0] i_mul98_draw_box17_ma3_cma_s0;
    wire [32:0] i_mul98_draw_box17_ma3_cma_qq;
    wire [32:0] i_mul98_draw_box17_ma3_cma_q;
    wire i_mul98_draw_box17_ma3_cma_ena0;
    wire i_mul98_draw_box17_ma3_cma_ena1;
    wire i_mul98_draw_box17_ma3_cma_ena2;
    wire [13:0] i_mul98_draw_box17_bs1_merged_bit_select_b;
    wire [17:0] i_mul98_draw_box17_bs1_merged_bit_select_c;
    wire [13:0] i_mul98_draw_box17_bs2_merged_bit_select_b;
    wire [17:0] i_mul98_draw_box17_bs2_merged_bit_select_c;
    wire [9:0] i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_e;
    wire [0:0] redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_in;
    wire redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_in;
    wire redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_data_in;
    wire [0:0] redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_out;
    wire redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_out;
    wire redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_data_out;
    reg [0:0] redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_q;
    reg [0:0] redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_q;
    reg [0:0] redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_q;
    reg [0:0] redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_q;
    reg [0:0] redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q;
    reg [0:0] redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_q;
    wire [0:0] redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_in;
    wire redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_in;
    wire redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_data_in;
    wire [0:0] redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_out;
    wire redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_out;
    wire redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_data_out;
    reg [31:0] redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_q;
    reg [31:0] redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_q;
    wire [0:0] redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_in;
    wire redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_in;
    wire redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_data_in;
    wire [0:0] redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_out;
    wire redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_out;
    wire redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_data_out;
    wire [0:0] redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_in;
    wire redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_in;
    wire redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_data_in;
    wire [0:0] redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_out;
    wire redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_out;
    wire redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_data_out;
    wire [0:0] redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_in;
    wire redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_in;
    wire redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_data_in;
    wire [0:0] redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_out;
    wire redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_out;
    wire redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_data_out;
    reg [31:0] redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_q;
    reg [31:0] redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_q;
    wire [0:0] redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_in;
    wire redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_in;
    wire redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_data_in;
    wire [0:0] redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_out;
    wire redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_out;
    wire redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_data_out;
    wire [0:0] redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_in;
    wire redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_in;
    wire redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_data_in;
    wire [0:0] redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_out;
    wire redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_out;
    wire redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_data_out;
    wire [0:0] redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_in;
    wire redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_in;
    wire redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_data_in;
    wire [0:0] redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_out;
    wire redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_out;
    wire redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_data_out;
    wire [0:0] redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_in;
    wire redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_in;
    wire redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_data_in;
    wire [0:0] redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_out;
    wire redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_out;
    wire redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_data_out;
    wire [0:0] redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_in;
    wire redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_in;
    wire redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_data_in;
    wire [0:0] redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_out;
    wire redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_out;
    wire redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_data_out;
    wire [0:0] redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_in;
    wire redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_in;
    wire redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_data_in;
    wire [0:0] redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_out;
    wire redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_out;
    wire redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_data_out;
    wire [0:0] redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_in;
    wire redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_in;
    wire redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_data_in;
    wire [0:0] redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_out;
    wire redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_out;
    wire redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_data_out;
    wire [0:0] redist19_i_masked_draw_box118_q_186_fifo_valid_in;
    wire redist19_i_masked_draw_box118_q_186_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_masked_draw_box118_q_186_fifo_stall_in;
    wire redist19_i_masked_draw_box118_q_186_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_masked_draw_box118_q_186_fifo_data_in;
    wire [0:0] redist19_i_masked_draw_box118_q_186_fifo_valid_out;
    wire redist19_i_masked_draw_box118_q_186_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_masked_draw_box118_q_186_fifo_stall_out;
    wire redist19_i_masked_draw_box118_q_186_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_masked_draw_box118_q_186_fifo_data_out;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_q;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_in;
    wire redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_in;
    wire redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_data_in;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_out;
    wire redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_out;
    wire redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_data_out;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_in;
    wire redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_in;
    wire redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_data_in;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_out;
    wire redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_out;
    wire redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_data_out;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_in;
    wire redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_in;
    wire redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_data_in;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_out;
    wire redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_out;
    wire redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_data_out;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_in;
    wire redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_in;
    wire redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_data_in;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_out;
    wire redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_out;
    wire redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_data_out;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_in;
    wire redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_in;
    wire redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_data_in;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_out;
    wire redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_out;
    wire redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_data_out;
    wire [0:0] redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_in;
    wire redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_in;
    wire redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_data_in;
    wire [0:0] redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_out;
    wire redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_out;
    wire redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_data_out;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_q;
    reg [0:0] redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_q;
    reg [0:0] redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_q;
    reg [0:0] redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_q;
    reg [0:0] redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_q;
    reg [0:0] redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_q;
    reg [0:0] redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_q;
    reg [0:0] redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_q;
    reg [0:0] redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_q;
    reg [0:0] redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_q;
    reg [0:0] redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_q;
    reg [0:0] redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_q;
    reg [0:0] redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_q;
    reg [0:0] redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_q;
    reg [0:0] redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_q;
    reg [0:0] redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_q;
    reg [0:0] redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_q;
    reg [0:0] redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_q;
    reg [0:0] redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_q;
    reg [0:0] redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_q;
    reg [0:0] redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_q;
    reg [0:0] redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_q;
    reg [0:0] redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_q;
    reg [0:0] redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_q;
    reg [0:0] redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_q;
    reg [0:0] redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_q;
    wire [0:0] redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_in;
    wire redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_in;
    wire redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_data_in;
    wire [0:0] redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_out;
    wire redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_out;
    wire redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_data_out;
    wire [0:0] redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_in;
    wire redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_in;
    wire redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_data_in;
    wire [0:0] redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_out;
    wire redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_out;
    wire redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_data_out;
    wire [0:0] redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_in;
    wire redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_in;
    wire redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_data_in;
    wire [0:0] redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_out;
    wire redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_out;
    wire redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_data_out;
    wire [0:0] redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_in;
    wire redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_in;
    wire redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_data_in;
    wire [0:0] redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_out;
    wire redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_out;
    wire redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_data_out;
    wire [0:0] redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_in;
    wire redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_in;
    wire redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_data_in;
    wire [0:0] redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_out;
    wire redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_out;
    wire redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_b;
    wire [32:0] bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_q;
    wire [32:0] bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_26_draw_box35_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_26_draw_box35_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_28_draw_box48_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_28_draw_box48_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_32_draw_box64_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_32_draw_box64_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_37_draw_box78_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_37_draw_box78_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_42_draw_box91_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_42_draw_box91_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_47_draw_box103_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_draw_box4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_draw_box4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_b;
    wire [32:0] bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_q;
    wire [32:0] bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_draw_box_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_draw_box_B4_merge_reg_aunroll_x_b;
    wire [27:0] bubble_join_i_mul98_draw_box17_im0_cma_q;
    wire [27:0] bubble_select_i_mul98_draw_box17_im0_cma_b;
    wire [35:0] bubble_join_i_mul98_draw_box17_im8_cma_q;
    wire [35:0] bubble_select_i_mul98_draw_box17_im8_cma_b;
    wire [32:0] bubble_join_i_mul98_draw_box17_ma3_cma_q;
    wire [32:0] bubble_select_i_mul98_draw_box17_ma3_cma_b;
    wire [0:0] bubble_join_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_q;
    wire [0:0] bubble_select_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_b;
    wire [0:0] bubble_join_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_q;
    wire [0:0] bubble_select_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_b;
    wire [31:0] bubble_join_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_q;
    wire [31:0] bubble_select_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_b;
    wire [31:0] bubble_join_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_q;
    wire [31:0] bubble_select_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_b;
    wire [31:0] bubble_join_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_q;
    wire [31:0] bubble_select_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_b;
    wire [31:0] bubble_join_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_q;
    wire [31:0] bubble_select_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_b;
    wire [31:0] bubble_join_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_q;
    wire [31:0] bubble_select_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_b;
    wire [0:0] bubble_join_redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_q;
    wire [0:0] bubble_select_redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_b;
    wire [0:0] bubble_join_redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_q;
    wire [0:0] bubble_select_redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_b;
    wire [0:0] bubble_join_redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_q;
    wire [0:0] bubble_select_redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_b;
    wire [0:0] bubble_join_redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_q;
    wire [0:0] bubble_select_redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_b;
    wire [0:0] bubble_join_redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_q;
    wire [0:0] bubble_select_redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_b;
    wire [0:0] bubble_join_redist19_i_masked_draw_box118_q_186_fifo_q;
    wire [0:0] bubble_select_redist19_i_masked_draw_box118_q_186_fifo_b;
    wire [0:0] bubble_join_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_q;
    wire [0:0] bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_b;
    wire [0:0] bubble_join_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_q;
    wire [0:0] bubble_select_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_b;
    wire [0:0] bubble_join_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_q;
    wire [0:0] bubble_select_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_b;
    wire [0:0] bubble_join_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_q;
    wire [0:0] bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_b;
    wire [0:0] bubble_join_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_q;
    wire [0:0] bubble_select_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_b;
    wire [0:0] bubble_join_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_q;
    wire [0:0] bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_b;
    wire [0:0] bubble_join_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_q;
    wire [0:0] bubble_select_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_b;
    wire [0:0] bubble_join_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_q;
    wire [0:0] bubble_select_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_b;
    wire [0:0] bubble_join_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_q;
    wire [0:0] bubble_select_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_b;
    wire [0:0] bubble_join_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_q;
    wire [0:0] bubble_select_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_b;
    wire [0:0] bubble_join_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_q;
    wire [0:0] bubble_select_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_b;
    reg [0:0] SE_i_first_cleanup_xor101_or_draw_box47_R_v_0;
    wire [0:0] SE_i_first_cleanup_xor101_or_draw_box47_v_s_0;
    wire [0:0] SE_i_first_cleanup_xor101_or_draw_box47_s_tv_0;
    wire [0:0] SE_i_first_cleanup_xor101_or_draw_box47_backEN;
    wire [0:0] SE_i_first_cleanup_xor101_or_draw_box47_and0;
    wire [0:0] SE_i_first_cleanup_xor101_or_draw_box47_backStall;
    wire [0:0] SE_i_first_cleanup_xor101_or_draw_box47_V0;
    reg [0:0] SE_i_first_cleanup_xor102_or_draw_box63_R_v_0;
    wire [0:0] SE_i_first_cleanup_xor102_or_draw_box63_v_s_0;
    wire [0:0] SE_i_first_cleanup_xor102_or_draw_box63_s_tv_0;
    wire [0:0] SE_i_first_cleanup_xor102_or_draw_box63_backEN;
    wire [0:0] SE_i_first_cleanup_xor102_or_draw_box63_and0;
    wire [0:0] SE_i_first_cleanup_xor102_or_draw_box63_backStall;
    wire [0:0] SE_i_first_cleanup_xor102_or_draw_box63_V0;
    reg [0:0] SE_i_first_cleanup_xor103_or_draw_box77_R_v_0;
    wire [0:0] SE_i_first_cleanup_xor103_or_draw_box77_v_s_0;
    wire [0:0] SE_i_first_cleanup_xor103_or_draw_box77_s_tv_0;
    wire [0:0] SE_i_first_cleanup_xor103_or_draw_box77_backEN;
    wire [0:0] SE_i_first_cleanup_xor103_or_draw_box77_and0;
    wire [0:0] SE_i_first_cleanup_xor103_or_draw_box77_backStall;
    wire [0:0] SE_i_first_cleanup_xor103_or_draw_box77_V0;
    reg [0:0] SE_i_first_cleanup_xor104_or_draw_box90_R_v_0;
    wire [0:0] SE_i_first_cleanup_xor104_or_draw_box90_v_s_0;
    wire [0:0] SE_i_first_cleanup_xor104_or_draw_box90_s_tv_0;
    wire [0:0] SE_i_first_cleanup_xor104_or_draw_box90_backEN;
    wire [0:0] SE_i_first_cleanup_xor104_or_draw_box90_and0;
    wire [0:0] SE_i_first_cleanup_xor104_or_draw_box90_backStall;
    wire [0:0] SE_i_first_cleanup_xor104_or_draw_box90_V0;
    reg [0:0] SE_i_first_cleanup_xor105_or_draw_box102_R_v_0;
    wire [0:0] SE_i_first_cleanup_xor105_or_draw_box102_v_s_0;
    wire [0:0] SE_i_first_cleanup_xor105_or_draw_box102_s_tv_0;
    wire [0:0] SE_i_first_cleanup_xor105_or_draw_box102_backEN;
    wire [0:0] SE_i_first_cleanup_xor105_or_draw_box102_and0;
    wire [0:0] SE_i_first_cleanup_xor105_or_draw_box102_backStall;
    wire [0:0] SE_i_first_cleanup_xor105_or_draw_box102_V0;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireValid;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireStall;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_StallValid;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_toReg0;
    reg [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg0;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_consumed0;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_toReg1;
    reg [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg1;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_consumed1;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_and0;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_and1;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_or0;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_backStall;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_V0;
    wire [0:0] SE_i_fpga_indvars_iv54_replace_phi_draw_box15_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg7;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg7;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed7;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg8;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg8;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed8;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or7;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V7;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V8;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_draw_box9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_draw_box9_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_draw_box114_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push27_draw_box117_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push27_draw_box117_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push26_draw_box7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push26_draw_box7_backStall;
    reg [0:0] SE_i_masked_draw_box118_R_v_0;
    wire [0:0] SE_i_masked_draw_box118_v_s_0;
    wire [0:0] SE_i_masked_draw_box118_s_tv_0;
    wire [0:0] SE_i_masked_draw_box118_backEN;
    wire [0:0] SE_i_masked_draw_box118_backStall;
    wire [0:0] SE_i_masked_draw_box118_V0;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_draw_box6_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_draw_box6_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_or0;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_V0;
    wire [0:0] SE_i_next_initerations_draw_box6_vt_join_V1;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_wireValid;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and0;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and1;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and2;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and3;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and4;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and5;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and6;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and7;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_and8;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_backStall;
    wire [0:0] SE_i_reduction_draw_box_24_draw_box25_V0;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_wireValid;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_wireStall;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_StallValid;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_toReg0;
    reg [0:0] SE_i_reduction_draw_box_28_draw_box41_fromReg0;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_consumed0;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_toReg1;
    reg [0:0] SE_i_reduction_draw_box_28_draw_box41_fromReg1;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_consumed1;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_and0;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_or0;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_backStall;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_V0;
    wire [0:0] SE_i_reduction_draw_box_28_draw_box41_V1;
    wire [0:0] SE_i_reduction_draw_box_29_draw_box42_wireValid;
    wire [0:0] SE_i_reduction_draw_box_29_draw_box42_and0;
    wire [0:0] SE_i_reduction_draw_box_29_draw_box42_backStall;
    wire [0:0] SE_i_reduction_draw_box_29_draw_box42_V0;
    reg [0:0] SE_i_reduction_draw_box_30_draw_box43_R_v_0;
    wire [0:0] SE_i_reduction_draw_box_30_draw_box43_v_s_0;
    wire [0:0] SE_i_reduction_draw_box_30_draw_box43_s_tv_0;
    wire [0:0] SE_i_reduction_draw_box_30_draw_box43_backEN;
    wire [0:0] SE_i_reduction_draw_box_30_draw_box43_and0;
    wire [0:0] SE_i_reduction_draw_box_30_draw_box43_backStall;
    wire [0:0] SE_i_reduction_draw_box_30_draw_box43_V0;
    wire [0:0] SE_i_reduction_draw_box_32_draw_box57_wireValid;
    wire [0:0] SE_i_reduction_draw_box_32_draw_box57_and0;
    wire [0:0] SE_i_reduction_draw_box_32_draw_box57_and1;
    wire [0:0] SE_i_reduction_draw_box_32_draw_box57_backStall;
    wire [0:0] SE_i_reduction_draw_box_32_draw_box57_V0;
    reg [0:0] SE_i_reduction_draw_box_34_draw_box59_R_v_0;
    wire [0:0] SE_i_reduction_draw_box_34_draw_box59_v_s_0;
    wire [0:0] SE_i_reduction_draw_box_34_draw_box59_s_tv_0;
    wire [0:0] SE_i_reduction_draw_box_34_draw_box59_backEN;
    wire [0:0] SE_i_reduction_draw_box_34_draw_box59_and0;
    wire [0:0] SE_i_reduction_draw_box_34_draw_box59_backStall;
    wire [0:0] SE_i_reduction_draw_box_34_draw_box59_V0;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_wireValid;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_wireStall;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_StallValid;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_toReg0;
    reg [0:0] SE_i_reduction_draw_box_36_draw_box71_fromReg0;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_consumed0;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_toReg1;
    reg [0:0] SE_i_reduction_draw_box_36_draw_box71_fromReg1;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_consumed1;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_toReg2;
    reg [0:0] SE_i_reduction_draw_box_36_draw_box71_fromReg2;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_consumed2;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_and0;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_or0;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_or1;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_backStall;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_V0;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_V1;
    wire [0:0] SE_i_reduction_draw_box_36_draw_box71_V2;
    wire [0:0] SE_i_reduction_draw_box_37_draw_box72_wireValid;
    wire [0:0] SE_i_reduction_draw_box_37_draw_box72_and0;
    wire [0:0] SE_i_reduction_draw_box_37_draw_box72_backStall;
    wire [0:0] SE_i_reduction_draw_box_37_draw_box72_V0;
    reg [0:0] SE_i_reduction_draw_box_38_draw_box73_R_v_0;
    wire [0:0] SE_i_reduction_draw_box_38_draw_box73_v_s_0;
    wire [0:0] SE_i_reduction_draw_box_38_draw_box73_s_tv_0;
    wire [0:0] SE_i_reduction_draw_box_38_draw_box73_backEN;
    wire [0:0] SE_i_reduction_draw_box_38_draw_box73_and0;
    wire [0:0] SE_i_reduction_draw_box_38_draw_box73_backStall;
    wire [0:0] SE_i_reduction_draw_box_38_draw_box73_V0;
    wire [0:0] SE_i_reduction_draw_box_41_draw_box85_wireValid;
    wire [0:0] SE_i_reduction_draw_box_41_draw_box85_and0;
    wire [0:0] SE_i_reduction_draw_box_41_draw_box85_backStall;
    wire [0:0] SE_i_reduction_draw_box_41_draw_box85_V0;
    reg [0:0] SE_i_reduction_draw_box_42_draw_box86_R_v_0;
    wire [0:0] SE_i_reduction_draw_box_42_draw_box86_v_s_0;
    wire [0:0] SE_i_reduction_draw_box_42_draw_box86_s_tv_0;
    wire [0:0] SE_i_reduction_draw_box_42_draw_box86_backEN;
    wire [0:0] SE_i_reduction_draw_box_42_draw_box86_and0;
    wire [0:0] SE_i_reduction_draw_box_42_draw_box86_backStall;
    wire [0:0] SE_i_reduction_draw_box_42_draw_box86_V0;
    reg [0:0] SE_i_reduction_draw_box_46_draw_box98_R_v_0;
    wire [0:0] SE_i_reduction_draw_box_46_draw_box98_v_s_0;
    wire [0:0] SE_i_reduction_draw_box_46_draw_box98_s_tv_0;
    wire [0:0] SE_i_reduction_draw_box_46_draw_box98_backEN;
    wire [0:0] SE_i_reduction_draw_box_46_draw_box98_and0;
    wire [0:0] SE_i_reduction_draw_box_46_draw_box98_backStall;
    wire [0:0] SE_i_reduction_draw_box_46_draw_box98_V0;
    wire [0:0] SE_i_unnamed_draw_box112_wireValid;
    wire [0:0] SE_i_unnamed_draw_box112_wireStall;
    wire [0:0] SE_i_unnamed_draw_box112_StallValid;
    wire [0:0] SE_i_unnamed_draw_box112_toReg0;
    reg [0:0] SE_i_unnamed_draw_box112_fromReg0;
    wire [0:0] SE_i_unnamed_draw_box112_consumed0;
    wire [0:0] SE_i_unnamed_draw_box112_toReg1;
    reg [0:0] SE_i_unnamed_draw_box112_fromReg1;
    wire [0:0] SE_i_unnamed_draw_box112_consumed1;
    wire [0:0] SE_i_unnamed_draw_box112_and0;
    wire [0:0] SE_i_unnamed_draw_box112_or0;
    wire [0:0] SE_i_unnamed_draw_box112_backStall;
    wire [0:0] SE_i_unnamed_draw_box112_V0;
    wire [0:0] SE_i_unnamed_draw_box112_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg11;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg11;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed11;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg12;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg12;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed12;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg13;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg13;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed13;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg14;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg14;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed14;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg15;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg15;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed15;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg16;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg16;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed16;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg17;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg17;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed17;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg18;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg18;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed18;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg19;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg19;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed19;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg20;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg20;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed20;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg21;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg21;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed21;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg22;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg22;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed22;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg23;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg23;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed23;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg24;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg24;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed24;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg25;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg25;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed25;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg26;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg26;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed26;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg27;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg27;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed27;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_toReg28;
    reg [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg28;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_consumed28;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or10;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or11;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or12;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or13;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or14;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or15;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or16;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or17;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or18;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or19;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or20;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or21;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or22;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or23;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or24;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or25;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or26;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_or27;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V10;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V11;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V12;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V13;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V14;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V15;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V16;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V17;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V18;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V19;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V20;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V21;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V22;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V23;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V24;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V25;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V26;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V27;
    wire [0:0] SE_out_draw_box_B4_merge_reg_aunroll_x_V28;
    wire [0:0] SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_V0;
    reg [0:0] SE_i_mul98_draw_box17_im0_cma_R_s_0;
    reg [0:0] SE_i_mul98_draw_box17_im0_cma_R_s_1;
    reg [0:0] SE_i_mul98_draw_box17_im0_cma_R_v_0;
    reg [0:0] SE_i_mul98_draw_box17_im0_cma_R_v_1;
    reg [0:0] SE_i_mul98_draw_box17_im0_cma_R_v_2;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_v_s_0;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_backEN;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_or0;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_or1;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_backStall;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_V0;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_V1;
    wire [0:0] SE_i_mul98_draw_box17_im0_cma_V2;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireStall;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_StallValid;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg0;
    reg [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg0;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed0;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg1;
    reg [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg1;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed1;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg2;
    reg [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg2;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed2;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_or0;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_or1;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_backStall;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V0;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V1;
    wire [0:0] SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V2;
    reg [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_0;
    reg [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_1;
    wire [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_v_s_0;
    wire [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_s_tv_0;
    wire [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_s_tv_1;
    wire [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backEN;
    wire [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_or0;
    wire [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backStall;
    wire [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_V0;
    wire [0:0] SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_V1;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_R_v_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_v_s_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_s_tv_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_backEN;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_backStall;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_V0;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_R_v_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_v_s_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_s_tv_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_backEN;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_backStall;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_V0;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_R_v_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_v_s_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_s_tv_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backEN;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backStall;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_V0;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_0;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_1;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_2;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_3;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_4;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_5;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_6;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_7;
    reg [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_8;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_1;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_2;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_3;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_4;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_5;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_6;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_7;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_8;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or1;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or2;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or3;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or4;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or5;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or6;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or7;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backStall;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V0;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V1;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V2;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V3;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V4;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V5;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V6;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V7;
    wire [0:0] SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V8;
    reg [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_0;
    reg [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_1;
    wire [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_v_s_0;
    wire [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_s_tv_0;
    wire [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_s_tv_1;
    wire [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backEN;
    wire [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_or0;
    wire [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backStall;
    wire [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_V0;
    wire [0:0] SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_V1;
    wire [0:0] SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_wireValid;
    wire [0:0] SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_backStall;
    wire [0:0] SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_V0;
    reg [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_or0;
    wire [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_V0;
    wire [0:0] SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_V1;
    reg [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_or0;
    wire [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_V0;
    wire [0:0] SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_V1;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireValid;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireStall;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_StallValid;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_toReg0;
    reg [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg0;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_consumed0;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_toReg1;
    reg [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg1;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_consumed1;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_or0;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_backStall;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_V0;
    wire [0:0] SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_V1;
    reg [0:0] SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_V0;
    reg [0:0] SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_V0;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireStall;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_StallValid;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_toReg0;
    reg [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg0;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_consumed0;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_toReg1;
    reg [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg1;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_consumed1;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_or0;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_V0;
    wire [0:0] SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_V1;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireValid;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireStall;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_StallValid;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_toReg0;
    reg [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg0;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_consumed0;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_toReg1;
    reg [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg1;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_consumed1;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_or0;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_backStall;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_V0;
    wire [0:0] SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_V1;
    wire [0:0] SE_in_redist19_i_masked_draw_box118_q_186_fifo_wireValid;
    wire [0:0] SE_in_redist19_i_masked_draw_box118_q_186_fifo_backStall;
    wire [0:0] SE_in_redist19_i_masked_draw_box118_q_186_fifo_V0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_V0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_V0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_V0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_V0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_1;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_2;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_2;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_or0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_or1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V2;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_StallValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_toReg0;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_consumed0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_toReg1;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_consumed1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_or0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_backStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_V0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_V1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_StallValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_toReg0;
    reg [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_consumed0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_toReg1;
    reg [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_consumed1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_or0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_backStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_V0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_V1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireValid;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireStall;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_StallValid;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_toReg0;
    reg [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_consumed0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_toReg1;
    reg [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_consumed1;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_or0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_backStall;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_V0;
    wire [0:0] SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_V1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireValid;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireStall;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_StallValid;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_toReg0;
    reg [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_consumed0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_toReg1;
    reg [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_consumed1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_or0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_backStall;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_V0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_V1;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_StallValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_toReg0;
    reg [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_consumed0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_toReg1;
    reg [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg1;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_consumed1;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_or0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_backStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_V0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_V1;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireValid;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireStall;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_StallValid;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_toReg0;
    reg [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_consumed0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_toReg1;
    reg [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg1;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_consumed1;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_or0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_backStall;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_V0;
    wire [0:0] SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_V1;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_R_v_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_V0;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_R_v_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_V0;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_R_v_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_V0;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_R_v_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_V0;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_R_v_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_V0;
    reg [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_R_v_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_v_s_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_s_tv_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_backEN;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_backStall;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_V0;
    reg [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_R_v_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_v_s_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_s_tv_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_backEN;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_backStall;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_V0;
    reg [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_R_v_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_v_s_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_s_tv_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_backEN;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_backStall;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_V0;
    reg [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_R_v_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_v_s_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_s_tv_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_backEN;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_backStall;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_V0;
    reg [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_R_v_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_v_s_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_s_tv_0;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backEN;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_V0;
    reg [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_R_v_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_V0;
    reg [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_R_v_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_V0;
    reg [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_R_v_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_V0;
    reg [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_R_v_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_V0;
    reg [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_R_v_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_V0;
    reg [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_R_v_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_v_s_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_s_tv_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_backEN;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_backStall;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_V0;
    reg [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_R_v_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_v_s_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_s_tv_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_backEN;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_backStall;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_V0;
    reg [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_R_v_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_v_s_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_s_tv_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_backEN;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_backStall;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_V0;
    reg [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_R_v_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_v_s_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_s_tv_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_backEN;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_backStall;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_V0;
    reg [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_R_v_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_v_s_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_s_tv_0;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backEN;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_V0;
    reg [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_R_v_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_V0;
    reg [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_R_v_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_V0;
    reg [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_R_v_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_V0;
    reg [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_R_v_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_V0;
    reg [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_R_v_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_V0;
    wire [0:0] SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_wireValid;
    wire [0:0] SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and0;
    wire [0:0] SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and1;
    wire [0:0] SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and2;
    wire [0:0] SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and3;
    wire [0:0] SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and4;
    wire [0:0] SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_backStall;
    wire [0:0] SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_V0;
    wire [0:0] SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_wireValid;
    wire [0:0] SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and0;
    wire [0:0] SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and1;
    wire [0:0] SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and2;
    wire [0:0] SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and3;
    wire [0:0] SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and4;
    wire [0:0] SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_backStall;
    wire [0:0] SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_V0;
    wire [0:0] SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_wireValid;
    wire [0:0] SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and0;
    wire [0:0] SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and1;
    wire [0:0] SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and2;
    wire [0:0] SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and3;
    wire [0:0] SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and4;
    wire [0:0] SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_backStall;
    wire [0:0] SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_V0;
    wire [0:0] SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_wireValid;
    wire [0:0] SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and0;
    wire [0:0] SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and1;
    wire [0:0] SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and2;
    wire [0:0] SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and3;
    wire [0:0] SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and4;
    wire [0:0] SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_backStall;
    wire [0:0] SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_V0;
    wire [0:0] SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_wireValid;
    wire [0:0] SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and0;
    wire [0:0] SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and1;
    wire [0:0] SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and2;
    wire [0:0] SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and3;
    wire [0:0] SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and4;
    wire [0:0] SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_backStall;
    wire [0:0] SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_V0;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_wireValid;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_backStall;
    wire [0:0] SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_V0;
    wire [0:0] SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_and0;
    wire [0:0] SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_and1;
    wire [0:0] SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_in;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_out;
    wire bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul98_draw_box17_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul98_draw_box17_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul98_draw_box17_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul98_draw_box17_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_i_valid;
    reg [0:0] SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid;
    reg [0:0] SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_data0;
    wire [0:0] SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backStall;
    wire [0:0] SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_V;
    wire [0:0] SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_D0;
    wire [0:0] SR_SE_i_masked_draw_box118_i_valid;
    reg [0:0] SR_SE_i_masked_draw_box118_r_valid;
    wire [0:0] SR_SE_i_masked_draw_box118_and0;
    reg [0:0] SR_SE_i_masked_draw_box118_r_data0;
    reg [0:0] SR_SE_i_masked_draw_box118_r_data1;
    wire [0:0] SR_SE_i_masked_draw_box118_backStall;
    wire [0:0] SR_SE_i_masked_draw_box118_V;
    wire [0:0] SR_SE_i_masked_draw_box118_D0;
    wire [0:0] SR_SE_i_masked_draw_box118_D1;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_i_valid;
    reg [0:0] SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid;
    reg [0:0] SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_data0;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_V;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_D0;
    wire [0:0] SR_SE_i_mul98_draw_box17_im0_cma_i_valid;
    reg [0:0] SR_SE_i_mul98_draw_box17_im0_cma_r_valid;
    wire [0:0] SR_SE_i_mul98_draw_box17_im0_cma_and0;
    reg [13:0] SR_SE_i_mul98_draw_box17_im0_cma_r_data0;
    reg [13:0] SR_SE_i_mul98_draw_box17_im0_cma_r_data1;
    reg [13:0] SR_SE_i_mul98_draw_box17_im0_cma_r_data2;
    reg [13:0] SR_SE_i_mul98_draw_box17_im0_cma_r_data3;
    reg [17:0] SR_SE_i_mul98_draw_box17_im0_cma_r_data4;
    reg [17:0] SR_SE_i_mul98_draw_box17_im0_cma_r_data5;
    reg [17:0] SR_SE_i_mul98_draw_box17_im0_cma_r_data6;
    reg [17:0] SR_SE_i_mul98_draw_box17_im0_cma_r_data7;
    wire [0:0] SR_SE_i_mul98_draw_box17_im0_cma_backStall;
    wire [0:0] SR_SE_i_mul98_draw_box17_im0_cma_V;
    wire [13:0] SR_SE_i_mul98_draw_box17_im0_cma_D0;
    wire [13:0] SR_SE_i_mul98_draw_box17_im0_cma_D1;
    wire [13:0] SR_SE_i_mul98_draw_box17_im0_cma_D2;
    wire [13:0] SR_SE_i_mul98_draw_box17_im0_cma_D3;
    wire [17:0] SR_SE_i_mul98_draw_box17_im0_cma_D4;
    wire [17:0] SR_SE_i_mul98_draw_box17_im0_cma_D5;
    wire [17:0] SR_SE_i_mul98_draw_box17_im0_cma_D6;
    wire [17:0] SR_SE_i_mul98_draw_box17_im0_cma_D7;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_and0;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_data0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_V;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_D0;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_i_valid;
    reg [0:0] SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid;
    reg [0:0] SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_data0;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_V;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_D0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_and0;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_data0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_V;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_D0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_i_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_data0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_V;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_D0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_and0;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_data0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_V;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_D0;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_i_valid;
    reg [0:0] SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid;
    reg [0:0] SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_data0;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_V;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_D0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_and0;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_data0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_V;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_D0;
    wire [0:0] SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_i_valid;
    reg [0:0] SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid;
    reg [0:0] SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_data0;
    wire [0:0] SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backStall;
    wire [0:0] SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_V;
    wire [0:0] SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_D0;
    wire [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_i_valid;
    reg [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_r_valid;
    wire [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_and0;
    reg [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_r_data0;
    reg [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_r_data1;
    reg [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_r_data2;
    reg [3:0] SR_SE_i_next_initerations_draw_box6_vt_join_r_data3;
    wire [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_backStall;
    wire [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_V;
    wire [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_D0;
    wire [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_D1;
    wire [0:0] SR_SE_i_next_initerations_draw_box6_vt_join_D2;
    wire [3:0] SR_SE_i_next_initerations_draw_box6_vt_join_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_D1;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_i_valid;
    reg [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid;
    reg [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_data0;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backStall;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_V;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_and1;
    reg [3:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_V;
    wire [3:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_D1;


    // SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106(STALLENABLE,1077)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_V0 = SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_backStall = i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_and0 = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_V1;
    assign SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V1 & SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104(STALLENABLE,1074)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_wireValid = i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_valid_out;

    // SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0(STALLENABLE,1276)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_V0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_s_tv_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_backEN = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_v_s_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V2;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_backStall = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_R_v_0 & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_v_s_0;
            end

        end
    end

    // SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1(STALLENABLE,1277)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_V0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_s_tv_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_backEN = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_v_s_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_backEN & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_backStall = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_R_v_0 & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2(STALLENABLE,1278)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_V0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_s_tv_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_backEN = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_v_s_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_backEN & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_V0;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_backStall = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_R_v_0 & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3(STALLENABLE,1279)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_V0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_s_tv_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_backEN = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_v_s_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_backEN & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_backStall = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_R_v_0 & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pipeline_keep_going_draw_box4(BITJOIN,802)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_draw_box4_q = i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_draw_box4(BITSELECT,803)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_draw_box4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_draw_box4_q[0:0]);

    // redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0(REG,650)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_draw_box4_b);
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1(REG,651)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_q <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_q);
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2(REG,652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_q <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_1_q);
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3(REG,653)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_q <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_2_q);
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4(REG,654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_q <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid542_i_cleanups_shl_draw_box0_shift_x(BITSELECT,541)@193
    assign leftShiftStage0Idx1Rng1_uid542_i_cleanups_shl_draw_box0_shift_x_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid542_i_cleanups_shl_draw_box0_shift_x_b = leftShiftStage0Idx1Rng1_uid542_i_cleanups_shl_draw_box0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid543_i_cleanups_shl_draw_box0_shift_x(BITJOIN,542)@193
    assign leftShiftStage0Idx1_uid543_i_cleanups_shl_draw_box0_shift_x_q = {leftShiftStage0Idx1Rng1_uid542_i_cleanups_shl_draw_box0_shift_x_b, GND_q};

    // leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x(MUX,544)@193
    assign leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_b or leftShiftStage0Idx1_uid543_i_cleanups_shl_draw_box0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_s)
            1'b0 : leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_b;
            1'b1 : leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_q = leftShiftStage0Idx1_uid543_i_cleanups_shl_draw_box0_shift_x_q;
            default : leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_draw_box3_vt_select_3(BITSELECT,31)@193
    assign i_cleanups_shl_draw_box3_vt_select_3_b = leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_q[3:1];

    // i_cleanups_shl_draw_box3_vt_join(BITJOIN,30)@193
    assign i_cleanups_shl_draw_box3_vt_join_q = {i_cleanups_shl_draw_box3_vt_select_3_b, GND_q};

    // i_xor_draw_box2(LOGICAL,144)@193
    assign i_xor_draw_box2_q = i_first_cleanup_draw_box1_sel_x_b ^ VCC_q;

    // i_or_draw_box115(LOGICAL,121)@193
    assign i_or_draw_box115_q = i_notcmp_draw_box113_q | i_xor_draw_box2_q;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_next_cleanups_draw_box116(MUX,116)@193
    assign i_next_cleanups_draw_box116_s = i_or_draw_box115_q;
    always @(i_next_cleanups_draw_box116_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_b or i_cleanups_shl_draw_box3_vt_join_q)
    begin
        unique case (i_next_cleanups_draw_box116_s)
            1'b0 : i_next_cleanups_draw_box116_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_b;
            1'b1 : i_next_cleanups_draw_box116_q = i_cleanups_shl_draw_box3_vt_join_q;
            default : i_next_cleanups_draw_box116_q = 4'b0;
        endcase
    end

    // SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x(STALLENABLE,1201)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_V0 = SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_backStall = i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_stall_out | ~ (SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_wireValid = SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_V;

    // SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x(STALLREG,1750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_data0 <= 4'bxxxx;
            SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid <= SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_backStall & (SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid | SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_data0 <= i_next_cleanups_draw_box116_q;
                SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_data1 <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_V1;
    assign SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V0 & SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_i_valid = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V1 & SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_backStall = SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_V = SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid : SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_D0 = SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_data0 : i_next_cleanups_draw_box116_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_D1 = SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_r_data1 : redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_q;

    // SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110(STALLENABLE,1079)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_V0 = SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_backStall = i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_and0 = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_V1;
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_wireValid = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V0 & SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_and0;

    // SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4(STALLENABLE,1280)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V1 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_1;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V2 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_2;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_0 = SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_1 = SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_1;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_2 = redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_out & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_2;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_or0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_or1 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_1 | SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_or0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backEN = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_2 | SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_v_s_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backEN & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_3_V0;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backStall = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_0 <= 1'b0;
            SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_1 <= 1'b0;
            SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_0 & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_v_s_0;
            end

            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_1 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_1 & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_1;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_1 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_v_s_0;
            end

            if (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_2 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_2 & SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_s_tv_2;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_R_v_2 <= SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_v_s_0;
            end

        end
    end

    // redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo(STALLFIFO,655)
    assign redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_in = SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_V2;
    assign redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_in = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_backStall;
    assign redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_data_in = redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_q;
    assign redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_in_bitsignaltemp = redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_in[0];
    assign redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_in_bitsignaltemp = redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_in[0];
    assign redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_out[0] = redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_out_bitsignaltemp;
    assign redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_out[0] = redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo (
        .valid_in(redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_in_bitsignaltemp),
        .data_in(redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_q),
        .valid_out(redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo(BITJOIN,921)
    assign bubble_join_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_q = redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_data_out;

    // bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo(BITSELECT,922)
    assign bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_b = $unsigned(bubble_join_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_q[0:0]);

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6(STALLENABLE,1546)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32(BLACKBOX,62)@193
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_f32_r11162_0 thei_llvm_fpga_ffwd_dest_f32_r11162_draw_box32 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_i_reduction_draw_box_24_draw_box25_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32(BITJOIN,712)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_q = i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32(BITSELECT,713)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_q[31:0]);

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7(STALLENABLE,1548)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_backStall = i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33(BLACKBOX,68)@188
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i1_cmp9410289_0 thei_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_V0),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33(STALLENABLE,994)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_backStall = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_valid_out;

    // SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0(STALLENABLE,1298)
    // Valid signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_V0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_s_tv_0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_backStall & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_backEN = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_v_s_0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_V0;
    // Backward Stall generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_backStall = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_backEN == 1'b0)
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_R_v_0 & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_s_tv_0;
            end
            else
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_v_s_0;
            end

        end
    end

    // SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1(STALLENABLE,1299)
    // Valid signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_V0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_s_tv_0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_backStall & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_backEN = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_v_s_0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_backEN & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_V0;
    // Backward Stall generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_backStall = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_backEN == 1'b0)
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_R_v_0 & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_s_tv_0;
            end
            else
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_v_s_0;
            end

        end
    end

    // SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2(STALLENABLE,1300)
    // Valid signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_V0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_s_tv_0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_backStall & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_backEN = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_v_s_0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_backEN & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_V0;
    // Backward Stall generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_backStall = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_backEN == 1'b0)
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_R_v_0 & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_s_tv_0;
            end
            else
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33(BITJOIN,730)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_q = i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33(BITSELECT,731)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_q[0:0]);

    // redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0(REG,666)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_backEN == 1'b1)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_b);
        end
    end

    // redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1(REG,667)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_backEN == 1'b1)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_q <= $unsigned(redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_0_q);
        end
    end

    // redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2(REG,668)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_backEN == 1'b1)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_q <= $unsigned(redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_1_q);
        end
    end

    // redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3(REG,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_backEN == 1'b1)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_q <= $unsigned(redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_q);
        end
    end

    // SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3(STALLENABLE,1301)
    // Valid signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_V0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_s_tv_0 = SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backStall & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_backEN = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_v_s_0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_backEN & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_2_V0;
    // Backward Stall generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_backStall = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_backEN == 1'b0)
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_R_v_0 & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_s_tv_0;
            end
            else
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4(STALLREG,1746)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid <= 1'b0;
            SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backStall & (SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid | SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_i_valid);

            if (SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_data0 <= $unsigned(redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_i_valid = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backStall = SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid | ~ (SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_i_valid);

    // Valid
    assign SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_V = SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid : SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_i_valid;

    assign SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_D0 = SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_r_data0 : redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_3_q;

    // SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4(STALLENABLE,1302)
    // Valid signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_V0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_s_tv_0 = SE_i_reduction_draw_box_24_draw_box25_backStall & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backEN = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_v_s_0 = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backEN & SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_V;
    // Backward Stall generation
    assign SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backStall = ~ (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backEN == 1'b0)
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_R_v_0 & SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_s_tv_0;
            end
            else
            begin
                SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4(STALLENABLE,1542)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18(BLACKBOX,76)@192
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_unnamed_38_draw_box0 thei_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18(BITJOIN,755)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_q = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18(BITSELECT,756)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36(BITJOIN,758)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_q = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36(BITSELECT,759)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_q[31:0]);

    // i_add110_draw_box37(ADD,23)@192
    assign i_add110_draw_box37_a = {1'b0, redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_q};
    assign i_add110_draw_box37_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_b};
    assign i_add110_draw_box37_o = $unsigned(i_add110_draw_box37_a) + $unsigned(i_add110_draw_box37_b);
    assign i_add110_draw_box37_q = i_add110_draw_box37_o[32:0];

    // bgTrunc_i_add110_draw_box37_sel_x(BITSELECT,284)@192
    assign bgTrunc_i_add110_draw_box37_sel_x_b = i_add110_draw_box37_q[31:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45(BITJOIN,709)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_q = i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45(BITSELECT,710)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61(BITJOIN,706)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_q = i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61(BITSELECT,707)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75(BITJOIN,703)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_q = i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75(BITSELECT,704)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88(BITJOIN,700)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_q = i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88(BITSELECT,701)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_q[31:0]);

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26(STALLENABLE,1586)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_backStall = i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100(BLACKBOX,57)@348
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_f32_b11369_0 thei_llvm_fpga_ffwd_dest_f32_b11369_draw_box100 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_V0),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25(STALLENABLE,1584)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_backStall = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96(BLACKBOX,79)@348
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_0 thei_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_V0),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93(BITJOIN,749)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_q = i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_dest_data_out_21_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93(BITSELECT,750)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_q[31:0]);

    // bubble_join_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo(BITJOIN,900)
    assign bubble_join_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_q = redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_data_out;

    // bubble_select_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo(BITSELECT,901)
    assign bubble_select_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_b = $unsigned(bubble_join_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_q[31:0]);

    // i_add159_draw_box94(ADD,27)@285
    assign i_add159_draw_box94_a = {1'b0, bubble_select_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_b};
    assign i_add159_draw_box94_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_b};
    assign i_add159_draw_box94_o = $unsigned(i_add159_draw_box94_a) + $unsigned(i_add159_draw_box94_b);
    assign i_add159_draw_box94_q = i_add159_draw_box94_o[32:0];

    // bgTrunc_i_add159_draw_box94_sel_x(BITSELECT,288)@285
    assign bgTrunc_i_add159_draw_box94_sel_x_b = i_add159_draw_box94_q[31:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66(BITJOIN,740)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_q = i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_dest_data_out_20_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66(BITSELECT,741)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_q[31:0]);

    // i_add137_draw_box67(ADD,25)@285
    assign i_add137_draw_box67_a = {1'b0, bubble_select_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_b};
    assign i_add137_draw_box67_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_b};
    assign i_add137_draw_box67_o = $unsigned(i_add137_draw_box67_a) + $unsigned(i_add137_draw_box67_b);
    assign i_add137_draw_box67_q = i_add137_draw_box67_o[32:0];

    // bgTrunc_i_add137_draw_box67_sel_x(BITSELECT,286)@285
    assign bgTrunc_i_add137_draw_box67_sel_x_b = i_add137_draw_box67_q[31:0];

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16(STALLENABLE,1566)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_backStall = i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66(BLACKBOX,71)@285
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_mul5697_0 thei_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_V0),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_dest_data_out_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66(STALLENABLE,1000)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_backStall = SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_V;

    // SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66(STALLREG,1743)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_data0 <= bgTrunc_i_add137_draw_box67_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_and0 = i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_i_valid = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_V0 & SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_and0;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_V = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_i_valid;

    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_r_data0 : bgTrunc_i_add137_draw_box67_sel_x_b;

    // SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo(STALLENABLE,1263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg0 <= '0;
            SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg0 <= SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_toReg0;
            // Successor 1
            SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg1 <= SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_consumed0 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_backStall) & SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireValid) | SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg0;
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_consumed1 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_backStall) & SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireValid) | SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg1;
    // Consuming
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_StallValid = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_backStall & SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireValid;
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_toReg0 = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_StallValid & SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_consumed0;
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_toReg1 = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_StallValid & SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_or0 = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_consumed0;
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireStall = ~ (SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_consumed1 & SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_or0);
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_backStall = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_V0 = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireValid & ~ (SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg0);
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_V1 = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireValid & ~ (SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_wireValid = redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_out;

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24(STALLENABLE,1582)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_backStall = i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93(BLACKBOX,74)@285
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_mul7899_0 thei_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_V0),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_dest_data_out_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93(STALLREG,1739)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_data0 <= bgTrunc_i_add159_draw_box94_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_and0 = i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_i_valid = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_V1 & SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_and0;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_V = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_i_valid;

    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_r_data0 : bgTrunc_i_add159_draw_box94_sel_x_b;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93(STALLENABLE,1006)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_backStall = redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_V;

    // redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo(STALLFIFO,638)
    assign redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_V0;
    assign redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_in = SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_backStall;
    assign redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_data_in = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_D0;
    assign redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_in_bitsignaltemp = redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_in[0];
    assign redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_in_bitsignaltemp = redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_in[0];
    assign redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_out[0] = redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    assign redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_out[0] = redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo (
        .valid_in(redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_in_bitsignaltemp),
        .data_in(SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul7899_draw_box93_D0),
        .valid_out(redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26(BITJOIN,815)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_q = i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26(BITSELECT,816)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24(BITJOIN,812)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_q = i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24(BITSELECT,813)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_q[0:0]);

    // i_reduction_draw_box_28_draw_box41(LOGICAL,126)@193
    assign i_reduction_draw_box_28_draw_box41_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23(BITJOIN,809)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_q = i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23(BITSELECT,810)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55(BITJOIN,806)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_q = i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55(BITSELECT,807)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_q[0:0]);

    // i_reduction_draw_box_36_draw_box71(LOGICAL,134)@193
    assign i_reduction_draw_box_36_draw_box71_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_b;

    // i_reduction_draw_box_46_draw_box98(LOGICAL,141)@193 + 1
    assign i_reduction_draw_box_46_draw_box98_qi = i_reduction_draw_box_36_draw_box71_q | i_reduction_draw_box_28_draw_box41_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_draw_box_46_draw_box98_delay ( .xin(i_reduction_draw_box_46_draw_box98_qi), .xout(i_reduction_draw_box_46_draw_box98_q), .ena(SE_i_reduction_draw_box_46_draw_box98_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_reduction_draw_box_42_draw_box86(STALLENABLE,1108)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_42_draw_box86_V0 = SE_i_reduction_draw_box_42_draw_box86_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_draw_box_42_draw_box86_s_tv_0 = redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_out & SE_i_reduction_draw_box_42_draw_box86_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_draw_box_42_draw_box86_backEN = ~ (SE_i_reduction_draw_box_42_draw_box86_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_draw_box_42_draw_box86_and0 = SE_i_reduction_draw_box_41_draw_box85_V0 & SE_i_reduction_draw_box_42_draw_box86_backEN;
    assign SE_i_reduction_draw_box_42_draw_box86_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V4 & SE_i_reduction_draw_box_42_draw_box86_and0;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_42_draw_box86_backStall = ~ (SE_i_reduction_draw_box_42_draw_box86_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_draw_box_42_draw_box86_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_draw_box_42_draw_box86_backEN == 1'b0)
            begin
                SE_i_reduction_draw_box_42_draw_box86_R_v_0 <= SE_i_reduction_draw_box_42_draw_box86_R_v_0 & SE_i_reduction_draw_box_42_draw_box86_s_tv_0;
            end
            else
            begin
                SE_i_reduction_draw_box_42_draw_box86_R_v_0 <= SE_i_reduction_draw_box_42_draw_box86_v_s_0;
            end

        end
    end

    // SE_i_reduction_draw_box_41_draw_box85(STALLENABLE,1107)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_41_draw_box85_V0 = SE_i_reduction_draw_box_41_draw_box85_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_41_draw_box85_backStall = SE_i_reduction_draw_box_42_draw_box86_backStall | ~ (SE_i_reduction_draw_box_41_draw_box85_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_draw_box_41_draw_box85_and0 = SE_i_reduction_draw_box_36_draw_box71_V1;
    assign SE_i_reduction_draw_box_41_draw_box85_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V2 & SE_i_reduction_draw_box_41_draw_box85_and0;

    // SE_i_reduction_draw_box_38_draw_box73(STALLENABLE,1105)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_38_draw_box73_V0 = SE_i_reduction_draw_box_38_draw_box73_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_draw_box_38_draw_box73_s_tv_0 = redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_out & SE_i_reduction_draw_box_38_draw_box73_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_draw_box_38_draw_box73_backEN = ~ (SE_i_reduction_draw_box_38_draw_box73_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_draw_box_38_draw_box73_and0 = SE_i_reduction_draw_box_37_draw_box72_V0 & SE_i_reduction_draw_box_38_draw_box73_backEN;
    assign SE_i_reduction_draw_box_38_draw_box73_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V3 & SE_i_reduction_draw_box_38_draw_box73_and0;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_38_draw_box73_backStall = ~ (SE_i_reduction_draw_box_38_draw_box73_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_draw_box_38_draw_box73_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_draw_box_38_draw_box73_backEN == 1'b0)
            begin
                SE_i_reduction_draw_box_38_draw_box73_R_v_0 <= SE_i_reduction_draw_box_38_draw_box73_R_v_0 & SE_i_reduction_draw_box_38_draw_box73_s_tv_0;
            end
            else
            begin
                SE_i_reduction_draw_box_38_draw_box73_R_v_0 <= SE_i_reduction_draw_box_38_draw_box73_v_s_0;
            end

        end
    end

    // SE_i_reduction_draw_box_37_draw_box72(STALLENABLE,1104)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_37_draw_box72_V0 = SE_i_reduction_draw_box_37_draw_box72_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_37_draw_box72_backStall = SE_i_reduction_draw_box_38_draw_box73_backStall | ~ (SE_i_reduction_draw_box_37_draw_box72_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_draw_box_37_draw_box72_and0 = SE_i_reduction_draw_box_36_draw_box71_V0;
    assign SE_i_reduction_draw_box_37_draw_box72_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V3 & SE_i_reduction_draw_box_37_draw_box72_and0;

    // SE_i_reduction_draw_box_34_draw_box59(STALLENABLE,1101)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_34_draw_box59_V0 = SE_i_reduction_draw_box_34_draw_box59_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_draw_box_34_draw_box59_s_tv_0 = redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_out & SE_i_reduction_draw_box_34_draw_box59_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_draw_box_34_draw_box59_backEN = ~ (SE_i_reduction_draw_box_34_draw_box59_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_draw_box_34_draw_box59_and0 = SE_i_reduction_draw_box_32_draw_box57_V0 & SE_i_reduction_draw_box_34_draw_box59_backEN;
    assign SE_i_reduction_draw_box_34_draw_box59_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V2 & SE_i_reduction_draw_box_34_draw_box59_and0;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_34_draw_box59_backStall = ~ (SE_i_reduction_draw_box_34_draw_box59_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_draw_box_34_draw_box59_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_draw_box_34_draw_box59_backEN == 1'b0)
            begin
                SE_i_reduction_draw_box_34_draw_box59_R_v_0 <= SE_i_reduction_draw_box_34_draw_box59_R_v_0 & SE_i_reduction_draw_box_34_draw_box59_s_tv_0;
            end
            else
            begin
                SE_i_reduction_draw_box_34_draw_box59_R_v_0 <= SE_i_reduction_draw_box_34_draw_box59_v_s_0;
            end

        end
    end

    // SE_i_reduction_draw_box_32_draw_box57(STALLENABLE,1099)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_32_draw_box57_V0 = SE_i_reduction_draw_box_32_draw_box57_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_32_draw_box57_backStall = SE_i_reduction_draw_box_34_draw_box59_backStall | ~ (SE_i_reduction_draw_box_32_draw_box57_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_draw_box_32_draw_box57_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_V0;
    assign SE_i_reduction_draw_box_32_draw_box57_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V2 & SE_i_reduction_draw_box_32_draw_box57_and0;
    assign SE_i_reduction_draw_box_32_draw_box57_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V2 & SE_i_reduction_draw_box_32_draw_box57_and1;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55(STALLENABLE,1042)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_consumed0 = (~ (SE_i_reduction_draw_box_32_draw_box57_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_consumed1 = (~ (SE_i_reduction_draw_box_36_draw_box71_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_wireValid = i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_valid_out;

    // SE_i_reduction_draw_box_36_draw_box71(STALLENABLE,1103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_draw_box_36_draw_box71_fromReg0 <= '0;
            SE_i_reduction_draw_box_36_draw_box71_fromReg1 <= '0;
            SE_i_reduction_draw_box_36_draw_box71_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_draw_box_36_draw_box71_fromReg0 <= SE_i_reduction_draw_box_36_draw_box71_toReg0;
            // Successor 1
            SE_i_reduction_draw_box_36_draw_box71_fromReg1 <= SE_i_reduction_draw_box_36_draw_box71_toReg1;
            // Successor 2
            SE_i_reduction_draw_box_36_draw_box71_fromReg2 <= SE_i_reduction_draw_box_36_draw_box71_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_draw_box_36_draw_box71_consumed0 = (~ (SE_i_reduction_draw_box_37_draw_box72_backStall) & SE_i_reduction_draw_box_36_draw_box71_wireValid) | SE_i_reduction_draw_box_36_draw_box71_fromReg0;
    assign SE_i_reduction_draw_box_36_draw_box71_consumed1 = (~ (SE_i_reduction_draw_box_41_draw_box85_backStall) & SE_i_reduction_draw_box_36_draw_box71_wireValid) | SE_i_reduction_draw_box_36_draw_box71_fromReg1;
    assign SE_i_reduction_draw_box_36_draw_box71_consumed2 = (~ (SE_i_reduction_draw_box_46_draw_box98_backStall) & SE_i_reduction_draw_box_36_draw_box71_wireValid) | SE_i_reduction_draw_box_36_draw_box71_fromReg2;
    // Consuming
    assign SE_i_reduction_draw_box_36_draw_box71_StallValid = SE_i_reduction_draw_box_36_draw_box71_backStall & SE_i_reduction_draw_box_36_draw_box71_wireValid;
    assign SE_i_reduction_draw_box_36_draw_box71_toReg0 = SE_i_reduction_draw_box_36_draw_box71_StallValid & SE_i_reduction_draw_box_36_draw_box71_consumed0;
    assign SE_i_reduction_draw_box_36_draw_box71_toReg1 = SE_i_reduction_draw_box_36_draw_box71_StallValid & SE_i_reduction_draw_box_36_draw_box71_consumed1;
    assign SE_i_reduction_draw_box_36_draw_box71_toReg2 = SE_i_reduction_draw_box_36_draw_box71_StallValid & SE_i_reduction_draw_box_36_draw_box71_consumed2;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_36_draw_box71_or0 = SE_i_reduction_draw_box_36_draw_box71_consumed0;
    assign SE_i_reduction_draw_box_36_draw_box71_or1 = SE_i_reduction_draw_box_36_draw_box71_consumed1 & SE_i_reduction_draw_box_36_draw_box71_or0;
    assign SE_i_reduction_draw_box_36_draw_box71_wireStall = ~ (SE_i_reduction_draw_box_36_draw_box71_consumed2 & SE_i_reduction_draw_box_36_draw_box71_or1);
    assign SE_i_reduction_draw_box_36_draw_box71_backStall = SE_i_reduction_draw_box_36_draw_box71_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_draw_box_36_draw_box71_V0 = SE_i_reduction_draw_box_36_draw_box71_wireValid & ~ (SE_i_reduction_draw_box_36_draw_box71_fromReg0);
    assign SE_i_reduction_draw_box_36_draw_box71_V1 = SE_i_reduction_draw_box_36_draw_box71_wireValid & ~ (SE_i_reduction_draw_box_36_draw_box71_fromReg1);
    assign SE_i_reduction_draw_box_36_draw_box71_V2 = SE_i_reduction_draw_box_36_draw_box71_wireValid & ~ (SE_i_reduction_draw_box_36_draw_box71_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_reduction_draw_box_36_draw_box71_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_V1;
    assign SE_i_reduction_draw_box_36_draw_box71_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_V1 & SE_i_reduction_draw_box_36_draw_box71_and0;

    // SE_i_reduction_draw_box_30_draw_box43(STALLENABLE,1097)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_30_draw_box43_V0 = SE_i_reduction_draw_box_30_draw_box43_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_draw_box_30_draw_box43_s_tv_0 = redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_out & SE_i_reduction_draw_box_30_draw_box43_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_draw_box_30_draw_box43_backEN = ~ (SE_i_reduction_draw_box_30_draw_box43_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_draw_box_30_draw_box43_and0 = SE_i_reduction_draw_box_29_draw_box42_V0 & SE_i_reduction_draw_box_30_draw_box43_backEN;
    assign SE_i_reduction_draw_box_30_draw_box43_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V1 & SE_i_reduction_draw_box_30_draw_box43_and0;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_30_draw_box43_backStall = ~ (SE_i_reduction_draw_box_30_draw_box43_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_draw_box_30_draw_box43_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_draw_box_30_draw_box43_backEN == 1'b0)
            begin
                SE_i_reduction_draw_box_30_draw_box43_R_v_0 <= SE_i_reduction_draw_box_30_draw_box43_R_v_0 & SE_i_reduction_draw_box_30_draw_box43_s_tv_0;
            end
            else
            begin
                SE_i_reduction_draw_box_30_draw_box43_R_v_0 <= SE_i_reduction_draw_box_30_draw_box43_v_s_0;
            end

        end
    end

    // SE_i_reduction_draw_box_29_draw_box42(STALLENABLE,1096)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_29_draw_box42_V0 = SE_i_reduction_draw_box_29_draw_box42_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_29_draw_box42_backStall = SE_i_reduction_draw_box_30_draw_box43_backStall | ~ (SE_i_reduction_draw_box_29_draw_box42_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_draw_box_29_draw_box42_and0 = SE_i_reduction_draw_box_28_draw_box41_V0;
    assign SE_i_reduction_draw_box_29_draw_box42_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V1 & SE_i_reduction_draw_box_29_draw_box42_and0;

    // SE_i_reduction_draw_box_28_draw_box41(STALLENABLE,1095)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_draw_box_28_draw_box41_fromReg0 <= '0;
            SE_i_reduction_draw_box_28_draw_box41_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_draw_box_28_draw_box41_fromReg0 <= SE_i_reduction_draw_box_28_draw_box41_toReg0;
            // Successor 1
            SE_i_reduction_draw_box_28_draw_box41_fromReg1 <= SE_i_reduction_draw_box_28_draw_box41_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_draw_box_28_draw_box41_consumed0 = (~ (SE_i_reduction_draw_box_29_draw_box42_backStall) & SE_i_reduction_draw_box_28_draw_box41_wireValid) | SE_i_reduction_draw_box_28_draw_box41_fromReg0;
    assign SE_i_reduction_draw_box_28_draw_box41_consumed1 = (~ (SE_i_reduction_draw_box_46_draw_box98_backStall) & SE_i_reduction_draw_box_28_draw_box41_wireValid) | SE_i_reduction_draw_box_28_draw_box41_fromReg1;
    // Consuming
    assign SE_i_reduction_draw_box_28_draw_box41_StallValid = SE_i_reduction_draw_box_28_draw_box41_backStall & SE_i_reduction_draw_box_28_draw_box41_wireValid;
    assign SE_i_reduction_draw_box_28_draw_box41_toReg0 = SE_i_reduction_draw_box_28_draw_box41_StallValid & SE_i_reduction_draw_box_28_draw_box41_consumed0;
    assign SE_i_reduction_draw_box_28_draw_box41_toReg1 = SE_i_reduction_draw_box_28_draw_box41_StallValid & SE_i_reduction_draw_box_28_draw_box41_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_28_draw_box41_or0 = SE_i_reduction_draw_box_28_draw_box41_consumed0;
    assign SE_i_reduction_draw_box_28_draw_box41_wireStall = ~ (SE_i_reduction_draw_box_28_draw_box41_consumed1 & SE_i_reduction_draw_box_28_draw_box41_or0);
    assign SE_i_reduction_draw_box_28_draw_box41_backStall = SE_i_reduction_draw_box_28_draw_box41_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_draw_box_28_draw_box41_V0 = SE_i_reduction_draw_box_28_draw_box41_wireValid & ~ (SE_i_reduction_draw_box_28_draw_box41_fromReg0);
    assign SE_i_reduction_draw_box_28_draw_box41_V1 = SE_i_reduction_draw_box_28_draw_box41_wireValid & ~ (SE_i_reduction_draw_box_28_draw_box41_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_draw_box_28_draw_box41_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V1;
    assign SE_i_reduction_draw_box_28_draw_box41_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V1 & SE_i_reduction_draw_box_28_draw_box41_and0;

    // SE_i_reduction_draw_box_46_draw_box98(STALLENABLE,1110)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_46_draw_box98_V0 = SE_i_reduction_draw_box_46_draw_box98_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_draw_box_46_draw_box98_s_tv_0 = redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_out & SE_i_reduction_draw_box_46_draw_box98_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_draw_box_46_draw_box98_backEN = ~ (SE_i_reduction_draw_box_46_draw_box98_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_draw_box_46_draw_box98_and0 = SE_i_reduction_draw_box_28_draw_box41_V1 & SE_i_reduction_draw_box_46_draw_box98_backEN;
    assign SE_i_reduction_draw_box_46_draw_box98_v_s_0 = SE_i_reduction_draw_box_36_draw_box71_V2 & SE_i_reduction_draw_box_46_draw_box98_and0;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_46_draw_box98_backStall = ~ (SE_i_reduction_draw_box_46_draw_box98_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_draw_box_46_draw_box98_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_draw_box_46_draw_box98_backEN == 1'b0)
            begin
                SE_i_reduction_draw_box_46_draw_box98_R_v_0 <= SE_i_reduction_draw_box_46_draw_box98_R_v_0 & SE_i_reduction_draw_box_46_draw_box98_s_tv_0;
            end
            else
            begin
                SE_i_reduction_draw_box_46_draw_box98_R_v_0 <= SE_i_reduction_draw_box_46_draw_box98_v_s_0;
            end

        end
    end

    // redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo(STALLFIFO,644)
    assign redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_in = SE_i_reduction_draw_box_46_draw_box98_V0;
    assign redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_in = SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_backStall;
    assign redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_data_in = i_reduction_draw_box_46_draw_box98_q;
    assign redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_in_bitsignaltemp = redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_in[0];
    assign redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_in_bitsignaltemp = redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_in[0];
    assign redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_out[0] = redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_out_bitsignaltemp;
    assign redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_out[0] = redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(155),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_reduction_draw_box_46_draw_box98_q_155_fifo (
        .valid_in(redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_draw_box_46_draw_box98_q),
        .valid_out(redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4(STALLENABLE,1322)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_V0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_s_tv_0 = SE_i_first_cleanup_xor105_or_draw_box102_backStall & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backEN = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_v_s_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backEN & SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_V;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backStall = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_R_v_0 & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27(STALLENABLE,1588)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_backStall = i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101(BLACKBOX,63)@188
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i1_cmp9410284_0 thei_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_V0),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101(STALLENABLE,984)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_backStall = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_valid_out;

    // SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0(STALLENABLE,1318)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_V0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_s_tv_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_backStall & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_backEN = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_v_s_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_V0;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_backStall = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_R_v_0 & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_v_s_0;
            end

        end
    end

    // SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1(STALLENABLE,1319)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_V0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_s_tv_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_backStall & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_backEN = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_v_s_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_backEN & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_V0;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_backStall = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_R_v_0 & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_v_s_0;
            end

        end
    end

    // SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2(STALLENABLE,1320)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_V0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_s_tv_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_backStall & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_backEN = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_v_s_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_backEN & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_V0;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_backStall = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_R_v_0 & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101(BITJOIN,715)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_q = i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101(BITSELECT,716)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_q[0:0]);

    // redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0(REG,686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_b);
        end
    end

    // redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1(REG,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_q <= $unsigned(redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_0_q);
        end
    end

    // redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2(REG,688)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_q <= $unsigned(redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_1_q);
        end
    end

    // redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3(REG,689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_q <= $unsigned(redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_q);
        end
    end

    // SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3(STALLENABLE,1321)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_V0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_s_tv_0 = SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backStall & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_backEN = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_v_s_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_backEN & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_2_V0;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_backStall = ~ (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_R_v_0 & SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4(STALLREG,1737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid <= 1'b0;
            SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid <= SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backStall & (SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid | SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_i_valid);

            if (SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_data0 <= $unsigned(redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_i_valid = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backStall = SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid | ~ (SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_i_valid);

    // Valid
    assign SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_V = SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid : SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_i_valid;

    assign SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_D0 = SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_r_data0 : redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_3_q;

    // redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4(REG,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_q <= $unsigned(SR_SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_D0);
        end
    end

    // i_first_cleanup_xor105_or_draw_box102(LOGICAL,38)@193 + 1
    assign i_first_cleanup_xor105_or_draw_box102_qi = redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_q | i_xor_draw_box2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor105_or_draw_box102_delay ( .xin(i_first_cleanup_xor105_or_draw_box102_qi), .xout(i_first_cleanup_xor105_or_draw_box102_q), .ena(SE_i_first_cleanup_xor105_or_draw_box102_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_first_cleanup_xor105_or_draw_box102(STALLENABLE,965)
    // Valid signal propagation
    assign SE_i_first_cleanup_xor105_or_draw_box102_V0 = SE_i_first_cleanup_xor105_or_draw_box102_R_v_0;
    // Stall signal propagation
    assign SE_i_first_cleanup_xor105_or_draw_box102_s_tv_0 = redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_out & SE_i_first_cleanup_xor105_or_draw_box102_R_v_0;
    // Backward Enable generation
    assign SE_i_first_cleanup_xor105_or_draw_box102_backEN = ~ (SE_i_first_cleanup_xor105_or_draw_box102_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_first_cleanup_xor105_or_draw_box102_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V7 & SE_i_first_cleanup_xor105_or_draw_box102_backEN;
    assign SE_i_first_cleanup_xor105_or_draw_box102_v_s_0 = SE_redist32_i_llvm_fpga_ffwd_dest_i1_cmp9410284_draw_box101_out_dest_data_out_14_0_5_4_V0 & SE_i_first_cleanup_xor105_or_draw_box102_and0;
    // Backward Stall generation
    assign SE_i_first_cleanup_xor105_or_draw_box102_backStall = ~ (SE_i_first_cleanup_xor105_or_draw_box102_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_first_cleanup_xor105_or_draw_box102_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_first_cleanup_xor105_or_draw_box102_backEN == 1'b0)
            begin
                SE_i_first_cleanup_xor105_or_draw_box102_R_v_0 <= SE_i_first_cleanup_xor105_or_draw_box102_R_v_0 & SE_i_first_cleanup_xor105_or_draw_box102_s_tv_0;
            end
            else
            begin
                SE_i_first_cleanup_xor105_or_draw_box102_R_v_0 <= SE_i_first_cleanup_xor105_or_draw_box102_v_s_0;
            end

        end
    end

    // redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo(STALLFIFO,691)
    assign redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_in = SE_i_first_cleanup_xor105_or_draw_box102_V0;
    assign redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_in = SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_backStall;
    assign redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_data_in = i_first_cleanup_xor105_or_draw_box102_q;
    assign redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_in_bitsignaltemp = redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_in[0];
    assign redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_in_bitsignaltemp = redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_in[0];
    assign redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_out[0] = redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_out_bitsignaltemp;
    assign redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_out[0] = redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(155),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo (
        .valid_in(redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_in_bitsignaltemp),
        .stall_in(redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor105_or_draw_box102_q),
        .valid_out(redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_out_bitsignaltemp),
        .stall_out(redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_stall_out_bitsignaltemp),
        .data_out(redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo(STALLENABLE,1324)
    // Valid signal propagation
    assign SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_V0 = SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_backStall = i_llvm_fpga_mem_memdep_47_draw_box103_out_o_stall | ~ (SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and0 = redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_valid_out;
    assign SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and1 = redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_valid_out & SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and0;
    assign SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and2 = redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_valid_out & SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and1;
    assign SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and3 = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_valid_out & SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and2;
    assign SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and4 = i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_valid_out & SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and3;
    assign SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_V1 & SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_and4;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92(STALLENABLE,1072)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_wireValid = i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_42_draw_box91(BITJOIN,795)
    assign bubble_join_i_llvm_fpga_mem_memdep_42_draw_box91_q = i_llvm_fpga_mem_memdep_42_draw_box91_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_42_draw_box91(BITSELECT,796)
    assign bubble_select_i_llvm_fpga_mem_memdep_42_draw_box91_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_42_draw_box91_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92(BLACKBOX,107)@348
    // in in_stall_in@20000000
    // out out_data_out@349
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@349
    draw_box_i_llvm_fpga_push_i1_memdep_phi43_push24_0 thei_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_42_draw_box91_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_feedback_stall_out_24),
        .in_keep_going(bubble_select_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92(STALLENABLE,1071)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_backStall = i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_and0 = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_wireValid = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_and0;

    // SE_out_i_llvm_fpga_mem_memdep_42_draw_box91(STALLENABLE,1036)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_backStall) & SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireValid) | SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_consumed1 = (~ (SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireValid) | SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_StallValid = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_backStall & SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_toReg0 = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_StallValid & SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_toReg1 = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_StallValid & SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_or0 = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_consumed1 & SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_backStall = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_V0 = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_V1 = SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_wireValid = i_llvm_fpga_mem_memdep_42_draw_box91_out_o_valid;

    // bubble_join_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo(BITJOIN,942)
    assign bubble_join_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_q = redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_data_out;

    // bubble_select_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo(BITSELECT,943)
    assign bubble_select_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_b = $unsigned(bubble_join_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_q[0:0]);

    // bubble_join_redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo(BITJOIN,906)
    assign bubble_join_redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_q = redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_data_out;

    // bubble_select_redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo(BITSELECT,907)
    assign bubble_select_redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_b = $unsigned(bubble_join_redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_37_draw_box78(BITJOIN,792)
    assign bubble_join_i_llvm_fpga_mem_memdep_37_draw_box78_q = i_llvm_fpga_mem_memdep_37_draw_box78_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_37_draw_box78(BITSELECT,793)
    assign bubble_select_i_llvm_fpga_mem_memdep_37_draw_box78_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_37_draw_box78_q[0:0]);

    // i_reduction_draw_box_43_draw_box87(LOGICAL,140)@317
    assign i_reduction_draw_box_43_draw_box87_q = bubble_select_i_llvm_fpga_mem_memdep_37_draw_box78_b | bubble_select_redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_b;

    // i_arrayidx106_draw_box0_mult_multconst_x(CONSTANT,325)
    assign i_arrayidx106_draw_box0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // bubble_join_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo(BITJOIN,894)
    assign bubble_join_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_q = redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_data_out;

    // bubble_select_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo(BITSELECT,895)
    assign bubble_select_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_b = $unsigned(bubble_join_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_q[31:0]);

    // i_idxprom149_draw_box82_sel_x(BITSELECT,387)@317
    assign i_idxprom149_draw_box82_sel_x_b = $unsigned({{32{bubble_select_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_b[31]}}, bubble_select_redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_b[31:0]});

    // i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select(BITSELECT,587)@317
    assign i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_b = i_idxprom149_draw_box82_sel_x_b[63:54];
    assign i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_c = i_idxprom149_draw_box82_sel_x_b[53:36];
    assign i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_d = i_idxprom149_draw_box82_sel_x_b[35:18];
    assign i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_e = i_idxprom149_draw_box82_sel_x_b[17:0];

    // i_arrayidx150_draw_box0_mult_x_im0_shift0(BITSHIFT,570)@317
    assign i_arrayidx150_draw_box0_mult_x_im0_shift0_qint = { i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx150_draw_box0_mult_x_im0_shift0_q = i_arrayidx150_draw_box0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx150_draw_box0_mult_x_sums_align_3(BITSHIFT,517)@317
    assign i_arrayidx150_draw_box0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx150_draw_box0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx150_draw_box0_mult_x_sums_align_3_q = i_arrayidx150_draw_box0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx150_draw_box0_mult_x_im6_shift0(BITSHIFT,572)@317
    assign i_arrayidx150_draw_box0_mult_x_im6_shift0_qint = { i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx150_draw_box0_mult_x_im6_shift0_q = i_arrayidx150_draw_box0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx150_draw_box0_mult_x_sums_align_2(BITSHIFT,516)@317
    assign i_arrayidx150_draw_box0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx150_draw_box0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx150_draw_box0_mult_x_sums_align_2_q = i_arrayidx150_draw_box0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx150_draw_box0_mult_x_sums_join_4(BITJOIN,518)@317
    assign i_arrayidx150_draw_box0_mult_x_sums_join_4_q = {i_arrayidx150_draw_box0_mult_x_sums_align_3_q, i_arrayidx150_draw_box0_mult_x_sums_align_2_q};

    // i_arrayidx150_draw_box0_mult_x_im3_shift0(BITSHIFT,571)@317
    assign i_arrayidx150_draw_box0_mult_x_im3_shift0_qint = { i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx150_draw_box0_mult_x_im3_shift0_q = i_arrayidx150_draw_box0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx150_draw_box0_mult_x_sums_align_0(BITSHIFT,514)@317
    assign i_arrayidx150_draw_box0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx150_draw_box0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx150_draw_box0_mult_x_sums_align_0_q = i_arrayidx150_draw_box0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx150_draw_box0_mult_x_im9_shift0(BITSHIFT,573)@317
    assign i_arrayidx150_draw_box0_mult_x_im9_shift0_qint = { i_arrayidx150_draw_box0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx150_draw_box0_mult_x_im9_shift0_q = i_arrayidx150_draw_box0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx150_draw_box0_mult_x_sums_join_1(BITJOIN,515)@317
    assign i_arrayidx150_draw_box0_mult_x_sums_join_1_q = {i_arrayidx150_draw_box0_mult_x_sums_align_0_q, {1'b0, i_arrayidx150_draw_box0_mult_x_im9_shift0_q}};

    // i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0(ADD,519)@317
    assign i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx150_draw_box0_mult_x_sums_join_1_q};
    assign i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx150_draw_box0_mult_x_sums_join_4_q};
    assign i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_q = i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx150_draw_box0_mult_extender_x(BITJOIN,364)@317
    assign i_arrayidx150_draw_box0_mult_extender_x_q = {i_arrayidx106_draw_box0_mult_multconst_x_q, i_arrayidx150_draw_box0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx150_draw_box0_trunc_sel_x(BITSELECT,366)@317
    assign i_arrayidx150_draw_box0_trunc_sel_x_b = i_arrayidx150_draw_box0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83(BITJOIN,768)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_q = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83(BITSELECT,769)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_q[63:0]);

    // i_arrayidx150_draw_box0_add_x(ADD,358)@317
    assign i_arrayidx150_draw_box0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_b};
    assign i_arrayidx150_draw_box0_add_x_b = {1'b0, i_arrayidx150_draw_box0_trunc_sel_x_b};
    assign i_arrayidx150_draw_box0_add_x_o = $unsigned(i_arrayidx150_draw_box0_add_x_a) + $unsigned(i_arrayidx150_draw_box0_add_x_b);
    assign i_arrayidx150_draw_box0_add_x_q = i_arrayidx150_draw_box0_add_x_o[64:0];

    // i_arrayidx150_draw_box0_dupName_0_trunc_sel_x(BITSELECT,367)@317
    assign i_arrayidx150_draw_box0_dupName_0_trunc_sel_x_b = i_arrayidx150_draw_box0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_42_draw_box91(BLACKBOX,89)@317
    // in in_i_stall@20000000
    // out out_lsu_memdep_42_o_active@20000000
    // out out_memdep_42_draw_box_avm_address@20000000
    // out out_memdep_42_draw_box_avm_burstcount@20000000
    // out out_memdep_42_draw_box_avm_byteenable@20000000
    // out out_memdep_42_draw_box_avm_enable@20000000
    // out out_memdep_42_draw_box_avm_read@20000000
    // out out_memdep_42_draw_box_avm_write@20000000
    // out out_memdep_42_draw_box_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@348
    // out out_o_writeack@348
    draw_box_i_llvm_fpga_mem_memdep_42_0 thei_llvm_fpga_mem_memdep_42_draw_box91 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx150_draw_box0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_draw_box_43_draw_box87_q),
        .in_i_predicate(bubble_select_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_42_draw_box91_backStall),
        .in_i_valid(SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_b),
        .in_memdep_42_draw_box_avm_readdata(in_memdep_42_draw_box_avm_readdata),
        .in_memdep_42_draw_box_avm_readdatavalid(in_memdep_42_draw_box_avm_readdatavalid),
        .in_memdep_42_draw_box_avm_waitrequest(in_memdep_42_draw_box_avm_waitrequest),
        .in_memdep_42_draw_box_avm_writeack(in_memdep_42_draw_box_avm_writeack),
        .out_lsu_memdep_42_o_active(i_llvm_fpga_mem_memdep_42_draw_box91_out_lsu_memdep_42_o_active),
        .out_memdep_42_draw_box_avm_address(i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_address),
        .out_memdep_42_draw_box_avm_burstcount(i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_burstcount),
        .out_memdep_42_draw_box_avm_byteenable(i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_byteenable),
        .out_memdep_42_draw_box_avm_enable(i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_enable),
        .out_memdep_42_draw_box_avm_read(i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_read),
        .out_memdep_42_draw_box_avm_write(i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_write),
        .out_memdep_42_draw_box_avm_writedata(i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_42_draw_box91_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_42_draw_box91_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_42_draw_box91_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22(STALLENABLE,1578)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_backStall = i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88(BLACKBOX,58)@317
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_f32_b11370_0 thei_llvm_fpga_ffwd_dest_f32_b11370_draw_box88 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_V0),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21(STALLENABLE,1576)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_backStall = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83(BLACKBOX,80)@317
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_0 thei_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_V0),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80(BITJOIN,746)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_q = i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_dest_data_out_21_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80(BITSELECT,747)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_q[31:0]);

    // bubble_join_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo(BITJOIN,888)
    assign bubble_join_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_q = redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_data_out;

    // bubble_select_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo(BITSELECT,889)
    assign bubble_select_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_b = $unsigned(bubble_join_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_q[31:0]);

    // i_add148_draw_box81(ADD,26)@254
    assign i_add148_draw_box81_a = {1'b0, bubble_select_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_b};
    assign i_add148_draw_box81_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_b};
    assign i_add148_draw_box81_o = $unsigned(i_add148_draw_box81_a) + $unsigned(i_add148_draw_box81_b);
    assign i_add148_draw_box81_q = i_add148_draw_box81_o[32:0];

    // bgTrunc_i_add148_draw_box81_sel_x(BITSELECT,287)@254
    assign bgTrunc_i_add148_draw_box81_sel_x_b = i_add148_draw_box81_q[31:0];

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20(STALLENABLE,1574)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_backStall = i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80(BLACKBOX,73)@254
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_mul78100_0 thei_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_V0),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_dest_data_out_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80(STALLREG,1741)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_data0 <= bgTrunc_i_add148_draw_box81_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_and0 = i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_i_valid = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_V1 & SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_and0;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_V = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_i_valid;

    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_r_data0 : bgTrunc_i_add148_draw_box81_sel_x_b;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80(STALLENABLE,1004)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_backStall = redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_V;

    // redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo(STALLFIFO,639)
    assign redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_V0;
    assign redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_in = SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_backStall;
    assign redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_data_in = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_D0;
    assign redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_in_bitsignaltemp = redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_in[0];
    assign redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_in_bitsignaltemp = redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_in[0];
    assign redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_out[0] = redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    assign redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_out[0] = redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo (
        .valid_in(redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_in_bitsignaltemp),
        .data_in(SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_D0),
        .valid_out(redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_draw_box_41_draw_box85(LOGICAL,138)@193
    assign i_reduction_draw_box_41_draw_box85_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_b | i_reduction_draw_box_36_draw_box71_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30(BITJOIN,821)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_q = i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30(BITSELECT,822)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_q[0:0]);

    // i_reduction_draw_box_42_draw_box86(LOGICAL,139)@193 + 1
    assign i_reduction_draw_box_42_draw_box86_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_b | i_reduction_draw_box_41_draw_box85_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_draw_box_42_draw_box86_delay ( .xin(i_reduction_draw_box_42_draw_box86_qi), .xout(i_reduction_draw_box_42_draw_box86_q), .ena(SE_i_reduction_draw_box_42_draw_box86_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo(STALLFIFO,645)
    assign redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_in = SE_i_reduction_draw_box_42_draw_box86_V0;
    assign redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_in = SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_backStall;
    assign redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_data_in = i_reduction_draw_box_42_draw_box86_q;
    assign redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_in_bitsignaltemp = redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_in[0];
    assign redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_in_bitsignaltemp = redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_in[0];
    assign redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_out[0] = redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_out_bitsignaltemp;
    assign redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_out[0] = redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(124),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist15_i_reduction_draw_box_42_draw_box86_q_124_fifo (
        .valid_in(redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_draw_box_42_draw_box86_q),
        .valid_out(redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4(STALLENABLE,1317)
    // Valid signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_V0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_s_tv_0 = SE_i_first_cleanup_xor104_or_draw_box90_backStall & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backEN = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_v_s_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backEN & SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_V;
    // Backward Stall generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backStall = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_R_v_0 & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_s_tv_0;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23(STALLENABLE,1580)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_backStall = i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89(BLACKBOX,64)@188
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i1_cmp9410285_0 thei_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_V0),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89(STALLENABLE,986)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_backStall = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_valid_out;

    // SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0(STALLENABLE,1313)
    // Valid signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_V0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_s_tv_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_backStall & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_backEN = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_v_s_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_V0;
    // Backward Stall generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_backStall = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_R_v_0 & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_s_tv_0;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_v_s_0;
            end

        end
    end

    // SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1(STALLENABLE,1314)
    // Valid signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_V0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_s_tv_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_backStall & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_backEN = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_v_s_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_backEN & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_V0;
    // Backward Stall generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_backStall = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_R_v_0 & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_s_tv_0;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_v_s_0;
            end

        end
    end

    // SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2(STALLENABLE,1315)
    // Valid signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_V0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_s_tv_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_backStall & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_backEN = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_v_s_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_backEN & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_V0;
    // Backward Stall generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_backStall = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_R_v_0 & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_s_tv_0;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89(BITJOIN,718)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_q = i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89(BITSELECT,719)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_q[0:0]);

    // redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0(REG,681)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_b);
        end
    end

    // redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1(REG,682)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_q <= $unsigned(redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_0_q);
        end
    end

    // redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2(REG,683)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_q <= $unsigned(redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_1_q);
        end
    end

    // redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3(REG,684)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_q <= $unsigned(redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_q);
        end
    end

    // SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3(STALLENABLE,1316)
    // Valid signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_V0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_s_tv_0 = SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backStall & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_backEN = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_v_s_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_backEN & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_2_V0;
    // Backward Stall generation
    assign SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_backStall = ~ (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_R_v_0 & SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_s_tv_0;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4(STALLREG,1740)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid <= 1'b0;
            SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid <= SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backStall & (SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid | SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_i_valid);

            if (SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_data0 <= $unsigned(redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_i_valid = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backStall = SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid | ~ (SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_i_valid);

    // Valid
    assign SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_V = SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid : SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_i_valid;

    assign SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_D0 = SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_r_data0 : redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_3_q;

    // redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4(REG,685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_q <= $unsigned(SR_SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_D0);
        end
    end

    // i_first_cleanup_xor104_or_draw_box90(LOGICAL,37)@193 + 1
    assign i_first_cleanup_xor104_or_draw_box90_qi = redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_q | i_xor_draw_box2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor104_or_draw_box90_delay ( .xin(i_first_cleanup_xor104_or_draw_box90_qi), .xout(i_first_cleanup_xor104_or_draw_box90_q), .ena(SE_i_first_cleanup_xor104_or_draw_box90_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_first_cleanup_xor104_or_draw_box90(STALLENABLE,964)
    // Valid signal propagation
    assign SE_i_first_cleanup_xor104_or_draw_box90_V0 = SE_i_first_cleanup_xor104_or_draw_box90_R_v_0;
    // Stall signal propagation
    assign SE_i_first_cleanup_xor104_or_draw_box90_s_tv_0 = redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_out & SE_i_first_cleanup_xor104_or_draw_box90_R_v_0;
    // Backward Enable generation
    assign SE_i_first_cleanup_xor104_or_draw_box90_backEN = ~ (SE_i_first_cleanup_xor104_or_draw_box90_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_first_cleanup_xor104_or_draw_box90_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V6 & SE_i_first_cleanup_xor104_or_draw_box90_backEN;
    assign SE_i_first_cleanup_xor104_or_draw_box90_v_s_0 = SE_redist31_i_llvm_fpga_ffwd_dest_i1_cmp9410285_draw_box89_out_dest_data_out_14_0_5_4_V0 & SE_i_first_cleanup_xor104_or_draw_box90_and0;
    // Backward Stall generation
    assign SE_i_first_cleanup_xor104_or_draw_box90_backStall = ~ (SE_i_first_cleanup_xor104_or_draw_box90_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_first_cleanup_xor104_or_draw_box90_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_first_cleanup_xor104_or_draw_box90_backEN == 1'b0)
            begin
                SE_i_first_cleanup_xor104_or_draw_box90_R_v_0 <= SE_i_first_cleanup_xor104_or_draw_box90_R_v_0 & SE_i_first_cleanup_xor104_or_draw_box90_s_tv_0;
            end
            else
            begin
                SE_i_first_cleanup_xor104_or_draw_box90_R_v_0 <= SE_i_first_cleanup_xor104_or_draw_box90_v_s_0;
            end

        end
    end

    // redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo(STALLFIFO,692)
    assign redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_in = SE_i_first_cleanup_xor104_or_draw_box90_V0;
    assign redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_in = SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_backStall;
    assign redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_data_in = i_first_cleanup_xor104_or_draw_box90_q;
    assign redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_in_bitsignaltemp = redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_in[0];
    assign redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_in_bitsignaltemp = redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_in[0];
    assign redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_out[0] = redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_out_bitsignaltemp;
    assign redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_out[0] = redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(124),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo (
        .valid_in(redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_in_bitsignaltemp),
        .stall_in(redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor104_or_draw_box90_q),
        .valid_out(redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_out_bitsignaltemp),
        .stall_out(redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_stall_out_bitsignaltemp),
        .data_out(redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo(STALLENABLE,1326)
    // Valid signal propagation
    assign SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_V0 = SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_backStall = i_llvm_fpga_mem_memdep_42_draw_box91_out_o_stall | ~ (SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and0 = redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_valid_out;
    assign SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and1 = redist15_i_reduction_draw_box_42_draw_box86_q_124_fifo_valid_out & SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and0;
    assign SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and2 = redist9_bgTrunc_i_add148_draw_box81_sel_x_b_63_fifo_valid_out & SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and1;
    assign SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and3 = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract92_draw_box83_out_valid_out & SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and2;
    assign SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and4 = i_llvm_fpga_ffwd_dest_f32_b11370_draw_box88_out_valid_out & SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and3;
    assign SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_V1 & SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_and4;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79(STALLENABLE,1070)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_wireValid = i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79(BLACKBOX,106)@317
    // in in_stall_in@20000000
    // out out_data_out@318
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@318
    draw_box_i_llvm_fpga_push_i1_memdep_phi38_push23_0 thei_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_37_draw_box78_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_feedback_stall_out_23),
        .in_keep_going(bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79(STALLENABLE,1069)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_backStall = i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_and0 = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_wireValid = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_and0;

    // SE_out_i_llvm_fpga_mem_memdep_37_draw_box78(STALLENABLE,1034)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_backStall) & SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireValid) | SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_consumed1 = (~ (SE_out_redist34_i_first_cleanup_xor104_or_draw_box90_q_124_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireValid) | SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_StallValid = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_backStall & SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_toReg0 = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_StallValid & SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_toReg1 = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_StallValid & SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_or0 = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_consumed1 & SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_backStall = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_V0 = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_V1 = SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_wireValid = i_llvm_fpga_mem_memdep_37_draw_box78_out_o_valid;

    // bubble_join_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo(BITJOIN,945)
    assign bubble_join_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_q = redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_data_out;

    // bubble_select_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo(BITSELECT,946)
    assign bubble_select_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_b = $unsigned(bubble_join_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_q[0:0]);

    // bubble_join_redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo(BITJOIN,909)
    assign bubble_join_redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_q = redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_data_out;

    // bubble_select_redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo(BITSELECT,910)
    assign bubble_select_redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_b = $unsigned(bubble_join_redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_32_draw_box64(BITJOIN,789)
    assign bubble_join_i_llvm_fpga_mem_memdep_32_draw_box64_q = i_llvm_fpga_mem_memdep_32_draw_box64_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_32_draw_box64(BITSELECT,790)
    assign bubble_select_i_llvm_fpga_mem_memdep_32_draw_box64_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_32_draw_box64_q[0:0]);

    // i_reduction_draw_box_39_draw_box74(LOGICAL,137)@286
    assign i_reduction_draw_box_39_draw_box74_q = bubble_select_i_llvm_fpga_mem_memdep_32_draw_box64_b | bubble_select_redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_b;

    // redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0(REG,640)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_q <= $unsigned(SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_D0);
        end
    end

    // i_idxprom138_draw_box68_sel_x(BITSELECT,386)@286
    assign i_idxprom138_draw_box68_sel_x_b = $unsigned({{32{redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_q[31]}}, redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_q[31:0]});

    // i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select(BITSELECT,586)@286
    assign i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_b = i_idxprom138_draw_box68_sel_x_b[63:54];
    assign i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_c = i_idxprom138_draw_box68_sel_x_b[53:36];
    assign i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_d = i_idxprom138_draw_box68_sel_x_b[35:18];
    assign i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_e = i_idxprom138_draw_box68_sel_x_b[17:0];

    // i_arrayidx139_draw_box0_mult_x_im0_shift0(BITSHIFT,566)@286
    assign i_arrayidx139_draw_box0_mult_x_im0_shift0_qint = { i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx139_draw_box0_mult_x_im0_shift0_q = i_arrayidx139_draw_box0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx139_draw_box0_mult_x_sums_align_3(BITSHIFT,499)@286
    assign i_arrayidx139_draw_box0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx139_draw_box0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx139_draw_box0_mult_x_sums_align_3_q = i_arrayidx139_draw_box0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx139_draw_box0_mult_x_im6_shift0(BITSHIFT,568)@286
    assign i_arrayidx139_draw_box0_mult_x_im6_shift0_qint = { i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx139_draw_box0_mult_x_im6_shift0_q = i_arrayidx139_draw_box0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx139_draw_box0_mult_x_sums_align_2(BITSHIFT,498)@286
    assign i_arrayidx139_draw_box0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx139_draw_box0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx139_draw_box0_mult_x_sums_align_2_q = i_arrayidx139_draw_box0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx139_draw_box0_mult_x_sums_join_4(BITJOIN,500)@286
    assign i_arrayidx139_draw_box0_mult_x_sums_join_4_q = {i_arrayidx139_draw_box0_mult_x_sums_align_3_q, i_arrayidx139_draw_box0_mult_x_sums_align_2_q};

    // i_arrayidx139_draw_box0_mult_x_im3_shift0(BITSHIFT,567)@286
    assign i_arrayidx139_draw_box0_mult_x_im3_shift0_qint = { i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx139_draw_box0_mult_x_im3_shift0_q = i_arrayidx139_draw_box0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx139_draw_box0_mult_x_sums_align_0(BITSHIFT,496)@286
    assign i_arrayidx139_draw_box0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx139_draw_box0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx139_draw_box0_mult_x_sums_align_0_q = i_arrayidx139_draw_box0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx139_draw_box0_mult_x_im9_shift0(BITSHIFT,569)@286
    assign i_arrayidx139_draw_box0_mult_x_im9_shift0_qint = { i_arrayidx139_draw_box0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx139_draw_box0_mult_x_im9_shift0_q = i_arrayidx139_draw_box0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx139_draw_box0_mult_x_sums_join_1(BITJOIN,497)@286
    assign i_arrayidx139_draw_box0_mult_x_sums_join_1_q = {i_arrayidx139_draw_box0_mult_x_sums_align_0_q, {1'b0, i_arrayidx139_draw_box0_mult_x_im9_shift0_q}};

    // i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0(ADD,501)@286
    assign i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx139_draw_box0_mult_x_sums_join_1_q};
    assign i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx139_draw_box0_mult_x_sums_join_4_q};
    assign i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_q = i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx139_draw_box0_mult_extender_x(BITJOIN,354)@286
    assign i_arrayidx139_draw_box0_mult_extender_x_q = {i_arrayidx106_draw_box0_mult_multconst_x_q, i_arrayidx139_draw_box0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx139_draw_box0_trunc_sel_x(BITSELECT,356)@286
    assign i_arrayidx139_draw_box0_trunc_sel_x_b = i_arrayidx139_draw_box0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69(BITJOIN,771)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_q = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69(BITSELECT,772)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_q[63:0]);

    // i_arrayidx139_draw_box0_add_x(ADD,348)@286
    assign i_arrayidx139_draw_box0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_b};
    assign i_arrayidx139_draw_box0_add_x_b = {1'b0, i_arrayidx139_draw_box0_trunc_sel_x_b};
    assign i_arrayidx139_draw_box0_add_x_o = $unsigned(i_arrayidx139_draw_box0_add_x_a) + $unsigned(i_arrayidx139_draw_box0_add_x_b);
    assign i_arrayidx139_draw_box0_add_x_q = i_arrayidx139_draw_box0_add_x_o[64:0];

    // i_arrayidx139_draw_box0_dupName_0_trunc_sel_x(BITSELECT,357)@286
    assign i_arrayidx139_draw_box0_dupName_0_trunc_sel_x_b = i_arrayidx139_draw_box0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_37_draw_box78(BLACKBOX,88)@286
    // in in_i_stall@20000000
    // out out_lsu_memdep_37_o_active@20000000
    // out out_memdep_37_draw_box_avm_address@20000000
    // out out_memdep_37_draw_box_avm_burstcount@20000000
    // out out_memdep_37_draw_box_avm_byteenable@20000000
    // out out_memdep_37_draw_box_avm_enable@20000000
    // out out_memdep_37_draw_box_avm_read@20000000
    // out out_memdep_37_draw_box_avm_write@20000000
    // out out_memdep_37_draw_box_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@317
    // out out_o_writeack@317
    draw_box_i_llvm_fpga_mem_memdep_37_0 thei_llvm_fpga_mem_memdep_37_draw_box78 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx139_draw_box0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_draw_box_39_draw_box74_q),
        .in_i_predicate(bubble_select_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_37_draw_box78_backStall),
        .in_i_valid(SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_b),
        .in_memdep_37_draw_box_avm_readdata(in_memdep_37_draw_box_avm_readdata),
        .in_memdep_37_draw_box_avm_readdatavalid(in_memdep_37_draw_box_avm_readdatavalid),
        .in_memdep_37_draw_box_avm_waitrequest(in_memdep_37_draw_box_avm_waitrequest),
        .in_memdep_37_draw_box_avm_writeack(in_memdep_37_draw_box_avm_writeack),
        .out_lsu_memdep_37_o_active(i_llvm_fpga_mem_memdep_37_draw_box78_out_lsu_memdep_37_o_active),
        .out_memdep_37_draw_box_avm_address(i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_address),
        .out_memdep_37_draw_box_avm_burstcount(i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_burstcount),
        .out_memdep_37_draw_box_avm_byteenable(i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_byteenable),
        .out_memdep_37_draw_box_avm_enable(i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_enable),
        .out_memdep_37_draw_box_avm_read(i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_read),
        .out_memdep_37_draw_box_avm_write(i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_write),
        .out_memdep_37_draw_box_avm_writedata(i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_37_draw_box78_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_37_draw_box78_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_37_draw_box78_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18(STALLENABLE,1570)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_backStall = i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75(BLACKBOX,59)@286
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_f32_g11265_0 thei_llvm_fpga_ffwd_dest_f32_g11265_draw_box75 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17(STALLENABLE,1568)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_backStall = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69(BLACKBOX,81)@286
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_0 thei_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_V0),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0(STALLENABLE,1258)
    // Valid signal propagation
    assign SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_V0 = SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_s_tv_0 = SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_backStall & SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_backEN = ~ (SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_v_s_0 = SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_mul5697_draw_box66_V0;
    // Backward Stall generation
    assign SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_backStall = ~ (SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_R_v_0 <= SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_R_v_0 & SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_R_v_0 <= SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28(BITJOIN,818)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_q = i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28(BITSELECT,819)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_q[0:0]);

    // i_reduction_draw_box_37_draw_box72(LOGICAL,135)@193
    assign i_reduction_draw_box_37_draw_box72_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_b | i_reduction_draw_box_36_draw_box71_q;

    // i_reduction_draw_box_38_draw_box73(LOGICAL,136)@193 + 1
    assign i_reduction_draw_box_38_draw_box73_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_b | i_reduction_draw_box_37_draw_box72_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_draw_box_38_draw_box73_delay ( .xin(i_reduction_draw_box_38_draw_box73_qi), .xout(i_reduction_draw_box_38_draw_box73_q), .ena(SE_i_reduction_draw_box_38_draw_box73_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo(STALLFIFO,646)
    assign redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_in = SE_i_reduction_draw_box_38_draw_box73_V0;
    assign redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_in = SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_backStall;
    assign redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_data_in = i_reduction_draw_box_38_draw_box73_q;
    assign redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_in_bitsignaltemp = redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_in[0];
    assign redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_in_bitsignaltemp = redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_in[0];
    assign redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_out[0] = redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_out_bitsignaltemp;
    assign redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_out[0] = redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(93),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist16_i_reduction_draw_box_38_draw_box73_q_93_fifo (
        .valid_in(redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_draw_box_38_draw_box73_q),
        .valid_out(redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4(STALLENABLE,1312)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_V0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_s_tv_0 = SE_i_first_cleanup_xor103_or_draw_box77_backStall & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backEN = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_v_s_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backEN & SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_V;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backStall = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_R_v_0 & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19(STALLENABLE,1572)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_backStall = i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76(BLACKBOX,65)@188
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i1_cmp9410286_0 thei_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_V0),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76(STALLENABLE,988)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_backStall = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_valid_out;

    // SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0(STALLENABLE,1308)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_V0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_s_tv_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_backStall & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_backEN = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_v_s_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_V0;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_backStall = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_R_v_0 & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_v_s_0;
            end

        end
    end

    // SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1(STALLENABLE,1309)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_V0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_s_tv_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_backStall & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_backEN = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_v_s_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_backEN & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_V0;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_backStall = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_R_v_0 & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_v_s_0;
            end

        end
    end

    // SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2(STALLENABLE,1310)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_V0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_s_tv_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_backStall & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_backEN = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_v_s_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_backEN & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_V0;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_backStall = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_R_v_0 & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76(BITJOIN,721)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_q = i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76(BITSELECT,722)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_q[0:0]);

    // redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0(REG,676)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_b);
        end
    end

    // redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1(REG,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_q <= $unsigned(redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_0_q);
        end
    end

    // redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2(REG,678)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_q <= $unsigned(redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_1_q);
        end
    end

    // redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3(REG,679)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_q <= $unsigned(redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_q);
        end
    end

    // SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3(STALLENABLE,1311)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_V0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_s_tv_0 = SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backStall & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_backEN = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_v_s_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_backEN & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_2_V0;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_backStall = ~ (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_R_v_0 & SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4(STALLREG,1742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid <= 1'b0;
            SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid <= SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backStall & (SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid | SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_i_valid);

            if (SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_data0 <= $unsigned(redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_i_valid = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backStall = SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid | ~ (SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_i_valid);

    // Valid
    assign SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_V = SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid : SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_i_valid;

    assign SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_D0 = SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_r_data0 : redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_3_q;

    // redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4(REG,680)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_q <= $unsigned(SR_SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_D0);
        end
    end

    // i_first_cleanup_xor103_or_draw_box77(LOGICAL,36)@193 + 1
    assign i_first_cleanup_xor103_or_draw_box77_qi = redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_q | i_xor_draw_box2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor103_or_draw_box77_delay ( .xin(i_first_cleanup_xor103_or_draw_box77_qi), .xout(i_first_cleanup_xor103_or_draw_box77_q), .ena(SE_i_first_cleanup_xor103_or_draw_box77_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_first_cleanup_xor103_or_draw_box77(STALLENABLE,963)
    // Valid signal propagation
    assign SE_i_first_cleanup_xor103_or_draw_box77_V0 = SE_i_first_cleanup_xor103_or_draw_box77_R_v_0;
    // Stall signal propagation
    assign SE_i_first_cleanup_xor103_or_draw_box77_s_tv_0 = redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_out & SE_i_first_cleanup_xor103_or_draw_box77_R_v_0;
    // Backward Enable generation
    assign SE_i_first_cleanup_xor103_or_draw_box77_backEN = ~ (SE_i_first_cleanup_xor103_or_draw_box77_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_first_cleanup_xor103_or_draw_box77_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V5 & SE_i_first_cleanup_xor103_or_draw_box77_backEN;
    assign SE_i_first_cleanup_xor103_or_draw_box77_v_s_0 = SE_redist30_i_llvm_fpga_ffwd_dest_i1_cmp9410286_draw_box76_out_dest_data_out_14_0_5_4_V0 & SE_i_first_cleanup_xor103_or_draw_box77_and0;
    // Backward Stall generation
    assign SE_i_first_cleanup_xor103_or_draw_box77_backStall = ~ (SE_i_first_cleanup_xor103_or_draw_box77_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_first_cleanup_xor103_or_draw_box77_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_first_cleanup_xor103_or_draw_box77_backEN == 1'b0)
            begin
                SE_i_first_cleanup_xor103_or_draw_box77_R_v_0 <= SE_i_first_cleanup_xor103_or_draw_box77_R_v_0 & SE_i_first_cleanup_xor103_or_draw_box77_s_tv_0;
            end
            else
            begin
                SE_i_first_cleanup_xor103_or_draw_box77_R_v_0 <= SE_i_first_cleanup_xor103_or_draw_box77_v_s_0;
            end

        end
    end

    // redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo(STALLFIFO,693)
    assign redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_in = SE_i_first_cleanup_xor103_or_draw_box77_V0;
    assign redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_in = SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_backStall;
    assign redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_data_in = i_first_cleanup_xor103_or_draw_box77_q;
    assign redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_in_bitsignaltemp = redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_in[0];
    assign redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_in_bitsignaltemp = redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_in[0];
    assign redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_out[0] = redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_out_bitsignaltemp;
    assign redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_out[0] = redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(93),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo (
        .valid_in(redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor103_or_draw_box77_q),
        .valid_out(redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo(STALLENABLE,1328)
    // Valid signal propagation
    assign SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_V0 = SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_backStall = i_llvm_fpga_mem_memdep_37_draw_box78_out_o_stall | ~ (SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and0 = redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_valid_out;
    assign SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and1 = redist16_i_reduction_draw_box_38_draw_box73_q_93_fifo_valid_out & SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and0;
    assign SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and2 = SE_redist10_bgTrunc_i_add137_draw_box67_sel_x_b_1_0_V0 & SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and1;
    assign SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and3 = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract93_draw_box69_out_valid_out & SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and2;
    assign SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and4 = i_llvm_fpga_ffwd_dest_f32_g11265_draw_box75_out_valid_out & SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and3;
    assign SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_V1 & SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_and4;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65(STALLENABLE,1068)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_wireValid = i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65(BLACKBOX,105)@286
    // in in_stall_in@20000000
    // out out_data_out@287
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@287
    draw_box_i_llvm_fpga_push_i1_memdep_phi33_push22_0 thei_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_32_draw_box64_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_feedback_stall_out_22),
        .in_keep_going(bubble_select_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65(STALLENABLE,1067)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_backStall = i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_and0 = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_wireValid = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_and0;

    // SE_out_i_llvm_fpga_mem_memdep_32_draw_box64(STALLENABLE,1032)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_backStall) & SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireValid) | SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_consumed1 = (~ (SE_out_redist35_i_first_cleanup_xor103_or_draw_box77_q_93_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireValid) | SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_StallValid = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_backStall & SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_toReg0 = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_StallValid & SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_toReg1 = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_StallValid & SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_or0 = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_consumed1 & SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_backStall = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_V0 = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_V1 = SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_wireValid = i_llvm_fpga_mem_memdep_32_draw_box64_out_o_valid;

    // bubble_join_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo(BITJOIN,948)
    assign bubble_join_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_q = redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_data_out;

    // bubble_select_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo(BITSELECT,949)
    assign bubble_select_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_b = $unsigned(bubble_join_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_q[0:0]);

    // bubble_join_redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo(BITJOIN,912)
    assign bubble_join_redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_q = redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_data_out;

    // bubble_select_redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo(BITSELECT,913)
    assign bubble_select_redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_b = $unsigned(bubble_join_redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_28_draw_box48(BITJOIN,786)
    assign bubble_join_i_llvm_fpga_mem_memdep_28_draw_box48_q = i_llvm_fpga_mem_memdep_28_draw_box48_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_28_draw_box48(BITSELECT,787)
    assign bubble_select_i_llvm_fpga_mem_memdep_28_draw_box48_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_28_draw_box48_q[0:0]);

    // i_reduction_draw_box_35_draw_box60(LOGICAL,133)@255
    assign i_reduction_draw_box_35_draw_box60_q = bubble_select_i_llvm_fpga_mem_memdep_28_draw_box48_b | bubble_select_redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_b;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50(BITJOIN,743)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_q = i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_dest_data_out_20_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50(BITSELECT,744)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_q[31:0]);

    // i_add126_draw_box51(ADD,24)@254
    assign i_add126_draw_box51_a = {1'b0, bubble_select_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_b};
    assign i_add126_draw_box51_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_b};
    assign i_add126_draw_box51_o = $unsigned(i_add126_draw_box51_a) + $unsigned(i_add126_draw_box51_b);
    assign i_add126_draw_box51_q = i_add126_draw_box51_o[32:0];

    // bgTrunc_i_add126_draw_box51_sel_x(BITSELECT,285)@254
    assign bgTrunc_i_add126_draw_box51_sel_x_b = i_add126_draw_box51_q[31:0];

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12(STALLENABLE,1558)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_backStall = i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50(BLACKBOX,72)@254
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_mul5698_0 thei_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_V0),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_dest_data_out_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50(STALLENABLE,1002)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_backStall = SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_V;

    // SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50(STALLREG,1745)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_data0 <= bgTrunc_i_add126_draw_box51_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_and0 = i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_i_valid = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_V0 & SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_and0;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_V = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_i_valid;

    assign SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_r_data0 : bgTrunc_i_add126_draw_box51_sel_x_b;

    // redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0(REG,641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_q <= $unsigned(SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_D0);
        end
    end

    // i_idxprom127_draw_box52_sel_x(BITSELECT,385)@255
    assign i_idxprom127_draw_box52_sel_x_b = $unsigned({{32{redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_q[31]}}, redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_q[31:0]});

    // i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select(BITSELECT,585)@255
    assign i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_b = i_idxprom127_draw_box52_sel_x_b[63:54];
    assign i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_c = i_idxprom127_draw_box52_sel_x_b[53:36];
    assign i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_d = i_idxprom127_draw_box52_sel_x_b[35:18];
    assign i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_e = i_idxprom127_draw_box52_sel_x_b[17:0];

    // i_arrayidx128_draw_box0_mult_x_im0_shift0(BITSHIFT,562)@255
    assign i_arrayidx128_draw_box0_mult_x_im0_shift0_qint = { i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx128_draw_box0_mult_x_im0_shift0_q = i_arrayidx128_draw_box0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx128_draw_box0_mult_x_sums_align_3(BITSHIFT,481)@255
    assign i_arrayidx128_draw_box0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx128_draw_box0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx128_draw_box0_mult_x_sums_align_3_q = i_arrayidx128_draw_box0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx128_draw_box0_mult_x_im6_shift0(BITSHIFT,564)@255
    assign i_arrayidx128_draw_box0_mult_x_im6_shift0_qint = { i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx128_draw_box0_mult_x_im6_shift0_q = i_arrayidx128_draw_box0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx128_draw_box0_mult_x_sums_align_2(BITSHIFT,480)@255
    assign i_arrayidx128_draw_box0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx128_draw_box0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx128_draw_box0_mult_x_sums_align_2_q = i_arrayidx128_draw_box0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx128_draw_box0_mult_x_sums_join_4(BITJOIN,482)@255
    assign i_arrayidx128_draw_box0_mult_x_sums_join_4_q = {i_arrayidx128_draw_box0_mult_x_sums_align_3_q, i_arrayidx128_draw_box0_mult_x_sums_align_2_q};

    // i_arrayidx128_draw_box0_mult_x_im3_shift0(BITSHIFT,563)@255
    assign i_arrayidx128_draw_box0_mult_x_im3_shift0_qint = { i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx128_draw_box0_mult_x_im3_shift0_q = i_arrayidx128_draw_box0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx128_draw_box0_mult_x_sums_align_0(BITSHIFT,478)@255
    assign i_arrayidx128_draw_box0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx128_draw_box0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx128_draw_box0_mult_x_sums_align_0_q = i_arrayidx128_draw_box0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx128_draw_box0_mult_x_im9_shift0(BITSHIFT,565)@255
    assign i_arrayidx128_draw_box0_mult_x_im9_shift0_qint = { i_arrayidx128_draw_box0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx128_draw_box0_mult_x_im9_shift0_q = i_arrayidx128_draw_box0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx128_draw_box0_mult_x_sums_join_1(BITJOIN,479)@255
    assign i_arrayidx128_draw_box0_mult_x_sums_join_1_q = {i_arrayidx128_draw_box0_mult_x_sums_align_0_q, {1'b0, i_arrayidx128_draw_box0_mult_x_im9_shift0_q}};

    // i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0(ADD,483)@255
    assign i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx128_draw_box0_mult_x_sums_join_1_q};
    assign i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx128_draw_box0_mult_x_sums_join_4_q};
    assign i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_q = i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx128_draw_box0_mult_extender_x(BITJOIN,344)@255
    assign i_arrayidx128_draw_box0_mult_extender_x_q = {i_arrayidx106_draw_box0_mult_multconst_x_q, i_arrayidx128_draw_box0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx128_draw_box0_trunc_sel_x(BITSELECT,346)@255
    assign i_arrayidx128_draw_box0_trunc_sel_x_b = i_arrayidx128_draw_box0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53(BITJOIN,774)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_q = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53(BITSELECT,775)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_q[63:0]);

    // i_arrayidx128_draw_box0_add_x(ADD,338)@255
    assign i_arrayidx128_draw_box0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_b};
    assign i_arrayidx128_draw_box0_add_x_b = {1'b0, i_arrayidx128_draw_box0_trunc_sel_x_b};
    assign i_arrayidx128_draw_box0_add_x_o = $unsigned(i_arrayidx128_draw_box0_add_x_a) + $unsigned(i_arrayidx128_draw_box0_add_x_b);
    assign i_arrayidx128_draw_box0_add_x_q = i_arrayidx128_draw_box0_add_x_o[64:0];

    // i_arrayidx128_draw_box0_dupName_0_trunc_sel_x(BITSELECT,347)@255
    assign i_arrayidx128_draw_box0_dupName_0_trunc_sel_x_b = i_arrayidx128_draw_box0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_32_draw_box64(BLACKBOX,87)@255
    // in in_i_stall@20000000
    // out out_lsu_memdep_32_o_active@20000000
    // out out_memdep_32_draw_box_avm_address@20000000
    // out out_memdep_32_draw_box_avm_burstcount@20000000
    // out out_memdep_32_draw_box_avm_byteenable@20000000
    // out out_memdep_32_draw_box_avm_enable@20000000
    // out out_memdep_32_draw_box_avm_read@20000000
    // out out_memdep_32_draw_box_avm_write@20000000
    // out out_memdep_32_draw_box_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@286
    // out out_o_writeack@286
    draw_box_i_llvm_fpga_mem_memdep_32_0 thei_llvm_fpga_mem_memdep_32_draw_box64 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx128_draw_box0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_draw_box_35_draw_box60_q),
        .in_i_predicate(bubble_select_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_32_draw_box64_backStall),
        .in_i_valid(SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_b),
        .in_memdep_32_draw_box_avm_readdata(in_memdep_32_draw_box_avm_readdata),
        .in_memdep_32_draw_box_avm_readdatavalid(in_memdep_32_draw_box_avm_readdatavalid),
        .in_memdep_32_draw_box_avm_waitrequest(in_memdep_32_draw_box_avm_waitrequest),
        .in_memdep_32_draw_box_avm_writeack(in_memdep_32_draw_box_avm_writeack),
        .out_lsu_memdep_32_o_active(i_llvm_fpga_mem_memdep_32_draw_box64_out_lsu_memdep_32_o_active),
        .out_memdep_32_draw_box_avm_address(i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_address),
        .out_memdep_32_draw_box_avm_burstcount(i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_burstcount),
        .out_memdep_32_draw_box_avm_byteenable(i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_byteenable),
        .out_memdep_32_draw_box_avm_enable(i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_enable),
        .out_memdep_32_draw_box_avm_read(i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_read),
        .out_memdep_32_draw_box_avm_write(i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_write),
        .out_memdep_32_draw_box_avm_writedata(i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_32_draw_box64_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_32_draw_box64_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_32_draw_box64_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14(STALLENABLE,1562)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_backStall = i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61(BLACKBOX,60)@255
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_f32_g11266_0 thei_llvm_fpga_ffwd_dest_f32_g11266_draw_box61 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13(STALLENABLE,1560)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_backStall = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53(BLACKBOX,82)@255
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_0 thei_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_V0),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0(STALLENABLE,1259)
    // Valid signal propagation
    assign SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_V0 = SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_s_tv_0 = SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_backStall & SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_backEN = ~ (SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_v_s_0 = SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_V0;
    // Backward Stall generation
    assign SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_backStall = ~ (SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_R_v_0 <= SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_R_v_0 & SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_R_v_0 <= SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_reduction_draw_box_32_draw_box57(LOGICAL,130)@193
    assign i_reduction_draw_box_32_draw_box57_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_b;

    // i_reduction_draw_box_33_draw_box58(LOGICAL,131)@193
    assign i_reduction_draw_box_33_draw_box58_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_b | i_reduction_draw_box_32_draw_box57_q;

    // i_reduction_draw_box_34_draw_box59(LOGICAL,132)@193 + 1
    assign i_reduction_draw_box_34_draw_box59_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_b | i_reduction_draw_box_33_draw_box58_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_draw_box_34_draw_box59_delay ( .xin(i_reduction_draw_box_34_draw_box59_qi), .xout(i_reduction_draw_box_34_draw_box59_q), .ena(SE_i_reduction_draw_box_34_draw_box59_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo(STALLFIFO,647)
    assign redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_in = SE_i_reduction_draw_box_34_draw_box59_V0;
    assign redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_in = SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_backStall;
    assign redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_data_in = i_reduction_draw_box_34_draw_box59_q;
    assign redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_in_bitsignaltemp = redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_in[0];
    assign redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_in_bitsignaltemp = redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_in[0];
    assign redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_out[0] = redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_out_bitsignaltemp;
    assign redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_out[0] = redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(62),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_reduction_draw_box_34_draw_box59_q_62_fifo (
        .valid_in(redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_draw_box_34_draw_box59_q),
        .valid_out(redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4(STALLENABLE,1307)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_V0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_s_tv_0 = SE_i_first_cleanup_xor102_or_draw_box63_backStall & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backEN = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_v_s_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backEN & SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_V;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backStall = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_R_v_0 & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15(STALLENABLE,1564)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_backStall = i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62(BLACKBOX,66)@188
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i1_cmp9410287_0 thei_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_V0),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62(STALLENABLE,990)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_backStall = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_valid_out;

    // SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0(STALLENABLE,1303)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_V0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_s_tv_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_backStall & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_backEN = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_v_s_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_V0;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_backStall = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_R_v_0 & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_v_s_0;
            end

        end
    end

    // SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1(STALLENABLE,1304)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_V0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_s_tv_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_backStall & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_backEN = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_v_s_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_backEN & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_V0;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_backStall = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_R_v_0 & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_v_s_0;
            end

        end
    end

    // SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2(STALLENABLE,1305)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_V0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_s_tv_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_backStall & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_backEN = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_v_s_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_backEN & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_V0;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_backStall = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_R_v_0 & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62(BITJOIN,724)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_q = i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62(BITSELECT,725)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_q[0:0]);

    // redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0(REG,671)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_b);
        end
    end

    // redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1(REG,672)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_q <= $unsigned(redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_0_q);
        end
    end

    // redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2(REG,673)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_q <= $unsigned(redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_1_q);
        end
    end

    // redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3(REG,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_q <= $unsigned(redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_q);
        end
    end

    // SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3(STALLENABLE,1306)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_V0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_s_tv_0 = SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backStall & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_backEN = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_v_s_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_backEN & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_2_V0;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_backStall = ~ (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_R_v_0 & SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_R_v_0 <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4(STALLREG,1744)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid <= 1'b0;
            SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid <= SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backStall & (SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid | SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_i_valid);

            if (SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_data0 <= $unsigned(redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_i_valid = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backStall = SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid | ~ (SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_i_valid);

    // Valid
    assign SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_V = SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid : SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_i_valid;

    assign SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_D0 = SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_valid == 1'b1 ? SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_r_data0 : redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_3_q;

    // redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4(REG,675)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_q <= $unsigned(SR_SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_D0);
        end
    end

    // i_first_cleanup_xor102_or_draw_box63(LOGICAL,35)@193 + 1
    assign i_first_cleanup_xor102_or_draw_box63_qi = redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_q | i_xor_draw_box2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor102_or_draw_box63_delay ( .xin(i_first_cleanup_xor102_or_draw_box63_qi), .xout(i_first_cleanup_xor102_or_draw_box63_q), .ena(SE_i_first_cleanup_xor102_or_draw_box63_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_first_cleanup_xor102_or_draw_box63(STALLENABLE,962)
    // Valid signal propagation
    assign SE_i_first_cleanup_xor102_or_draw_box63_V0 = SE_i_first_cleanup_xor102_or_draw_box63_R_v_0;
    // Stall signal propagation
    assign SE_i_first_cleanup_xor102_or_draw_box63_s_tv_0 = redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_out & SE_i_first_cleanup_xor102_or_draw_box63_R_v_0;
    // Backward Enable generation
    assign SE_i_first_cleanup_xor102_or_draw_box63_backEN = ~ (SE_i_first_cleanup_xor102_or_draw_box63_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_first_cleanup_xor102_or_draw_box63_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V4 & SE_i_first_cleanup_xor102_or_draw_box63_backEN;
    assign SE_i_first_cleanup_xor102_or_draw_box63_v_s_0 = SE_redist29_i_llvm_fpga_ffwd_dest_i1_cmp9410287_draw_box62_out_dest_data_out_14_0_5_4_V0 & SE_i_first_cleanup_xor102_or_draw_box63_and0;
    // Backward Stall generation
    assign SE_i_first_cleanup_xor102_or_draw_box63_backStall = ~ (SE_i_first_cleanup_xor102_or_draw_box63_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_first_cleanup_xor102_or_draw_box63_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_first_cleanup_xor102_or_draw_box63_backEN == 1'b0)
            begin
                SE_i_first_cleanup_xor102_or_draw_box63_R_v_0 <= SE_i_first_cleanup_xor102_or_draw_box63_R_v_0 & SE_i_first_cleanup_xor102_or_draw_box63_s_tv_0;
            end
            else
            begin
                SE_i_first_cleanup_xor102_or_draw_box63_R_v_0 <= SE_i_first_cleanup_xor102_or_draw_box63_v_s_0;
            end

        end
    end

    // redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo(STALLFIFO,694)
    assign redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_in = SE_i_first_cleanup_xor102_or_draw_box63_V0;
    assign redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_in = SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_backStall;
    assign redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_data_in = i_first_cleanup_xor102_or_draw_box63_q;
    assign redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_in_bitsignaltemp = redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_in[0];
    assign redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_in_bitsignaltemp = redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_in[0];
    assign redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_out[0] = redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_out_bitsignaltemp;
    assign redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_out[0] = redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(62),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo (
        .valid_in(redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor102_or_draw_box63_q),
        .valid_out(redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo(STALLENABLE,1330)
    // Valid signal propagation
    assign SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_V0 = SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_backStall = i_llvm_fpga_mem_memdep_32_draw_box64_out_o_stall | ~ (SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and0 = redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_valid_out;
    assign SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and1 = redist17_i_reduction_draw_box_34_draw_box59_q_62_fifo_valid_out & SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and0;
    assign SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and2 = SE_redist11_bgTrunc_i_add126_draw_box51_sel_x_b_1_0_V0 & SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and1;
    assign SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and3 = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract94_draw_box53_out_valid_out & SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and2;
    assign SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and4 = i_llvm_fpga_ffwd_dest_f32_g11266_draw_box61_out_valid_out & SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and3;
    assign SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_V1 & SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_and4;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49(STALLENABLE,1066)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_wireValid = i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49(BLACKBOX,104)@255
    // in in_stall_in@20000000
    // out out_data_out@256
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@256
    draw_box_i_llvm_fpga_push_i1_memdep_phi29_push21_0 thei_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_28_draw_box48_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49(STALLENABLE,1065)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_backStall = i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_and0 = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_wireValid = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_and0;

    // SE_out_i_llvm_fpga_mem_memdep_28_draw_box48(STALLENABLE,1030)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_backStall) & SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireValid) | SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_consumed1 = (~ (SE_out_redist36_i_first_cleanup_xor102_or_draw_box63_q_62_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireValid) | SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_StallValid = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_backStall & SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_toReg0 = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_StallValid & SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_toReg1 = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_StallValid & SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_or0 = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_consumed1 & SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_backStall = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_V0 = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_V1 = SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_wireValid = i_llvm_fpga_mem_memdep_28_draw_box48_out_o_valid;

    // bubble_join_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo(BITJOIN,951)
    assign bubble_join_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_q = redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_data_out;

    // bubble_select_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo(BITSELECT,952)
    assign bubble_select_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_b = $unsigned(bubble_join_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_q[0:0]);

    // bubble_join_redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo(BITJOIN,915)
    assign bubble_join_redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_q = redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_data_out;

    // bubble_select_redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo(BITSELECT,916)
    assign bubble_select_redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_b = $unsigned(bubble_join_redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_q[0:0]);

    // i_reduction_draw_box_31_draw_box44(LOGICAL,129)@224
    assign i_reduction_draw_box_31_draw_box44_q = bubble_select_i_llvm_fpga_mem_memdep_26_draw_box35_b | bubble_select_redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_b;

    // bubble_join_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo(BITJOIN,897)
    assign bubble_join_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_q = redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_data_out;

    // bubble_select_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo(BITSELECT,898)
    assign bubble_select_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_b = $unsigned(bubble_join_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_q[31:0]);

    // i_idxprom116_draw_box38_sel_x(BITSELECT,384)@224
    assign i_idxprom116_draw_box38_sel_x_b = $unsigned({{32{bubble_select_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_b[31]}}, bubble_select_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_b[31:0]});

    // i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select(BITSELECT,584)@224
    assign i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_b = i_idxprom116_draw_box38_sel_x_b[63:54];
    assign i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_c = i_idxprom116_draw_box38_sel_x_b[53:36];
    assign i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_d = i_idxprom116_draw_box38_sel_x_b[35:18];
    assign i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_e = i_idxprom116_draw_box38_sel_x_b[17:0];

    // i_arrayidx117_draw_box0_mult_x_im0_shift0(BITSHIFT,558)@224
    assign i_arrayidx117_draw_box0_mult_x_im0_shift0_qint = { i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx117_draw_box0_mult_x_im0_shift0_q = i_arrayidx117_draw_box0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx117_draw_box0_mult_x_sums_align_3(BITSHIFT,463)@224
    assign i_arrayidx117_draw_box0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx117_draw_box0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx117_draw_box0_mult_x_sums_align_3_q = i_arrayidx117_draw_box0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx117_draw_box0_mult_x_im6_shift0(BITSHIFT,560)@224
    assign i_arrayidx117_draw_box0_mult_x_im6_shift0_qint = { i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx117_draw_box0_mult_x_im6_shift0_q = i_arrayidx117_draw_box0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx117_draw_box0_mult_x_sums_align_2(BITSHIFT,462)@224
    assign i_arrayidx117_draw_box0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx117_draw_box0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx117_draw_box0_mult_x_sums_align_2_q = i_arrayidx117_draw_box0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx117_draw_box0_mult_x_sums_join_4(BITJOIN,464)@224
    assign i_arrayidx117_draw_box0_mult_x_sums_join_4_q = {i_arrayidx117_draw_box0_mult_x_sums_align_3_q, i_arrayidx117_draw_box0_mult_x_sums_align_2_q};

    // i_arrayidx117_draw_box0_mult_x_im3_shift0(BITSHIFT,559)@224
    assign i_arrayidx117_draw_box0_mult_x_im3_shift0_qint = { i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx117_draw_box0_mult_x_im3_shift0_q = i_arrayidx117_draw_box0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx117_draw_box0_mult_x_sums_align_0(BITSHIFT,460)@224
    assign i_arrayidx117_draw_box0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx117_draw_box0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx117_draw_box0_mult_x_sums_align_0_q = i_arrayidx117_draw_box0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx117_draw_box0_mult_x_im9_shift0(BITSHIFT,561)@224
    assign i_arrayidx117_draw_box0_mult_x_im9_shift0_qint = { i_arrayidx117_draw_box0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx117_draw_box0_mult_x_im9_shift0_q = i_arrayidx117_draw_box0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx117_draw_box0_mult_x_sums_join_1(BITJOIN,461)@224
    assign i_arrayidx117_draw_box0_mult_x_sums_join_1_q = {i_arrayidx117_draw_box0_mult_x_sums_align_0_q, {1'b0, i_arrayidx117_draw_box0_mult_x_im9_shift0_q}};

    // i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0(ADD,465)@224
    assign i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx117_draw_box0_mult_x_sums_join_1_q};
    assign i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx117_draw_box0_mult_x_sums_join_4_q};
    assign i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_q = i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx117_draw_box0_mult_extender_x(BITJOIN,334)@224
    assign i_arrayidx117_draw_box0_mult_extender_x_q = {i_arrayidx106_draw_box0_mult_multconst_x_q, i_arrayidx117_draw_box0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx117_draw_box0_trunc_sel_x(BITSELECT,336)@224
    assign i_arrayidx117_draw_box0_trunc_sel_x_b = i_arrayidx117_draw_box0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39(BITJOIN,777)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_q = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39(BITSELECT,778)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_q[63:0]);

    // i_arrayidx117_draw_box0_add_x(ADD,328)@224
    assign i_arrayidx117_draw_box0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_b};
    assign i_arrayidx117_draw_box0_add_x_b = {1'b0, i_arrayidx117_draw_box0_trunc_sel_x_b};
    assign i_arrayidx117_draw_box0_add_x_o = $unsigned(i_arrayidx117_draw_box0_add_x_a) + $unsigned(i_arrayidx117_draw_box0_add_x_b);
    assign i_arrayidx117_draw_box0_add_x_q = i_arrayidx117_draw_box0_add_x_o[64:0];

    // i_arrayidx117_draw_box0_dupName_0_trunc_sel_x(BITSELECT,337)@224
    assign i_arrayidx117_draw_box0_dupName_0_trunc_sel_x_b = i_arrayidx117_draw_box0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_28_draw_box48(BLACKBOX,86)@224
    // in in_i_stall@20000000
    // out out_lsu_memdep_28_o_active@20000000
    // out out_memdep_28_draw_box_avm_address@20000000
    // out out_memdep_28_draw_box_avm_burstcount@20000000
    // out out_memdep_28_draw_box_avm_byteenable@20000000
    // out out_memdep_28_draw_box_avm_enable@20000000
    // out out_memdep_28_draw_box_avm_read@20000000
    // out out_memdep_28_draw_box_avm_write@20000000
    // out out_memdep_28_draw_box_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@255
    // out out_o_writeack@255
    draw_box_i_llvm_fpga_mem_memdep_28_0 thei_llvm_fpga_mem_memdep_28_draw_box48 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx117_draw_box0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_draw_box_31_draw_box44_q),
        .in_i_predicate(bubble_select_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_28_draw_box48_backStall),
        .in_i_valid(SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_b),
        .in_memdep_28_draw_box_avm_readdata(in_memdep_28_draw_box_avm_readdata),
        .in_memdep_28_draw_box_avm_readdatavalid(in_memdep_28_draw_box_avm_readdatavalid),
        .in_memdep_28_draw_box_avm_waitrequest(in_memdep_28_draw_box_avm_waitrequest),
        .in_memdep_28_draw_box_avm_writeack(in_memdep_28_draw_box_avm_writeack),
        .out_lsu_memdep_28_o_active(i_llvm_fpga_mem_memdep_28_draw_box48_out_lsu_memdep_28_o_active),
        .out_memdep_28_draw_box_avm_address(i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_address),
        .out_memdep_28_draw_box_avm_burstcount(i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_burstcount),
        .out_memdep_28_draw_box_avm_byteenable(i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_byteenable),
        .out_memdep_28_draw_box_avm_enable(i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_enable),
        .out_memdep_28_draw_box_avm_read(i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_read),
        .out_memdep_28_draw_box_avm_write(i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_write),
        .out_memdep_28_draw_box_avm_writedata(i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_28_draw_box48_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_28_draw_box48_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_28_draw_box48_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10(STALLENABLE,1554)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_backStall = i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45(BLACKBOX,61)@224
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_f32_r11161_0 thei_llvm_fpga_ffwd_dest_f32_r11161_draw_box45 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9(STALLENABLE,1552)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_backStall = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39(BLACKBOX,83)@224
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_0 thei_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_V0),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_draw_box_29_draw_box42(LOGICAL,127)@193
    assign i_reduction_draw_box_29_draw_box42_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_b | i_reduction_draw_box_28_draw_box41_q;

    // i_reduction_draw_box_30_draw_box43(LOGICAL,128)@193 + 1
    assign i_reduction_draw_box_30_draw_box43_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_b | i_reduction_draw_box_29_draw_box42_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_draw_box_30_draw_box43_delay ( .xin(i_reduction_draw_box_30_draw_box43_qi), .xout(i_reduction_draw_box_30_draw_box43_q), .ena(SE_i_reduction_draw_box_30_draw_box43_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo(STALLFIFO,648)
    assign redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_in = SE_i_reduction_draw_box_30_draw_box43_V0;
    assign redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_in = SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_backStall;
    assign redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_data_in = i_reduction_draw_box_30_draw_box43_q;
    assign redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_in_bitsignaltemp = redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_in[0];
    assign redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_in_bitsignaltemp = redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_in[0];
    assign redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_out[0] = redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_out_bitsignaltemp;
    assign redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_out[0] = redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_reduction_draw_box_30_draw_box43_q_31_fifo (
        .valid_in(redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_draw_box_30_draw_box43_q),
        .valid_out(redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11(STALLENABLE,1556)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_backStall = i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46(STALLENABLE,992)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_backStall = SE_i_first_cleanup_xor101_or_draw_box47_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46(BLACKBOX,67)@193
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i1_cmp9410288_0 thei_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_V0),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46(BITJOIN,727)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_q = i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46(BITSELECT,728)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_q[0:0]);

    // i_first_cleanup_xor101_or_draw_box47(LOGICAL,34)@193 + 1
    assign i_first_cleanup_xor101_or_draw_box47_qi = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_b | i_xor_draw_box2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor101_or_draw_box47_delay ( .xin(i_first_cleanup_xor101_or_draw_box47_qi), .xout(i_first_cleanup_xor101_or_draw_box47_q), .ena(SE_i_first_cleanup_xor101_or_draw_box47_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_first_cleanup_xor101_or_draw_box47(STALLENABLE,961)
    // Valid signal propagation
    assign SE_i_first_cleanup_xor101_or_draw_box47_V0 = SE_i_first_cleanup_xor101_or_draw_box47_R_v_0;
    // Stall signal propagation
    assign SE_i_first_cleanup_xor101_or_draw_box47_s_tv_0 = redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_out & SE_i_first_cleanup_xor101_or_draw_box47_R_v_0;
    // Backward Enable generation
    assign SE_i_first_cleanup_xor101_or_draw_box47_backEN = ~ (SE_i_first_cleanup_xor101_or_draw_box47_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_first_cleanup_xor101_or_draw_box47_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V3 & SE_i_first_cleanup_xor101_or_draw_box47_backEN;
    assign SE_i_first_cleanup_xor101_or_draw_box47_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp9410288_draw_box46_V0 & SE_i_first_cleanup_xor101_or_draw_box47_and0;
    // Backward Stall generation
    assign SE_i_first_cleanup_xor101_or_draw_box47_backStall = ~ (SE_i_first_cleanup_xor101_or_draw_box47_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_first_cleanup_xor101_or_draw_box47_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_first_cleanup_xor101_or_draw_box47_backEN == 1'b0)
            begin
                SE_i_first_cleanup_xor101_or_draw_box47_R_v_0 <= SE_i_first_cleanup_xor101_or_draw_box47_R_v_0 & SE_i_first_cleanup_xor101_or_draw_box47_s_tv_0;
            end
            else
            begin
                SE_i_first_cleanup_xor101_or_draw_box47_R_v_0 <= SE_i_first_cleanup_xor101_or_draw_box47_v_s_0;
            end

        end
    end

    // redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo(STALLFIFO,695)
    assign redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_in = SE_i_first_cleanup_xor101_or_draw_box47_V0;
    assign redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_in = SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_backStall;
    assign redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_data_in = i_first_cleanup_xor101_or_draw_box47_q;
    assign redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_in_bitsignaltemp = redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_in[0];
    assign redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_in_bitsignaltemp = redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_in[0];
    assign redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_out[0] = redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_out_bitsignaltemp;
    assign redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_out[0] = redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo (
        .valid_in(redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor101_or_draw_box47_q),
        .valid_out(redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo(STALLENABLE,1332)
    // Valid signal propagation
    assign SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_V0 = SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_backStall = i_llvm_fpga_mem_memdep_28_draw_box48_out_o_stall | ~ (SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and0 = redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_valid_out;
    assign SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and1 = redist18_i_reduction_draw_box_30_draw_box43_q_31_fifo_valid_out & SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and0;
    assign SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and2 = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract95_draw_box39_out_valid_out & SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and1;
    assign SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and3 = i_llvm_fpga_ffwd_dest_f32_r11161_draw_box45_out_valid_out & SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and2;
    assign SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and4 = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_V1 & SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and3;
    assign SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_V1 & SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_and4;

    // redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo(STALLFIFO,643)
    assign redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_in = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_V0;
    assign redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_in = SE_out_redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_backStall;
    assign redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_data_in = bubble_select_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_b;
    assign redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_in_bitsignaltemp = redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_in[0];
    assign redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_in_bitsignaltemp = redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_in[0];
    assign redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_out[0] = redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_out_bitsignaltemp;
    assign redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_out[0] = redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(62),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo (
        .valid_in(redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_b),
        .valid_out(redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo(STALLENABLE,1261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg0 <= '0;
            SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg0 <= SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_toReg0;
            // Successor 1
            SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg1 <= SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_consumed0 = (~ (redist13_bgTrunc_i_add110_draw_box37_sel_x_b_93_fifo_stall_out) & SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireValid) | SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg0;
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_consumed1 = (~ (SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_backStall) & SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireValid) | SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_StallValid = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_backStall & SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireValid;
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_toReg0 = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_StallValid & SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_consumed0;
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_toReg1 = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_StallValid & SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_or0 = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_consumed0;
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireStall = ~ (SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_consumed1 & SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_or0);
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_backStall = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_V0 = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireValid & ~ (SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg0);
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_V1 = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireValid & ~ (SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_wireValid = redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_out;

    // redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo(STALLFIFO,642)
    assign redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_V0;
    assign redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_in = SE_out_redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_backStall;
    assign redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_data_in = bgTrunc_i_add110_draw_box37_sel_x_b;
    assign redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_in_bitsignaltemp = redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_in[0];
    assign redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_in_bitsignaltemp = redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_in[0];
    assign redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_out[0] = redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_out[0] = redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo (
        .valid_in(redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(bgTrunc_i_add110_draw_box37_sel_x_b),
        .valid_out(redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8(STALLENABLE,1550)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_backStall = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36(BLACKBOX,77)@192
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_unnamed_39_draw_box0 thei_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_V0),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36(STALLENABLE,1012)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_backStall = redist12_bgTrunc_i_add110_draw_box37_sel_x_b_32_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_wireValid = SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_and0;

    // i_mul98_draw_box17_im0_cma(CHAINMULTADD,578)@188 + 3
    assign i_mul98_draw_box17_im0_cma_reset = ~ (resetn);
    assign i_mul98_draw_box17_im0_cma_ena0 = SE_i_mul98_draw_box17_im0_cma_backEN[0];
    assign i_mul98_draw_box17_im0_cma_ena1 = i_mul98_draw_box17_im0_cma_ena0;
    assign i_mul98_draw_box17_im0_cma_ena2 = i_mul98_draw_box17_im0_cma_ena0;

    assign i_mul98_draw_box17_im0_cma_a0 = SR_SE_i_mul98_draw_box17_im0_cma_D0;
    assign i_mul98_draw_box17_im0_cma_c0 = SR_SE_i_mul98_draw_box17_im0_cma_D2;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul98_draw_box17_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul98_draw_box17_im0_cma_ena2, i_mul98_draw_box17_im0_cma_ena1, i_mul98_draw_box17_im0_cma_ena0 }),
        .aclr({ i_mul98_draw_box17_im0_cma_reset, i_mul98_draw_box17_im0_cma_reset }),
        .ay(i_mul98_draw_box17_im0_cma_a0),
        .ax(i_mul98_draw_box17_im0_cma_c0),
        .resulta(i_mul98_draw_box17_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul98_draw_box17_im0_cma_delay ( .xin(i_mul98_draw_box17_im0_cma_s0), .xout(i_mul98_draw_box17_im0_cma_qq), .ena(SE_i_mul98_draw_box17_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul98_draw_box17_im0_cma_q = $unsigned(i_mul98_draw_box17_im0_cma_qq[27:0]);

    // bubble_join_i_mul98_draw_box17_im0_cma(BITJOIN,873)
    assign bubble_join_i_mul98_draw_box17_im0_cma_q = i_mul98_draw_box17_im0_cma_q;

    // bubble_out_i_mul98_draw_box17_im0_cma_data_reg(STALLFIFO,1732)
    assign bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_in = SE_i_mul98_draw_box17_im0_cma_V0;
    assign bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_backStall;
    assign bubble_out_i_mul98_draw_box17_im0_cma_data_reg_data_in = bubble_join_i_mul98_draw_box17_im0_cma_q;
    assign bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul98_draw_box17_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul98_draw_box17_im0_cma_q),
        .valid_out(bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul98_draw_box17_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul98_draw_box17_im8_cma(CHAINMULTADD,579)@188 + 3
    assign i_mul98_draw_box17_im8_cma_reset = ~ (resetn);
    assign i_mul98_draw_box17_im8_cma_ena0 = SE_i_mul98_draw_box17_im0_cma_backEN[0];
    assign i_mul98_draw_box17_im8_cma_ena1 = i_mul98_draw_box17_im8_cma_ena0;
    assign i_mul98_draw_box17_im8_cma_ena2 = i_mul98_draw_box17_im8_cma_ena0;

    assign i_mul98_draw_box17_im8_cma_a0 = SR_SE_i_mul98_draw_box17_im0_cma_D4;
    assign i_mul98_draw_box17_im8_cma_c0 = SR_SE_i_mul98_draw_box17_im0_cma_D6;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul98_draw_box17_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul98_draw_box17_im8_cma_ena2, i_mul98_draw_box17_im8_cma_ena1, i_mul98_draw_box17_im8_cma_ena0 }),
        .aclr({ i_mul98_draw_box17_im8_cma_reset, i_mul98_draw_box17_im8_cma_reset }),
        .ay(i_mul98_draw_box17_im8_cma_a0),
        .ax(i_mul98_draw_box17_im8_cma_c0),
        .resulta(i_mul98_draw_box17_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul98_draw_box17_im8_cma_delay ( .xin(i_mul98_draw_box17_im8_cma_s0), .xout(i_mul98_draw_box17_im8_cma_qq), .ena(SE_i_mul98_draw_box17_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul98_draw_box17_im8_cma_q = $unsigned(i_mul98_draw_box17_im8_cma_qq[35:0]);

    // bubble_join_i_mul98_draw_box17_im8_cma(BITJOIN,876)
    assign bubble_join_i_mul98_draw_box17_im8_cma_q = i_mul98_draw_box17_im8_cma_q;

    // bubble_out_i_mul98_draw_box17_im8_cma_data_reg(STALLFIFO,1733)
    assign bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_in = SE_i_mul98_draw_box17_im0_cma_V1;
    assign bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_backStall;
    assign bubble_out_i_mul98_draw_box17_im8_cma_data_reg_data_in = bubble_join_i_mul98_draw_box17_im8_cma_q;
    assign bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul98_draw_box17_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul98_draw_box17_im8_cma_q),
        .valid_out(bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul98_draw_box17_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul98_draw_box17_ma3_cma(CHAINMULTADD,580)@188 + 3
    assign i_mul98_draw_box17_ma3_cma_reset = ~ (resetn);
    assign i_mul98_draw_box17_ma3_cma_ena0 = SE_i_mul98_draw_box17_im0_cma_backEN[0];
    assign i_mul98_draw_box17_ma3_cma_ena1 = i_mul98_draw_box17_ma3_cma_ena0;
    assign i_mul98_draw_box17_ma3_cma_ena2 = i_mul98_draw_box17_ma3_cma_ena0;

    assign i_mul98_draw_box17_ma3_cma_a0 = SR_SE_i_mul98_draw_box17_im0_cma_D1;
    assign i_mul98_draw_box17_ma3_cma_c0 = SR_SE_i_mul98_draw_box17_im0_cma_D7;
    assign i_mul98_draw_box17_ma3_cma_a1 = SR_SE_i_mul98_draw_box17_im0_cma_D3;
    assign i_mul98_draw_box17_ma3_cma_c1 = SR_SE_i_mul98_draw_box17_im0_cma_D5;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul98_draw_box17_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul98_draw_box17_ma3_cma_ena2, i_mul98_draw_box17_ma3_cma_ena1, i_mul98_draw_box17_ma3_cma_ena0 }),
        .aclr({ i_mul98_draw_box17_ma3_cma_reset, i_mul98_draw_box17_ma3_cma_reset }),
        .ay(i_mul98_draw_box17_ma3_cma_a1),
        .by(i_mul98_draw_box17_ma3_cma_a0),
        .ax(i_mul98_draw_box17_ma3_cma_c1),
        .bx(i_mul98_draw_box17_ma3_cma_c0),
        .resulta(i_mul98_draw_box17_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul98_draw_box17_ma3_cma_delay ( .xin(i_mul98_draw_box17_ma3_cma_s0), .xout(i_mul98_draw_box17_ma3_cma_qq), .ena(SE_i_mul98_draw_box17_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul98_draw_box17_ma3_cma_q = $unsigned(i_mul98_draw_box17_ma3_cma_qq[32:0]);

    // bubble_join_i_mul98_draw_box17_ma3_cma(BITJOIN,879)
    assign bubble_join_i_mul98_draw_box17_ma3_cma_q = i_mul98_draw_box17_ma3_cma_q;

    // bubble_out_i_mul98_draw_box17_ma3_cma_data_reg(STALLFIFO,1734)
    assign bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_in = SE_i_mul98_draw_box17_im0_cma_V2;
    assign bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_backStall;
    assign bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_data_in = bubble_join_i_mul98_draw_box17_ma3_cma_q;
    assign bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul98_draw_box17_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul98_draw_box17_ma3_cma_q),
        .valid_out(bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data(STALLENABLE,1600)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_V0 = SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_backStall = SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backStall | ~ (SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_and0 = bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_valid_out;
    assign SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_and1 = bubble_out_i_mul98_draw_box17_im8_cma_data_reg_valid_out & SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_and0;
    assign SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_wireValid = bubble_out_i_mul98_draw_box17_im0_cma_data_reg_valid_out & SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_and1;

    // SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0(STALLENABLE,1250)
    // Valid signal propagation
    assign SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_V0 = SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_0;
    assign SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_V1 = SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box39_draw_box36_backStall & SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_0;
    assign SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_backStall & SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_or0 = SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_s_tv_0;
    assign SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backEN = ~ (SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_s_tv_1 | SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_v_s_0 = SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backEN & SE_out_bubble_out_i_mul98_draw_box17_ma3_cma_data_V0;
    // Backward Stall generation
    assign SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backStall = ~ (SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_0 <= SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_0 & SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_0 <= SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_1 <= SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_1 & SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_R_v_1 <= SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul98_draw_box17_ma3_cma(BITSELECT,880)
    assign bubble_select_i_mul98_draw_box17_ma3_cma_b = $unsigned(bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_data_out[32:0]);

    // i_mul98_draw_box17_sums_align_1(BITSHIFT,427)@191
    assign i_mul98_draw_box17_sums_align_1_qint = { bubble_select_i_mul98_draw_box17_ma3_cma_b, 18'b000000000000000000 };
    assign i_mul98_draw_box17_sums_align_1_q = i_mul98_draw_box17_sums_align_1_qint[50:0];

    // bubble_select_i_mul98_draw_box17_im0_cma(BITSELECT,874)
    assign bubble_select_i_mul98_draw_box17_im0_cma_b = $unsigned(bubble_out_i_mul98_draw_box17_im0_cma_data_reg_data_out[27:0]);

    // bubble_select_i_mul98_draw_box17_im8_cma(BITSELECT,877)
    assign bubble_select_i_mul98_draw_box17_im8_cma_b = $unsigned(bubble_out_i_mul98_draw_box17_im8_cma_data_reg_data_out[35:0]);

    // i_mul98_draw_box17_sums_join_0(BITJOIN,426)@191
    assign i_mul98_draw_box17_sums_join_0_q = {bubble_select_i_mul98_draw_box17_im0_cma_b, bubble_select_i_mul98_draw_box17_im8_cma_b};

    // i_mul98_draw_box17_sums_result_add_0_0(ADD,429)@191
    assign i_mul98_draw_box17_sums_result_add_0_0_a = {1'b0, i_mul98_draw_box17_sums_join_0_q};
    assign i_mul98_draw_box17_sums_result_add_0_0_b = {14'b00000000000000, i_mul98_draw_box17_sums_align_1_q};
    assign i_mul98_draw_box17_sums_result_add_0_0_o = $unsigned(i_mul98_draw_box17_sums_result_add_0_0_a) + $unsigned(i_mul98_draw_box17_sums_result_add_0_0_b);
    assign i_mul98_draw_box17_sums_result_add_0_0_q = i_mul98_draw_box17_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul98_draw_box17_sel_x(BITSELECT,292)@191
    assign bgTrunc_i_mul98_draw_box17_sel_x_in = i_mul98_draw_box17_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul98_draw_box17_sel_x_b = bgTrunc_i_mul98_draw_box17_sel_x_in[31:0];

    // redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0(REG,635)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_mul98_draw_box17_sel_x_b);
        end
    end

    // i_add99_draw_box19(ADD,28)@192
    assign i_add99_draw_box19_a = {1'b0, redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_q};
    assign i_add99_draw_box19_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_b};
    assign i_add99_draw_box19_o = $unsigned(i_add99_draw_box19_a) + $unsigned(i_add99_draw_box19_b);
    assign i_add99_draw_box19_q = i_add99_draw_box19_o[32:0];

    // bgTrunc_i_add99_draw_box19_sel_x(BITSELECT,289)@192
    assign bgTrunc_i_add99_draw_box19_sel_x_b = i_add99_draw_box19_q[31:0];

    // redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0(REG,636)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add99_draw_box19_sel_x_b);
        end
    end

    // SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo(STALLENABLE,1253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg0 <= '0;
            SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg0 <= SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_toReg0;
            // Successor 1
            SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg1 <= SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_consumed0 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul5698_draw_box50_backStall) & SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireValid) | SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg0;
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_consumed1 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_i32_mul78100_draw_box80_backStall) & SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireValid) | SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_StallValid = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_backStall & SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireValid;
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_toReg0 = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_StallValid & SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_consumed0;
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_toReg1 = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_StallValid & SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_or0 = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_consumed0;
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireStall = ~ (SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_consumed1 & SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_or0);
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_backStall = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_V0 = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireValid & ~ (SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg0);
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_V1 = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireValid & ~ (SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_wireValid = redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_out;

    // redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo(STALLFIFO,637)
    assign redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_in = SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_V0;
    assign redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_in = SE_out_redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_backStall;
    assign redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_data_in = redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_q;
    assign redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_in_bitsignaltemp = redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_in[0];
    assign redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_in_bitsignaltemp = redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_in[0];
    assign redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_out[0] = redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_out_bitsignaltemp;
    assign redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_out[0] = redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(62),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo (
        .valid_in(redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_in_bitsignaltemp),
        .data_in(redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_q),
        .valid_out(redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18(STALLENABLE,1010)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_backStall = SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_wireValid = SE_redist5_bgTrunc_i_mul98_draw_box17_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_and0;

    // SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0(STALLENABLE,1251)
    // Valid signal propagation
    assign SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_V0 = SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_0;
    assign SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_V1 = SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_s_tv_0 = redist7_bgTrunc_i_add99_draw_box19_sel_x_b_62_fifo_stall_out & SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_0;
    assign SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_s_tv_1 = SE_i_reduction_draw_box_24_draw_box25_backStall & SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_or0 = SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_s_tv_0;
    assign SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backEN = ~ (SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_s_tv_1 | SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_v_s_0 = SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box38_draw_box18_V0;
    // Backward Stall generation
    assign SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backStall = ~ (SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_0 <= SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_0 & SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_0 <= SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_1 <= SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_1 & SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_R_v_1 <= SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5(STALLENABLE,1544)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21(BLACKBOX,84)@193
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_0 thei_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_i_reduction_draw_box_24_draw_box25_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30(STALLENABLE,1052)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg3 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg4 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed0 = (~ (SE_i_reduction_draw_box_24_draw_box25_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed1 = (~ (SE_i_reduction_draw_box_30_draw_box43_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed2 = (~ (SE_i_reduction_draw_box_34_draw_box59_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed3 = (~ (SE_i_reduction_draw_box_38_draw_box73_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed4 = (~ (SE_i_reduction_draw_box_42_draw_box86_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed3;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_toReg4 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed3 & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_consumed4 & SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_or3);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V4 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_wireValid = i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28(STALLENABLE,1050)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg3 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed0 = (~ (SE_i_reduction_draw_box_24_draw_box25_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed1 = (~ (SE_i_reduction_draw_box_29_draw_box42_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed2 = (~ (SE_i_reduction_draw_box_32_draw_box57_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed3 = (~ (SE_i_reduction_draw_box_37_draw_box72_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_toReg3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_consumed3 & SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_or2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_wireValid = i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26(STALLENABLE,1048)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed0 = (~ (SE_i_reduction_draw_box_24_draw_box25_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed1 = (~ (SE_i_reduction_draw_box_28_draw_box41_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed2 = (~ (SE_i_reduction_draw_box_32_draw_box57_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_wireValid = i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24(STALLENABLE,1046)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed0 = (~ (SE_i_reduction_draw_box_24_draw_box25_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed1 = (~ (SE_i_reduction_draw_box_28_draw_box41_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed2 = (~ (SE_i_reduction_draw_box_41_draw_box85_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_wireValid = i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23(STALLENABLE,1044)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_consumed0 = (~ (SE_i_reduction_draw_box_24_draw_box25_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_consumed1 = (~ (SE_i_reduction_draw_box_36_draw_box71_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_wireValid = i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_valid_out;

    // SE_i_reduction_draw_box_24_draw_box25(STALLENABLE,1091)
    // Valid signal propagation
    assign SE_i_reduction_draw_box_24_draw_box25_V0 = SE_i_reduction_draw_box_24_draw_box25_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_draw_box_24_draw_box25_backStall = i_llvm_fpga_mem_memdep_26_draw_box35_out_o_stall | ~ (SE_i_reduction_draw_box_24_draw_box25_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_draw_box_24_draw_box25_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_V0;
    assign SE_i_reduction_draw_box_24_draw_box25_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_V0 & SE_i_reduction_draw_box_24_draw_box25_and0;
    assign SE_i_reduction_draw_box_24_draw_box25_and2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_V0 & SE_i_reduction_draw_box_24_draw_box25_and1;
    assign SE_i_reduction_draw_box_24_draw_box25_and3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_V0 & SE_i_reduction_draw_box_24_draw_box25_and2;
    assign SE_i_reduction_draw_box_24_draw_box25_and4 = SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_V0 & SE_i_reduction_draw_box_24_draw_box25_and3;
    assign SE_i_reduction_draw_box_24_draw_box25_and5 = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_valid_out & SE_i_reduction_draw_box_24_draw_box25_and4;
    assign SE_i_reduction_draw_box_24_draw_box25_and6 = i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_out_valid_out & SE_i_reduction_draw_box_24_draw_box25_and5;
    assign SE_i_reduction_draw_box_24_draw_box25_and7 = SE_redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_V1 & SE_i_reduction_draw_box_24_draw_box25_and6;
    assign SE_i_reduction_draw_box_24_draw_box25_and8 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V8 & SE_i_reduction_draw_box_24_draw_box25_and7;
    assign SE_i_reduction_draw_box_24_draw_box25_wireValid = SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_V0 & SE_i_reduction_draw_box_24_draw_box25_and8;

    // redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4(REG,670)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_backEN == 1'b1)
        begin
            redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_q <= $unsigned(SR_SE_redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_D0);
        end
    end

    // i_first_cleanup_xor_or_draw_box34(LOGICAL,39)@193
    assign i_first_cleanup_xor_or_draw_box34_q = redist28_i_llvm_fpga_ffwd_dest_i1_cmp9410289_draw_box33_out_dest_data_out_14_0_5_4_q | i_xor_draw_box2_q;

    // i_reduction_draw_box_24_draw_box25(LOGICAL,122)@193
    assign i_reduction_draw_box_24_draw_box25_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_b;

    // i_reduction_draw_box_25_draw_box27(LOGICAL,123)@193
    assign i_reduction_draw_box_25_draw_box27_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_b | i_reduction_draw_box_24_draw_box25_q;

    // i_reduction_draw_box_26_draw_box29(LOGICAL,124)@193
    assign i_reduction_draw_box_26_draw_box29_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_b | i_reduction_draw_box_25_draw_box27_q;

    // i_reduction_draw_box_27_draw_box31(LOGICAL,125)@193
    assign i_reduction_draw_box_27_draw_box31_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_b | i_reduction_draw_box_26_draw_box29_q;

    // i_idxprom105_draw_box20_sel_x(BITSELECT,383)@193
    assign i_idxprom105_draw_box20_sel_x_b = $unsigned({{32{redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_q[31]}}, redist6_bgTrunc_i_add99_draw_box19_sel_x_b_1_0_q[31:0]});

    // i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select(BITSELECT,583)@193
    assign i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_b = i_idxprom105_draw_box20_sel_x_b[63:54];
    assign i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_c = i_idxprom105_draw_box20_sel_x_b[53:36];
    assign i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_d = i_idxprom105_draw_box20_sel_x_b[35:18];
    assign i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_e = i_idxprom105_draw_box20_sel_x_b[17:0];

    // i_arrayidx106_draw_box0_mult_x_im0_shift0(BITSHIFT,554)@193
    assign i_arrayidx106_draw_box0_mult_x_im0_shift0_qint = { i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx106_draw_box0_mult_x_im0_shift0_q = i_arrayidx106_draw_box0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx106_draw_box0_mult_x_sums_align_3(BITSHIFT,445)@193
    assign i_arrayidx106_draw_box0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx106_draw_box0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx106_draw_box0_mult_x_sums_align_3_q = i_arrayidx106_draw_box0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx106_draw_box0_mult_x_im6_shift0(BITSHIFT,556)@193
    assign i_arrayidx106_draw_box0_mult_x_im6_shift0_qint = { i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx106_draw_box0_mult_x_im6_shift0_q = i_arrayidx106_draw_box0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx106_draw_box0_mult_x_sums_align_2(BITSHIFT,444)@193
    assign i_arrayidx106_draw_box0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx106_draw_box0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx106_draw_box0_mult_x_sums_align_2_q = i_arrayidx106_draw_box0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx106_draw_box0_mult_x_sums_join_4(BITJOIN,446)@193
    assign i_arrayidx106_draw_box0_mult_x_sums_join_4_q = {i_arrayidx106_draw_box0_mult_x_sums_align_3_q, i_arrayidx106_draw_box0_mult_x_sums_align_2_q};

    // i_arrayidx106_draw_box0_mult_x_im3_shift0(BITSHIFT,555)@193
    assign i_arrayidx106_draw_box0_mult_x_im3_shift0_qint = { i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx106_draw_box0_mult_x_im3_shift0_q = i_arrayidx106_draw_box0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx106_draw_box0_mult_x_sums_align_0(BITSHIFT,442)@193
    assign i_arrayidx106_draw_box0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx106_draw_box0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx106_draw_box0_mult_x_sums_align_0_q = i_arrayidx106_draw_box0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx106_draw_box0_mult_x_im9_shift0(BITSHIFT,557)@193
    assign i_arrayidx106_draw_box0_mult_x_im9_shift0_qint = { i_arrayidx106_draw_box0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx106_draw_box0_mult_x_im9_shift0_q = i_arrayidx106_draw_box0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx106_draw_box0_mult_x_sums_join_1(BITJOIN,443)@193
    assign i_arrayidx106_draw_box0_mult_x_sums_join_1_q = {i_arrayidx106_draw_box0_mult_x_sums_align_0_q, {1'b0, i_arrayidx106_draw_box0_mult_x_im9_shift0_q}};

    // i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0(ADD,447)@193
    assign i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx106_draw_box0_mult_x_sums_join_1_q};
    assign i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx106_draw_box0_mult_x_sums_join_4_q};
    assign i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_q = i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx106_draw_box0_mult_extender_x(BITJOIN,324)@193
    assign i_arrayidx106_draw_box0_mult_extender_x_q = {i_arrayidx106_draw_box0_mult_multconst_x_q, i_arrayidx106_draw_box0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx106_draw_box0_trunc_sel_x(BITSELECT,326)@193
    assign i_arrayidx106_draw_box0_trunc_sel_x_b = i_arrayidx106_draw_box0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21(BITJOIN,780)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_q = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21(BITSELECT,781)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_q[63:0]);

    // i_arrayidx106_draw_box0_add_x(ADD,318)@193
    assign i_arrayidx106_draw_box0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract96_draw_box21_b};
    assign i_arrayidx106_draw_box0_add_x_b = {1'b0, i_arrayidx106_draw_box0_trunc_sel_x_b};
    assign i_arrayidx106_draw_box0_add_x_o = $unsigned(i_arrayidx106_draw_box0_add_x_a) + $unsigned(i_arrayidx106_draw_box0_add_x_b);
    assign i_arrayidx106_draw_box0_add_x_q = i_arrayidx106_draw_box0_add_x_o[64:0];

    // i_arrayidx106_draw_box0_dupName_0_trunc_sel_x(BITSELECT,327)@193
    assign i_arrayidx106_draw_box0_dupName_0_trunc_sel_x_b = i_arrayidx106_draw_box0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_26_draw_box35(BLACKBOX,85)@193
    // in in_i_stall@20000000
    // out out_lsu_memdep_26_o_active@20000000
    // out out_memdep_26_draw_box_avm_address@20000000
    // out out_memdep_26_draw_box_avm_burstcount@20000000
    // out out_memdep_26_draw_box_avm_byteenable@20000000
    // out out_memdep_26_draw_box_avm_enable@20000000
    // out out_memdep_26_draw_box_avm_read@20000000
    // out out_memdep_26_draw_box_avm_write@20000000
    // out out_memdep_26_draw_box_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@224
    // out out_o_writeack@224
    draw_box_i_llvm_fpga_mem_memdep_26_0 thei_llvm_fpga_mem_memdep_26_draw_box35 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx106_draw_box0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_draw_box_27_draw_box31_q),
        .in_i_predicate(i_first_cleanup_xor_or_draw_box34_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_backStall),
        .in_i_valid(SE_i_reduction_draw_box_24_draw_box25_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_ffwd_dest_f32_r11162_draw_box32_b),
        .in_memdep_26_draw_box_avm_readdata(in_memdep_26_draw_box_avm_readdata),
        .in_memdep_26_draw_box_avm_readdatavalid(in_memdep_26_draw_box_avm_readdatavalid),
        .in_memdep_26_draw_box_avm_waitrequest(in_memdep_26_draw_box_avm_waitrequest),
        .in_memdep_26_draw_box_avm_writeack(in_memdep_26_draw_box_avm_writeack),
        .out_lsu_memdep_26_o_active(i_llvm_fpga_mem_memdep_26_draw_box35_out_lsu_memdep_26_o_active),
        .out_memdep_26_draw_box_avm_address(i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_address),
        .out_memdep_26_draw_box_avm_burstcount(i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_burstcount),
        .out_memdep_26_draw_box_avm_byteenable(i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_byteenable),
        .out_memdep_26_draw_box_avm_enable(i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_enable),
        .out_memdep_26_draw_box_avm_read(i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_read),
        .out_memdep_26_draw_box_avm_write(i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_write),
        .out_memdep_26_draw_box_avm_writedata(i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_26_draw_box35_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_26_draw_box35_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_26_draw_box35_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_26_draw_box35(BITJOIN,783)
    assign bubble_join_i_llvm_fpga_mem_memdep_26_draw_box35_q = i_llvm_fpga_mem_memdep_26_draw_box35_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_26_draw_box35(BITSELECT,784)
    assign bubble_select_i_llvm_fpga_mem_memdep_26_draw_box35_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_26_draw_box35_q[0:0]);

    // SE_out_i_llvm_fpga_mem_memdep_26_draw_box35(STALLENABLE,1028)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall) & SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireValid) | SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_consumed1 = (~ (SE_out_redist37_i_first_cleanup_xor101_or_draw_box47_q_31_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireValid) | SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_StallValid = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_backStall & SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_toReg0 = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_StallValid & SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_toReg1 = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_StallValid & SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_or0 = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_consumed1 & SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_backStall = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_V0 = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_V1 = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_wireValid = i_llvm_fpga_mem_memdep_26_draw_box35_out_o_valid;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56(STALLENABLE,1064)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_wireValid = i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56(BLACKBOX,103)@224
    // in in_stall_in@20000000
    // out out_data_out@225
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@225
    draw_box_i_llvm_fpga_push_i1_memdep_phi27_push20_0 thei_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_D0),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_feedback_stall_out_20),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56(STALLENABLE,1063)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall = i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56(STALLREG,1748)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_26_draw_box35_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_data1 <= $unsigned(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_and0 = SE_out_i_llvm_fpga_mem_memdep_26_draw_box35_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_i_valid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_V0 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_26_draw_box35_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_r_data1 : bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_b;

    // SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo(STALLENABLE,1282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg0 <= '0;
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg0 <= SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_toReg0;
            // Successor 1
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg1 <= SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_backStall) & SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_consumed1 = (~ (redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_out) & SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg1;
    // Consuming
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_StallValid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_backStall & SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireValid;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_toReg0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_consumed0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_toReg1 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_or0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_consumed0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireStall = ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_consumed1 & SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_or0);
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_backStall = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_V0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg0);
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_V1 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_wireValid = redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_valid_out;

    // redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo(STALLFIFO,656)
    assign redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_in = SE_out_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_V1;
    assign redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_in = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_backStall;
    assign redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_data_in = bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_b;
    assign redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_in_bitsignaltemp = redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_in[0];
    assign redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_in_bitsignaltemp = redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_in[0];
    assign redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_out[0] = redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_out_bitsignaltemp;
    assign redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_out[0] = redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo (
        .valid_in(redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_36_fifo_b),
        .valid_out(redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo(BITJOIN,924)
    assign bubble_join_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_q = redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_data_out;

    // bubble_select_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo(BITSELECT,925)
    assign bubble_select_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_b = $unsigned(bubble_join_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_q[0:0]);

    // SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo(STALLENABLE,1284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg0 <= '0;
            SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg0 <= SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_toReg0;
            // Successor 1
            SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg1 <= SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_backStall) & SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireValid) | SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg0;
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_consumed1 = (~ (redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_out) & SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireValid) | SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg1;
    // Consuming
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_StallValid = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_backStall & SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireValid;
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_toReg0 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_StallValid & SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_consumed0;
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_toReg1 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_StallValid & SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_or0 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_consumed0;
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireStall = ~ (SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_consumed1 & SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_or0);
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_backStall = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_V0 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireValid & ~ (SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg0);
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_V1 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireValid & ~ (SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_wireValid = redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_valid_out;

    // redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo(STALLFIFO,657)
    assign redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_in = SE_out_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_V1;
    assign redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_in = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_backStall;
    assign redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_data_in = bubble_select_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_b;
    assign redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_in_bitsignaltemp = redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_in[0];
    assign redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_in_bitsignaltemp = redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_in[0];
    assign redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_out[0] = redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_out_bitsignaltemp;
    assign redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_out[0] = redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo (
        .valid_in(redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist22_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_67_fifo_b),
        .valid_out(redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo(BITJOIN,927)
    assign bubble_join_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_q = redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_data_out;

    // bubble_select_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo(BITSELECT,928)
    assign bubble_select_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_b = $unsigned(bubble_join_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_q[0:0]);

    // SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo(STALLENABLE,1286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg0 <= '0;
            SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg0 <= SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_toReg0;
            // Successor 1
            SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg1 <= SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_backStall) & SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireValid) | SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg0;
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_consumed1 = (~ (redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_out) & SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireValid) | SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg1;
    // Consuming
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_StallValid = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_backStall & SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireValid;
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_toReg0 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_StallValid & SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_consumed0;
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_toReg1 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_StallValid & SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_or0 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_consumed0;
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireStall = ~ (SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_consumed1 & SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_or0);
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_backStall = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_V0 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireValid & ~ (SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg0);
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_V1 = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireValid & ~ (SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_wireValid = redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_valid_out;

    // redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo(STALLFIFO,658)
    assign redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_in = SE_out_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_V1;
    assign redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_in = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_backStall;
    assign redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_data_in = bubble_select_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_b;
    assign redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_in_bitsignaltemp = redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_in[0];
    assign redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_in_bitsignaltemp = redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_in[0];
    assign redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_out[0] = redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_out_bitsignaltemp;
    assign redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_out[0] = redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo (
        .valid_in(redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist23_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_98_fifo_b),
        .valid_out(redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo(BITJOIN,930)
    assign bubble_join_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_q = redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_data_out;

    // bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo(BITSELECT,931)
    assign bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_b = $unsigned(bubble_join_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_q[0:0]);

    // SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo(STALLENABLE,1288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg0 <= '0;
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg0 <= SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_toReg0;
            // Successor 1
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg1 <= SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_backStall) & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireValid) | SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_consumed1 = (~ (redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_out) & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireValid) | SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg1;
    // Consuming
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_StallValid = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_backStall & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireValid;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_toReg0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_StallValid & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_consumed0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_toReg1 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_StallValid & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_or0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_consumed0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireStall = ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_consumed1 & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_or0);
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_backStall = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_V0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireValid & ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg0);
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_V1 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireValid & ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_wireValid = redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_valid_out;

    // redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo(STALLFIFO,659)
    assign redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_in = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_V1;
    assign redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_in = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_backStall;
    assign redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_data_in = bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_b;
    assign redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_in_bitsignaltemp = redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_in[0];
    assign redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_in_bitsignaltemp = redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_in[0];
    assign redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_out[0] = redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_out_bitsignaltemp;
    assign redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_out[0] = redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo (
        .valid_in(redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_129_fifo_b),
        .valid_out(redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo(BITJOIN,933)
    assign bubble_join_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_q = redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_data_out;

    // bubble_select_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo(BITSELECT,934)
    assign bubble_select_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_b = $unsigned(bubble_join_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_q[0:0]);

    // SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo(STALLENABLE,1290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg0 <= '0;
            SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg0 <= SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_toReg0;
            // Successor 1
            SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg1 <= SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_backStall) & SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireValid) | SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg0;
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_consumed1 = (~ (redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_out) & SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireValid) | SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg1;
    // Consuming
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_StallValid = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_backStall & SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireValid;
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_toReg0 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_StallValid & SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_consumed0;
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_toReg1 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_StallValid & SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_or0 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_consumed0;
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireStall = ~ (SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_consumed1 & SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_or0);
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_backStall = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_V0 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireValid & ~ (SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg0);
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_V1 = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireValid & ~ (SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_wireValid = redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_valid_out;

    // redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo(STALLFIFO,660)
    assign redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_in = SE_out_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_V1;
    assign redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_in = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_backStall;
    assign redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_data_in = bubble_select_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_b;
    assign redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_in_bitsignaltemp = redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_in[0];
    assign redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_in_bitsignaltemp = redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_in[0];
    assign redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_out[0] = redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_out_bitsignaltemp;
    assign redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_out[0] = redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(27),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo (
        .valid_in(redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_in_bitsignaltemp),
        .stall_in(redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist25_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_160_fifo_b),
        .valid_out(redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_out_bitsignaltemp),
        .stall_out(redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_stall_out_bitsignaltemp),
        .data_out(redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo(BITJOIN,936)
    assign bubble_join_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_q = redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_data_out;

    // bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo(BITSELECT,937)
    assign bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_b = $unsigned(bubble_join_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid549_i_next_initerations_draw_box0_shift_x(BITSELECT,548)@374
    assign rightShiftStage0Idx1Rng1_uid549_i_next_initerations_draw_box0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_b[3:1];

    // rightShiftStage0Idx1_uid551_i_next_initerations_draw_box0_shift_x(BITJOIN,550)@374
    assign rightShiftStage0Idx1_uid551_i_next_initerations_draw_box0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid549_i_next_initerations_draw_box0_shift_x_b};

    // redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0(REG,633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backEN == 1'b1)
        begin
            redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_q <= $unsigned(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q);
        end
    end

    // redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo(STALLFIFO,634)
    assign redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_in = SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_V1;
    assign redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_in = SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_backStall;
    assign redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_data_in = redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_q;
    assign redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_in_bitsignaltemp = redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_in[0];
    assign redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_in_bitsignaltemp = redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_in[0];
    assign redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_out[0] = redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_out_bitsignaltemp;
    assign redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_out[0] = redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(181),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo (
        .valid_in(redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_in_bitsignaltemp),
        .data_in(redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_q),
        .valid_out(redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo(STALLENABLE,1249)
    // Valid signal propagation
    assign SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_V0 = SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_backStall = i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_stall_out | ~ (SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_wireValid = redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i4_initerations_push26_draw_box7(STALLENABLE,1084)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push26_draw_box7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push26_draw_box7_wireValid = i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_valid_out;

    // i_llvm_fpga_push_i4_initerations_push26_draw_box7(BLACKBOX,113)@374
    // in in_stall_in@20000000
    // out out_data_out@375
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@375
    draw_box_i_llvm_fpga_push_i4_initerations_push26_0 thei_llvm_fpga_push_i4_initerations_push26_draw_box7 (
        .in_data_in(SR_SE_i_next_initerations_draw_box6_vt_join_D3),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_feedback_stall_out_26),
        .in_keep_going(SR_SE_i_next_initerations_draw_box6_vt_join_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push26_draw_box7_backStall),
        .in_valid_in(SE_i_next_initerations_draw_box6_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo(BITJOIN,885)
    assign bubble_join_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_q = redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_data_out;

    // bubble_select_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo(BITSELECT,886)
    assign bubble_select_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_b = $unsigned(bubble_join_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_q[0:0]);

    // i_llvm_fpga_pop_i4_initerations_pop26_draw_box5(BLACKBOX,101)@373
    // in in_stall_in@20000000
    // out out_data_out@374
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@374
    draw_box_i_llvm_fpga_pop_i4_initerations_pop26_0 thei_llvm_fpga_pop_i4_initerations_pop26_draw_box5 (
        .in_data_in(c_i4_7119_q),
        .in_dir(bubble_select_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_b),
        .in_feedback_in_26(i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_backStall),
        .in_valid_in(SE_out_redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5(BITJOIN,834)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_q = i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5(BITSELECT,835)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_q[3:0]);

    // rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x(MUX,552)@374
    assign rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_b or rightShiftStage0Idx1_uid551_i_next_initerations_draw_box0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_s)
            1'b0 : rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_b;
            1'b1 : rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_q = rightShiftStage0Idx1_uid551_i_next_initerations_draw_box0_shift_x_q;
            default : rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_draw_box6_vt_select_2(BITSELECT,119)@374
    assign i_next_initerations_draw_box6_vt_select_2_b = rightShiftStage0_uid553_i_next_initerations_draw_box0_shift_x_q[2:0];

    // i_next_initerations_draw_box6_vt_join(BITJOIN,118)@374
    assign i_next_initerations_draw_box6_vt_join_q = {GND_q, i_next_initerations_draw_box6_vt_select_2_b};

    // i_last_initeration_draw_box8_sel_x(BITSELECT,389)@374
    assign i_last_initeration_draw_box8_sel_x_b = i_next_initerations_draw_box6_vt_join_q[0:0];

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5(STALLENABLE,1060)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_consumed1 = (~ (SR_SE_i_next_initerations_draw_box6_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_wireValid = i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_out_valid_out;

    // SE_i_next_initerations_draw_box6_vt_join(STALLENABLE,1087)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_draw_box6_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_draw_box6_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_draw_box6_vt_join_fromReg0 <= SE_i_next_initerations_draw_box6_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_draw_box6_vt_join_fromReg1 <= SE_i_next_initerations_draw_box6_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_draw_box6_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_stall_out) & SE_i_next_initerations_draw_box6_vt_join_wireValid) | SE_i_next_initerations_draw_box6_vt_join_fromReg0;
    assign SE_i_next_initerations_draw_box6_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push26_draw_box7_out_stall_out) & SE_i_next_initerations_draw_box6_vt_join_wireValid) | SE_i_next_initerations_draw_box6_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_draw_box6_vt_join_StallValid = SE_i_next_initerations_draw_box6_vt_join_backStall & SE_i_next_initerations_draw_box6_vt_join_wireValid;
    assign SE_i_next_initerations_draw_box6_vt_join_toReg0 = SE_i_next_initerations_draw_box6_vt_join_StallValid & SE_i_next_initerations_draw_box6_vt_join_consumed0;
    assign SE_i_next_initerations_draw_box6_vt_join_toReg1 = SE_i_next_initerations_draw_box6_vt_join_StallValid & SE_i_next_initerations_draw_box6_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_draw_box6_vt_join_or0 = SE_i_next_initerations_draw_box6_vt_join_consumed0;
    assign SE_i_next_initerations_draw_box6_vt_join_wireStall = ~ (SE_i_next_initerations_draw_box6_vt_join_consumed1 & SE_i_next_initerations_draw_box6_vt_join_or0);
    assign SE_i_next_initerations_draw_box6_vt_join_backStall = SE_i_next_initerations_draw_box6_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_draw_box6_vt_join_V0 = SE_i_next_initerations_draw_box6_vt_join_wireValid & ~ (SE_i_next_initerations_draw_box6_vt_join_fromReg0);
    assign SE_i_next_initerations_draw_box6_vt_join_V1 = SE_i_next_initerations_draw_box6_vt_join_wireValid & ~ (SE_i_next_initerations_draw_box6_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_draw_box6_vt_join_wireValid = SR_SE_i_next_initerations_draw_box6_vt_join_V;

    // SR_SE_i_next_initerations_draw_box6_vt_join(STALLREG,1747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_draw_box6_vt_join_r_valid <= 1'b0;
            SR_SE_i_next_initerations_draw_box6_vt_join_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_draw_box6_vt_join_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_draw_box6_vt_join_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_draw_box6_vt_join_r_data3 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_draw_box6_vt_join_r_valid <= SE_i_next_initerations_draw_box6_vt_join_backStall & (SR_SE_i_next_initerations_draw_box6_vt_join_r_valid | SR_SE_i_next_initerations_draw_box6_vt_join_i_valid);

            if (SR_SE_i_next_initerations_draw_box6_vt_join_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_draw_box6_vt_join_r_data0 <= i_last_initeration_draw_box8_sel_x_b;
                SR_SE_i_next_initerations_draw_box6_vt_join_r_data1 <= $unsigned(bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_b);
                SR_SE_i_next_initerations_draw_box6_vt_join_r_data2 <= $unsigned(bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_b);
                SR_SE_i_next_initerations_draw_box6_vt_join_r_data3 <= i_next_initerations_draw_box6_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_draw_box6_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_V1;
    assign SR_SE_i_next_initerations_draw_box6_vt_join_i_valid = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_V0 & SR_SE_i_next_initerations_draw_box6_vt_join_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_draw_box6_vt_join_backStall = SR_SE_i_next_initerations_draw_box6_vt_join_r_valid | ~ (SR_SE_i_next_initerations_draw_box6_vt_join_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_draw_box6_vt_join_V = SR_SE_i_next_initerations_draw_box6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_draw_box6_vt_join_r_valid : SR_SE_i_next_initerations_draw_box6_vt_join_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_draw_box6_vt_join_D0 = SR_SE_i_next_initerations_draw_box6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_draw_box6_vt_join_r_data0 : i_last_initeration_draw_box8_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_draw_box6_vt_join_D1 = SR_SE_i_next_initerations_draw_box6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_draw_box6_vt_join_r_data1 : bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_draw_box6_vt_join_D2 = SR_SE_i_next_initerations_draw_box6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_draw_box6_vt_join_r_data2 : bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_draw_box6_vt_join_D3 = SR_SE_i_next_initerations_draw_box6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_draw_box6_vt_join_r_data3 : i_next_initerations_draw_box6_vt_join_q;

    // SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo(STALLENABLE,1292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg0 <= '0;
            SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg0 <= SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_toReg0;
            // Successor 1
            SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg1 <= SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_consumed0 = (~ (SR_SE_i_next_initerations_draw_box6_vt_join_backStall) & SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireValid) | SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg0;
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_consumed1 = (~ (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backStall) & SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireValid) | SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg1;
    // Consuming
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_StallValid = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_backStall & SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireValid;
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_toReg0 = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_StallValid & SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_consumed0;
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_toReg1 = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_StallValid & SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_or0 = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_consumed0;
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireStall = ~ (SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_consumed1 & SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_or0);
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_backStall = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_V0 = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireValid & ~ (SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg0);
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_V1 = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireValid & ~ (SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_wireValid = redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_valid_out;

    // SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0(STALLREG,1749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid <= 1'b0;
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backStall & (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid | SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_i_valid);

            if (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_data0 <= $unsigned(bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_i_valid = SE_out_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backStall = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid | ~ (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_i_valid);

    // Valid
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_V = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid : SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_i_valid;

    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_D0 = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_r_data0 : bubble_select_redist26_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_186_fifo_b;

    // SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0(STALLENABLE,1293)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_V0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_s_tv_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_backStall & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backEN = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_v_s_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backEN & SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_V;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backStall = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_R_v_0 & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_v_s_0;
            end

        end
    end

    // SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1(STALLENABLE,1294)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_V0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_s_tv_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_backStall & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_backEN = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_v_s_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_backEN & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_V0;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_backStall = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_R_v_0 & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_v_s_0;
            end

        end
    end

    // SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2(STALLENABLE,1295)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_V0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_s_tv_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_backStall & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_backEN = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_v_s_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_backEN & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_V0;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_backStall = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_R_v_0 & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_v_s_0;
            end

        end
    end

    // SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3(STALLENABLE,1296)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_V0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_s_tv_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_backStall & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_backEN = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_v_s_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_backEN & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_V0;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_backStall = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_R_v_0 & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_v_s_0;
            end

        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0(REG,661)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_q <= $unsigned(SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_D0);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1(REG,662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_q <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_0_q);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2(REG,663)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_q <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_1_q);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3(REG,664)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_q <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_2_q);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4(REG,665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_q <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_memdep_47_draw_box103(BITJOIN,798)
    assign bubble_join_i_llvm_fpga_mem_memdep_47_draw_box103_q = i_llvm_fpga_mem_memdep_47_draw_box103_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103(BITSELECT,799)
    assign bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_47_draw_box103_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104(BLACKBOX,108)@379
    // in in_stall_in@20000000
    // out out_data_out@380
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@380
    draw_box_i_llvm_fpga_push_i1_memdep_phi48_push25_0 thei_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_feedback_stall_out_25),
        .in_keep_going(redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4(STALLENABLE,1297)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_V0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_s_tv_0 = SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_backStall & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_backEN = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_v_s_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_backEN & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_3_V0;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_backStall = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_R_v_0 & SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_v_s_0;
            end

        end
    end

    // SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103(STALLENABLE,1472)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_backStall = i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_and0 = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid = SE_redist27_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_191_4_V0 & SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100(BITJOIN,697)
    assign bubble_join_i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_q = i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100(BITSELECT,698)
    assign bubble_select_i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_q[31:0]);

    // bubble_join_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo(BITJOIN,939)
    assign bubble_join_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_q = redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_data_out;

    // bubble_select_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo(BITSELECT,940)
    assign bubble_select_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_b = $unsigned(bubble_join_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_q[0:0]);

    // bubble_join_redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo(BITJOIN,903)
    assign bubble_join_redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_q = redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_data_out;

    // bubble_select_redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo(BITSELECT,904)
    assign bubble_select_redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_b = $unsigned(bubble_join_redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_q[0:0]);

    // i_reduction_draw_box_47_draw_box99(LOGICAL,142)@348
    assign i_reduction_draw_box_47_draw_box99_q = bubble_select_i_llvm_fpga_mem_memdep_42_draw_box91_b | bubble_select_redist14_i_reduction_draw_box_46_draw_box98_q_155_fifo_b;

    // bubble_join_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo(BITJOIN,891)
    assign bubble_join_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_q = redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_data_out;

    // bubble_select_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo(BITSELECT,892)
    assign bubble_select_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_b = $unsigned(bubble_join_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_q[31:0]);

    // i_idxprom160_draw_box95_sel_x(BITSELECT,388)@348
    assign i_idxprom160_draw_box95_sel_x_b = $unsigned({{32{bubble_select_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_b[31]}}, bubble_select_redist8_bgTrunc_i_add159_draw_box94_sel_x_b_63_fifo_b[31:0]});

    // i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select(BITSELECT,588)@348
    assign i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_b = i_idxprom160_draw_box95_sel_x_b[63:54];
    assign i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_c = i_idxprom160_draw_box95_sel_x_b[53:36];
    assign i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_d = i_idxprom160_draw_box95_sel_x_b[35:18];
    assign i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_e = i_idxprom160_draw_box95_sel_x_b[17:0];

    // i_arrayidx161_draw_box0_mult_x_im0_shift0(BITSHIFT,574)@348
    assign i_arrayidx161_draw_box0_mult_x_im0_shift0_qint = { i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx161_draw_box0_mult_x_im0_shift0_q = i_arrayidx161_draw_box0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx161_draw_box0_mult_x_sums_align_3(BITSHIFT,535)@348
    assign i_arrayidx161_draw_box0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx161_draw_box0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx161_draw_box0_mult_x_sums_align_3_q = i_arrayidx161_draw_box0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx161_draw_box0_mult_x_im6_shift0(BITSHIFT,576)@348
    assign i_arrayidx161_draw_box0_mult_x_im6_shift0_qint = { i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx161_draw_box0_mult_x_im6_shift0_q = i_arrayidx161_draw_box0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx161_draw_box0_mult_x_sums_align_2(BITSHIFT,534)@348
    assign i_arrayidx161_draw_box0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx161_draw_box0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx161_draw_box0_mult_x_sums_align_2_q = i_arrayidx161_draw_box0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx161_draw_box0_mult_x_sums_join_4(BITJOIN,536)@348
    assign i_arrayidx161_draw_box0_mult_x_sums_join_4_q = {i_arrayidx161_draw_box0_mult_x_sums_align_3_q, i_arrayidx161_draw_box0_mult_x_sums_align_2_q};

    // i_arrayidx161_draw_box0_mult_x_im3_shift0(BITSHIFT,575)@348
    assign i_arrayidx161_draw_box0_mult_x_im3_shift0_qint = { i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx161_draw_box0_mult_x_im3_shift0_q = i_arrayidx161_draw_box0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx161_draw_box0_mult_x_sums_align_0(BITSHIFT,532)@348
    assign i_arrayidx161_draw_box0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx161_draw_box0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx161_draw_box0_mult_x_sums_align_0_q = i_arrayidx161_draw_box0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx161_draw_box0_mult_x_im9_shift0(BITSHIFT,577)@348
    assign i_arrayidx161_draw_box0_mult_x_im9_shift0_qint = { i_arrayidx161_draw_box0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx161_draw_box0_mult_x_im9_shift0_q = i_arrayidx161_draw_box0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx161_draw_box0_mult_x_sums_join_1(BITJOIN,533)@348
    assign i_arrayidx161_draw_box0_mult_x_sums_join_1_q = {i_arrayidx161_draw_box0_mult_x_sums_align_0_q, {1'b0, i_arrayidx161_draw_box0_mult_x_im9_shift0_q}};

    // i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0(ADD,537)@348
    assign i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx161_draw_box0_mult_x_sums_join_1_q};
    assign i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx161_draw_box0_mult_x_sums_join_4_q};
    assign i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_q = i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx161_draw_box0_mult_extender_x(BITJOIN,374)@348
    assign i_arrayidx161_draw_box0_mult_extender_x_q = {i_arrayidx106_draw_box0_mult_multconst_x_q, i_arrayidx161_draw_box0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx161_draw_box0_trunc_sel_x(BITSELECT,376)@348
    assign i_arrayidx161_draw_box0_trunc_sel_x_b = i_arrayidx161_draw_box0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96(BITJOIN,765)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_q = i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96(BITSELECT,766)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_q[63:0]);

    // i_arrayidx161_draw_box0_add_x(ADD,368)@348
    assign i_arrayidx161_draw_box0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_a_fca_2_extract91_draw_box96_b};
    assign i_arrayidx161_draw_box0_add_x_b = {1'b0, i_arrayidx161_draw_box0_trunc_sel_x_b};
    assign i_arrayidx161_draw_box0_add_x_o = $unsigned(i_arrayidx161_draw_box0_add_x_a) + $unsigned(i_arrayidx161_draw_box0_add_x_b);
    assign i_arrayidx161_draw_box0_add_x_q = i_arrayidx161_draw_box0_add_x_o[64:0];

    // i_arrayidx161_draw_box0_dupName_0_trunc_sel_x(BITSELECT,377)@348
    assign i_arrayidx161_draw_box0_dupName_0_trunc_sel_x_b = i_arrayidx161_draw_box0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_47_draw_box103(BLACKBOX,90)@348
    // in in_i_stall@20000000
    // out out_lsu_memdep_47_o_active@20000000
    // out out_memdep_47_draw_box_avm_address@20000000
    // out out_memdep_47_draw_box_avm_burstcount@20000000
    // out out_memdep_47_draw_box_avm_byteenable@20000000
    // out out_memdep_47_draw_box_avm_enable@20000000
    // out out_memdep_47_draw_box_avm_read@20000000
    // out out_memdep_47_draw_box_avm_write@20000000
    // out out_memdep_47_draw_box_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@379
    // out out_o_writeack@379
    draw_box_i_llvm_fpga_mem_memdep_47_0 thei_llvm_fpga_mem_memdep_47_draw_box103 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx161_draw_box0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_draw_box_47_draw_box99_q),
        .in_i_predicate(bubble_select_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_backStall),
        .in_i_valid(SE_out_redist33_i_first_cleanup_xor105_or_draw_box102_q_155_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_ffwd_dest_f32_b11369_draw_box100_b),
        .in_memdep_47_draw_box_avm_readdata(in_memdep_47_draw_box_avm_readdata),
        .in_memdep_47_draw_box_avm_readdatavalid(in_memdep_47_draw_box_avm_readdatavalid),
        .in_memdep_47_draw_box_avm_waitrequest(in_memdep_47_draw_box_avm_waitrequest),
        .in_memdep_47_draw_box_avm_writeack(in_memdep_47_draw_box_avm_writeack),
        .out_lsu_memdep_47_o_active(i_llvm_fpga_mem_memdep_47_draw_box103_out_lsu_memdep_47_o_active),
        .out_memdep_47_draw_box_avm_address(i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_address),
        .out_memdep_47_draw_box_avm_burstcount(i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_burstcount),
        .out_memdep_47_draw_box_avm_byteenable(i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_byteenable),
        .out_memdep_47_draw_box_avm_enable(i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_enable),
        .out_memdep_47_draw_box_avm_read(i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_read),
        .out_memdep_47_draw_box_avm_write(i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_write),
        .out_memdep_47_draw_box_avm_writedata(i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_47_draw_box103_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_47_draw_box103_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_47_draw_box103_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_47_draw_box103(STALLENABLE,1038)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid) | SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_47_draw_box103_backStall) & SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid) | SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_StallValid = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_backStall & SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_toReg0 = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_StallValid & SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_toReg1 = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_StallValid & SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_or0 = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_consumed1 & SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_backStall = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_V0 = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_V1 = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_wireValid = i_llvm_fpga_mem_memdep_47_draw_box103_out_o_valid;

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2(STALLENABLE,1538)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13(BLACKBOX,78)@193
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i33_unnamed_37_draw_box0 thei_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_dest_data_out_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13(STALLENABLE,1014)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_consumed1 = (~ (SE_i_fpga_indvars_iv54_replace_phi_draw_box15_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_backStall & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_or0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_backStall = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_V1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_wireValid = i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg(STALLFIFO,1700)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(187),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_draw_box118(LOGICAL,114)@193 + 1
    assign i_masked_draw_box118_qi = SR_SE_i_masked_draw_box118_D0 & SR_SE_i_masked_draw_box118_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_draw_box118_delay ( .xin(i_masked_draw_box118_qi), .xout(i_masked_draw_box118_q), .ena(SE_i_masked_draw_box118_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_in_redist19_i_masked_draw_box118_q_186_fifo(STALLENABLE,1274)
    // Valid signal propagation
    assign SE_in_redist19_i_masked_draw_box118_q_186_fifo_V0 = SE_in_redist19_i_masked_draw_box118_q_186_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist19_i_masked_draw_box118_q_186_fifo_backStall = redist19_i_masked_draw_box118_q_186_fifo_stall_out | ~ (SE_in_redist19_i_masked_draw_box118_q_186_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist19_i_masked_draw_box118_q_186_fifo_wireValid = SE_i_masked_draw_box118_V0;

    // redist19_i_masked_draw_box118_q_186_fifo(STALLFIFO,649)
    assign redist19_i_masked_draw_box118_q_186_fifo_valid_in = SE_in_redist19_i_masked_draw_box118_q_186_fifo_V0;
    assign redist19_i_masked_draw_box118_q_186_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall;
    assign redist19_i_masked_draw_box118_q_186_fifo_data_in = i_masked_draw_box118_q;
    assign redist19_i_masked_draw_box118_q_186_fifo_valid_in_bitsignaltemp = redist19_i_masked_draw_box118_q_186_fifo_valid_in[0];
    assign redist19_i_masked_draw_box118_q_186_fifo_stall_in_bitsignaltemp = redist19_i_masked_draw_box118_q_186_fifo_stall_in[0];
    assign redist19_i_masked_draw_box118_q_186_fifo_valid_out[0] = redist19_i_masked_draw_box118_q_186_fifo_valid_out_bitsignaltemp;
    assign redist19_i_masked_draw_box118_q_186_fifo_stall_out[0] = redist19_i_masked_draw_box118_q_186_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(186),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_masked_draw_box118_q_186_fifo (
        .valid_in(redist19_i_masked_draw_box118_q_186_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_masked_draw_box118_q_186_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_draw_box118_q),
        .valid_out(redist19_i_masked_draw_box118_q_186_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_masked_draw_box118_q_186_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_masked_draw_box118_q_186_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg(STALLFIFO,1701)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(192),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg(STALLFIFO,1703)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1(STALLENABLE,1524)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and0 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and1 = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and3 = redist19_i_masked_draw_box118_q_186_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and5 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_47_draw_box103_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_and5;

    // bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg(STALLFIFO,1702)
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_V0;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(187),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14(STALLENABLE,1056)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg0 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg1 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_consumed1 = (~ (SE_i_fpga_indvars_iv54_replace_phi_draw_box15_backStall) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_StallValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_backStall & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_toReg0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_toReg1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_or0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_consumed1 & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_or0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_backStall = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_V0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_V1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_wireValid = i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_valid_out;

    // SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110(STALLENABLE,1080)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_wireValid = i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_valid_out;

    // c_i33_1127(CONSTANT,15)
    assign c_i33_1127_q = $unsigned(33'b111111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13(BITJOIN,761)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_q = i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_out_dest_data_out_16_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13(BITSELECT,762)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_q[32:0]);

    // bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14(BITJOIN,827)
    assign bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14(BITSELECT,828)
    assign bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_q[32:0]);

    // i_fpga_indvars_iv54_replace_phi_draw_box15(MUX,40)@193
    assign i_fpga_indvars_iv54_replace_phi_draw_box15_s = redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_q;
    always @(i_fpga_indvars_iv54_replace_phi_draw_box15_s or bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_b or bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_b)
    begin
        unique case (i_fpga_indvars_iv54_replace_phi_draw_box15_s)
            1'b0 : i_fpga_indvars_iv54_replace_phi_draw_box15_q = bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_b;
            1'b1 : i_fpga_indvars_iv54_replace_phi_draw_box15_q = bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_b;
            default : i_fpga_indvars_iv54_replace_phi_draw_box15_q = 33'b0;
        endcase
    end

    // i_fpga_indvars_iv_next55_draw_box109(ADD,41)@193
    assign i_fpga_indvars_iv_next55_draw_box109_a = {1'b0, i_fpga_indvars_iv54_replace_phi_draw_box15_q};
    assign i_fpga_indvars_iv_next55_draw_box109_b = {1'b0, c_i33_1127_q};
    assign i_fpga_indvars_iv_next55_draw_box109_o = $unsigned(i_fpga_indvars_iv_next55_draw_box109_a) + $unsigned(i_fpga_indvars_iv_next55_draw_box109_b);
    assign i_fpga_indvars_iv_next55_draw_box109_q = i_fpga_indvars_iv_next55_draw_box109_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next55_draw_box109_sel_x(BITSELECT,290)@193
    assign bgTrunc_i_fpga_indvars_iv_next55_draw_box109_sel_x_b = i_fpga_indvars_iv_next55_draw_box109_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110(BLACKBOX,111)@193
    // in in_stall_in@20000000
    // out out_data_out@194
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@194
    draw_box_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_0 thei_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next55_draw_box109_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_feedback_stall_out_18),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef124(CONSTANT,16)
    assign c_i33_undef124_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14(BLACKBOX,99)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    draw_box_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14 (
        .in_data_in(c_i33_undef124_q),
        .in_dir(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q),
        .in_feedback_in_18(i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_backStall),
        .in_valid_in(SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V7),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30(BLACKBOX,97)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    draw_box_i_llvm_fpga_pop_i1_memdep_phi48_pop25_0 thei_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30 (
        .in_data_in(GND_q),
        .in_dir(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q),
        .in_feedback_in_25(i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_memdep_phi48_push25_draw_box104_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_backStall),
        .in_valid_in(SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V6),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28(BLACKBOX,96)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    draw_box_i_llvm_fpga_pop_i1_memdep_phi43_pop24_0 thei_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28 (
        .in_data_in(GND_q),
        .in_dir(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q),
        .in_feedback_in_24(i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_memdep_phi43_push24_draw_box92_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_backStall),
        .in_valid_in(SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V5),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26(BLACKBOX,95)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    draw_box_i_llvm_fpga_pop_i1_memdep_phi38_pop23_0 thei_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26 (
        .in_data_in(GND_q),
        .in_dir(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_memdep_phi38_push23_draw_box79_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_backStall),
        .in_valid_in(SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V4),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24(BLACKBOX,94)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    draw_box_i_llvm_fpga_pop_i1_memdep_phi33_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24 (
        .in_data_in(GND_q),
        .in_dir(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi33_push22_draw_box65_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_backStall),
        .in_valid_in(SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23(BLACKBOX,93)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    draw_box_i_llvm_fpga_pop_i1_memdep_phi29_pop21_0 thei_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23 (
        .in_data_in(GND_q),
        .in_dir(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q),
        .in_feedback_in_21(i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i1_memdep_phi29_push21_draw_box49_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_backStall),
        .in_valid_in(SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55(BLACKBOX,92)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    draw_box_i_llvm_fpga_pop_i1_memdep_phi27_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55 (
        .in_data_in(GND_q),
        .in_dir(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_memdep_phi27_push20_draw_box56_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_backStall),
        .in_valid_in(SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0(STALLENABLE,1247)
    // Valid signal propagation
    assign SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_V0 = SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_0;
    assign SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_V1 = SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_1;
    // Stall signal propagation
    assign SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_s_tv_0 = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_backStall & SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_0;
    assign SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_s_tv_1 = redist4_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_372_fifo_stall_out & SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_1;
    // Backward Enable generation
    assign SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_or0 = SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_s_tv_0;
    assign SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backEN = ~ (SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_s_tv_1 | SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_v_s_0 = SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backEN & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V0;
    // Backward Stall generation
    assign SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backStall = ~ (SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_0 <= 1'b0;
            SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backEN == 1'b0)
            begin
                SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_0 <= SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_0 & SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_s_tv_0;
            end
            else
            begin
                SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_0 <= SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_v_s_0;
            end

            if (SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backEN == 1'b0)
            begin
                SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_1 <= SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_1 & SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_s_tv_1;
            end
            else
            begin
                SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_R_v_1 <= SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_v_s_0;
            end

        end
    end

    // SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0(STALLENABLE,1243)
    // Valid signal propagation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_V0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_s_tv_0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_backStall & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_backEN = ~ (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_v_s_0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_backEN & SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_V1;
    // Backward Stall generation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_backStall = ~ (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_R_v_0 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_R_v_0 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_s_tv_0;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_R_v_0 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_v_s_0;
            end

        end
    end

    // redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0(REG,628)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backEN == 1'b1)
        begin
            redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_q <= $unsigned(bubble_select_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_b);
        end
    end

    // redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0(REG,629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_backEN == 1'b1)
        begin
            redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_q <= $unsigned(redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_q);
        end
    end

    // redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1(REG,630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_backEN == 1'b1)
        begin
            redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_q <= $unsigned(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_q);
        end
    end

    // SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1(STALLENABLE,1244)
    // Valid signal propagation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_V0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_s_tv_0 = SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backStall & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_backEN = ~ (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_v_s_0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_backEN & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_V0;
    // Backward Stall generation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_backStall = ~ (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_R_v_0 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_R_v_0 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_s_tv_0;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_R_v_0 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_v_s_0;
            end

        end
    end

    // SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2(STALLREG,1735)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid <= 1'b0;
            SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backStall & (SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid | SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_i_valid);

            if (SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_data0 <= $unsigned(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_i_valid = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_V0;
    // Stall signal propagation
    assign SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backStall = SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid | ~ (SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_i_valid);

    // Valid
    assign SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_V = SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid == 1'b1 ? SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid : SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_i_valid;

    assign SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_D0 = SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_valid == 1'b1 ? SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_r_data0 : redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_1_q;

    // SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2(STALLENABLE,1245)
    // Valid signal propagation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_V0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_R_v_0;
    // Stall signal propagation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_s_tv_0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backStall & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_R_v_0;
    // Backward Enable generation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backEN = ~ (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_v_s_0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backEN & SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_V;
    // Backward Stall generation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backStall = ~ (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_R_v_0 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_R_v_0 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_s_tv_0;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_R_v_0 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_v_s_0;
            end

        end
    end

    // SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3(STALLENABLE,1246)
    // Valid signal propagation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_0;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V1 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_1;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V2 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_2;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V3 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_3;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V4 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_4;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V5 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_5;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V6 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_6;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V7 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_7;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V8 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_8;
    // Stall signal propagation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_0 = SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_backStall & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_0;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi27_pop20_draw_box55_out_stall_out & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_1;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_2 = i_llvm_fpga_pop_i1_memdep_phi29_pop21_draw_box23_out_stall_out & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_2;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_3 = i_llvm_fpga_pop_i1_memdep_phi33_pop22_draw_box24_out_stall_out & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_3;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_4 = i_llvm_fpga_pop_i1_memdep_phi38_pop23_draw_box26_out_stall_out & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_4;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_5 = i_llvm_fpga_pop_i1_memdep_phi43_pop24_draw_box28_out_stall_out & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_5;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_6 = i_llvm_fpga_pop_i1_memdep_phi48_pop25_draw_box30_out_stall_out & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_6;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_7 = i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_out_stall_out & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_7;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_8 = i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_stall_out & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_8;
    // Backward Enable generation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_0;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or1 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_1 | SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or0;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or2 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_2 | SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or1;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or3 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_3 | SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or2;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or4 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_4 | SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or3;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or5 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_5 | SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or4;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or6 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_6 | SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or5;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or7 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_7 | SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or6;
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN = ~ (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_8 | SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_or7);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_V0;
    // Backward Stall generation
    assign SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backStall = ~ (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_0 <= 1'b0;
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_1 <= 1'b0;
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_2 <= 1'b0;
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_3 <= 1'b0;
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_4 <= 1'b0;
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_5 <= 1'b0;
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_6 <= 1'b0;
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_7 <= 1'b0;
            SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_8 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_0 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_0 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_0;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_0 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_1 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_1 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_1;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_1 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_2 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_2 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_2;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_2 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_3 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_3 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_3;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_3 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_4 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_4 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_4;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_4 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_5 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_5 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_5;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_5 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_6 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_6 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_6;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_6 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_7 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_7 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_7;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_7 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

            if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b0)
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_8 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_8 & SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_s_tv_8;
            end
            else
            begin
                SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_R_v_8 <= SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i4_cleanups_push27_draw_box117(STALLENABLE,1082)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push27_draw_box117_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push27_draw_box117_wireValid = i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_valid_out;

    // i_llvm_fpga_push_i4_cleanups_push27_draw_box117(BLACKBOX,112)@193
    // in in_stall_in@20000000
    // out out_data_out@194
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@194
    draw_box_i_llvm_fpga_push_i4_cleanups_push27_0 thei_llvm_fpga_push_i4_cleanups_push27_draw_box117 (
        .in_data_in(SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_D0),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_feedback_stall_out_27),
        .in_keep_going(SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push27_draw_box117_backStall),
        .in_valid_in(SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2(REG,631)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_backEN == 1'b1)
        begin
            redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_q <= $unsigned(SR_SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_D0);
        end
    end

    // redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3(REG,632)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_backEN == 1'b1)
        begin
            redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q <= $unsigned(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_2_q);
        end
    end

    // c_i4_7119(CONSTANT,18)
    assign c_i4_7119_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0(BLACKBOX,100)@192
    // in in_stall_in@20000000
    // out out_data_out@193
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@193
    draw_box_i_llvm_fpga_pop_i4_cleanups_pop27_0 thei_llvm_fpga_pop_i4_cleanups_pop27_draw_box0 (
        .in_data_in(c_i4_7119_q),
        .in_dir(redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_q),
        .in_feedback_in_27(i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i4_cleanups_push27_draw_box117_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_backStall),
        .in_valid_in(SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_3_V8),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0(BITJOIN,831)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_q = i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0(BITSELECT,832)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_q[3:0]);

    // i_first_cleanup_draw_box1_sel_x(BITSELECT,382)@193
    assign i_first_cleanup_draw_box1_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_b[0:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111(BITJOIN,733)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_q = i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_dest_data_out_15_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111(BITSELECT,734)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_q[0:0]);

    // i_exitcond56_draw_box107_cmp_nsign(LOGICAL,414)@193
    assign i_exitcond56_draw_box107_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv54_replace_phi_draw_box15_q[32:32]));

    // i_unnamed_draw_box112(LOGICAL,143)@193
    assign i_unnamed_draw_box112_q = i_exitcond56_draw_box107_cmp_nsign_q & bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_b;

    // i_notcmp_draw_box113(LOGICAL,120)@193
    assign i_notcmp_draw_box113_q = i_unnamed_draw_box112_q ^ VCC_q;

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0(STALLENABLE,1058)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg6 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg7 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg4 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg5 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg6 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg6;
            // Successor 7
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg7 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg7;
            // Successor 8
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg8 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg8;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed0 = (~ (SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed2 = (~ (SR_SE_i_masked_draw_box118_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed3 = (~ (SE_i_first_cleanup_xor101_or_draw_box47_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed4 = (~ (SE_i_first_cleanup_xor102_or_draw_box63_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg4;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed5 = (~ (SE_i_first_cleanup_xor103_or_draw_box77_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg5;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed6 = (~ (SE_i_first_cleanup_xor104_or_draw_box90_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg6;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed7 = (~ (SE_i_first_cleanup_xor105_or_draw_box102_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg7;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed8 = (~ (SE_i_reduction_draw_box_24_draw_box25_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg8;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed4;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg5 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed5;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg6 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed6;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg7 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed7;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_toReg8 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed8;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed4 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or5 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed5 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or4;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or6 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed6 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or5;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or7 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed7 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or6;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_consumed8 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_or7);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg4);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V5 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg5);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V6 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg6);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V7 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg7);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V8 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_fromReg8);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_wireValid = i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_out_valid_out;

    // SE_i_masked_draw_box118(STALLENABLE,1085)
    // Valid signal propagation
    assign SE_i_masked_draw_box118_V0 = SE_i_masked_draw_box118_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_draw_box118_s_tv_0 = SE_in_redist19_i_masked_draw_box118_q_186_fifo_backStall & SE_i_masked_draw_box118_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_draw_box118_backEN = ~ (SE_i_masked_draw_box118_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_draw_box118_v_s_0 = SE_i_masked_draw_box118_backEN & SR_SE_i_masked_draw_box118_V;
    // Backward Stall generation
    assign SE_i_masked_draw_box118_backStall = ~ (SE_i_masked_draw_box118_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_draw_box118_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_draw_box118_backEN == 1'b0)
            begin
                SE_i_masked_draw_box118_R_v_0 <= SE_i_masked_draw_box118_R_v_0 & SE_i_masked_draw_box118_s_tv_0;
            end
            else
            begin
                SE_i_masked_draw_box118_R_v_0 <= SE_i_masked_draw_box118_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_draw_box118(STALLREG,1736)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_draw_box118_r_valid <= 1'b0;
            SR_SE_i_masked_draw_box118_r_data0 <= 1'bx;
            SR_SE_i_masked_draw_box118_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_draw_box118_r_valid <= SE_i_masked_draw_box118_backStall & (SR_SE_i_masked_draw_box118_r_valid | SR_SE_i_masked_draw_box118_i_valid);

            if (SR_SE_i_masked_draw_box118_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_draw_box118_r_data0 <= i_notcmp_draw_box113_q;
                SR_SE_i_masked_draw_box118_r_data1 <= i_first_cleanup_draw_box1_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_draw_box118_and0 = SE_i_unnamed_draw_box112_V1;
    assign SR_SE_i_masked_draw_box118_i_valid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V2 & SR_SE_i_masked_draw_box118_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_draw_box118_backStall = SR_SE_i_masked_draw_box118_r_valid | ~ (SR_SE_i_masked_draw_box118_i_valid);

    // Valid
    assign SR_SE_i_masked_draw_box118_V = SR_SE_i_masked_draw_box118_r_valid == 1'b1 ? SR_SE_i_masked_draw_box118_r_valid : SR_SE_i_masked_draw_box118_i_valid;

    // Data0
    assign SR_SE_i_masked_draw_box118_D0 = SR_SE_i_masked_draw_box118_r_valid == 1'b1 ? SR_SE_i_masked_draw_box118_r_data0 : i_notcmp_draw_box113_q;
    // Data1
    assign SR_SE_i_masked_draw_box118_D1 = SR_SE_i_masked_draw_box118_r_valid == 1'b1 ? SR_SE_i_masked_draw_box118_r_data1 : i_first_cleanup_draw_box1_sel_x_b;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114(STALLENABLE,1075)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_draw_box114_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_consumed1 = (~ (SR_SE_leftShiftStage0_uid545_i_cleanups_shl_draw_box0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_and0 = SE_i_unnamed_draw_box112_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop27_draw_box0_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_and0;

    // SE_i_fpga_indvars_iv54_replace_phi_draw_box15(STALLENABLE,967)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg0 <= '0;
            SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg0 <= SE_i_fpga_indvars_iv54_replace_phi_draw_box15_toReg0;
            // Successor 1
            SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg1 <= SE_i_fpga_indvars_iv54_replace_phi_draw_box15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_consumed0 = (~ (SE_i_unnamed_draw_box112_backStall) & SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireValid) | SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg0;
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_consumed1 = (~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv54_push18_draw_box110_backStall) & SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireValid) | SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg1;
    // Consuming
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_StallValid = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_backStall & SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireValid;
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_toReg0 = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_StallValid & SE_i_fpga_indvars_iv54_replace_phi_draw_box15_consumed0;
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_toReg1 = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_StallValid & SE_i_fpga_indvars_iv54_replace_phi_draw_box15_consumed1;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_or0 = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_consumed0;
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireStall = ~ (SE_i_fpga_indvars_iv54_replace_phi_draw_box15_consumed1 & SE_i_fpga_indvars_iv54_replace_phi_draw_box15_or0);
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_backStall = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireStall;
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_V0 = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireValid & ~ (SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg0);
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_V1 = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireValid & ~ (SE_i_fpga_indvars_iv54_replace_phi_draw_box15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_and0 = SE_redist3_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_192_0_V0;
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_and1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_draw_box37_draw_box13_V1 & SE_i_fpga_indvars_iv54_replace_phi_draw_box15_and0;
    assign SE_i_fpga_indvars_iv54_replace_phi_draw_box15_wireValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv54_pop18_draw_box14_V1 & SE_i_fpga_indvars_iv54_replace_phi_draw_box15_and1;

    // SE_i_unnamed_draw_box112(STALLENABLE,1112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_draw_box112_fromReg0 <= '0;
            SE_i_unnamed_draw_box112_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_draw_box112_fromReg0 <= SE_i_unnamed_draw_box112_toReg0;
            // Successor 1
            SE_i_unnamed_draw_box112_fromReg1 <= SE_i_unnamed_draw_box112_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_draw_box112_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_backStall) & SE_i_unnamed_draw_box112_wireValid) | SE_i_unnamed_draw_box112_fromReg0;
    assign SE_i_unnamed_draw_box112_consumed1 = (~ (SR_SE_i_masked_draw_box118_backStall) & SE_i_unnamed_draw_box112_wireValid) | SE_i_unnamed_draw_box112_fromReg1;
    // Consuming
    assign SE_i_unnamed_draw_box112_StallValid = SE_i_unnamed_draw_box112_backStall & SE_i_unnamed_draw_box112_wireValid;
    assign SE_i_unnamed_draw_box112_toReg0 = SE_i_unnamed_draw_box112_StallValid & SE_i_unnamed_draw_box112_consumed0;
    assign SE_i_unnamed_draw_box112_toReg1 = SE_i_unnamed_draw_box112_StallValid & SE_i_unnamed_draw_box112_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_draw_box112_or0 = SE_i_unnamed_draw_box112_consumed0;
    assign SE_i_unnamed_draw_box112_wireStall = ~ (SE_i_unnamed_draw_box112_consumed1 & SE_i_unnamed_draw_box112_or0);
    assign SE_i_unnamed_draw_box112_backStall = SE_i_unnamed_draw_box112_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_draw_box112_V0 = SE_i_unnamed_draw_box112_wireValid & ~ (SE_i_unnamed_draw_box112_fromReg0);
    assign SE_i_unnamed_draw_box112_V1 = SE_i_unnamed_draw_box112_wireValid & ~ (SE_i_unnamed_draw_box112_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_draw_box112_and0 = SE_i_fpga_indvars_iv54_replace_phi_draw_box15_V0;
    assign SE_i_unnamed_draw_box112_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_V1 & SE_i_unnamed_draw_box112_and0;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg(STALLFIFO,1699)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(187),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111(STALLENABLE,996)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_consumed1 = (~ (SE_i_unnamed_draw_box112_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111(BLACKBOX,69)@193
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i1_unnamed_40_draw_box0 thei_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_V0),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_dest_data_out_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28(STALLENABLE,1590)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_draw_box40_draw_box111_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_out;

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg(STALLFIFO,1731)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V27;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_28_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(193),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg(STALLFIFO,1730)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V26;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_27_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(188),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg(STALLFIFO,1729)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V25;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_26_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(348),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg(STALLFIFO,1728)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V24;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_25_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(348),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg(STALLFIFO,1727)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V23;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_24_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(285),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg(STALLFIFO,1726)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V22;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_23_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(188),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg(STALLFIFO,1725)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V21;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_22_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(317),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg(STALLFIFO,1724)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V20;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_21_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(317),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg(STALLFIFO,1723)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V19;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_20_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(254),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg(STALLFIFO,1722)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V18;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_19_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(188),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg(STALLFIFO,1721)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V17;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_18_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(286),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg(STALLFIFO,1720)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V16;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_17_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(286),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg(STALLFIFO,1719)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V15;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_16_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(285),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg(STALLFIFO,1718)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V14;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_15_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(188),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg(STALLFIFO,1717)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V13;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_14_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(255),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg(STALLFIFO,1716)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V12;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_13_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(255),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg(STALLFIFO,1715)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V11;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_12_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(254),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg(STALLFIFO,1714)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V10;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_11_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(193),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg(STALLFIFO,1713)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V9;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_10_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(224),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg(STALLFIFO,1712)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V8;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_9_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(224),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg(STALLFIFO,1711)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V7;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_8_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(192),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg(STALLFIFO,1710)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V6;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_7_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(188),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg(STALLFIFO,1709)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V5;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(193),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg(STALLFIFO,1708)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V4;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(193),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg(STALLFIFO,1707)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V3;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(192),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,1705)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(193),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1(STALLENABLE,1536)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,1704)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(188),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,838)
    assign bubble_join_stall_entry_q = in_forked90;

    // bubble_select_stall_entry(BITSELECT,839)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,1114)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = draw_box_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // draw_box_B4_merge_reg_aunroll_x(BLACKBOX,294)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    draw_box_B4_merge_reg thedraw_box_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_draw_box_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(draw_box_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(draw_box_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_draw_box_B4_merge_reg_aunroll_x(STALLENABLE,1126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg10 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg11 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg12 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg13 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg14 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg15 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg16 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg17 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg18 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg19 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg20 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg21 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg22 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg23 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg24 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg25 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg26 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg27 <= '0;
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg28 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg8 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg9 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg10 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg10;
            // Successor 11
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg11 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg11;
            // Successor 12
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg12 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg12;
            // Successor 13
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg13 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg13;
            // Successor 14
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg14 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg14;
            // Successor 15
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg15 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg15;
            // Successor 16
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg16 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg16;
            // Successor 17
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg17 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg17;
            // Successor 18
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg18 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg18;
            // Successor 19
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg19 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg19;
            // Successor 20
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg20 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg20;
            // Successor 21
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg21 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg21;
            // Successor 22
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg22 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg22;
            // Successor 23
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg23 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg23;
            // Successor 24
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg24 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg24;
            // Successor 25
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg25 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg25;
            // Successor 26
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg26 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg26;
            // Successor 27
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg27 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg27;
            // Successor 28
            SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg28 <= SE_out_draw_box_B4_merge_reg_aunroll_x_toReg28;
        end
    end
    // Input Stall processing
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed6 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_7_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed7 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_8_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg7;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed8 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_9_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg8;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed9 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_10_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg9;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed10 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_11_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg10;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed11 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_12_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg11;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed12 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_13_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg12;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed13 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_14_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg13;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed14 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_15_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg14;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed15 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_16_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg15;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed16 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_17_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg16;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed17 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_18_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg17;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed18 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_19_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg18;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed19 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_20_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg19;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed20 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_21_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg20;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed21 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_22_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg21;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed22 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_23_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg22;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed23 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_24_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg23;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed24 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_25_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg24;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed25 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_26_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg25;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed26 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_27_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg26;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed27 = (~ (bubble_out_draw_box_B4_merge_reg_aunroll_x_28_reg_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg27;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_consumed28 = (~ (redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_out) & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid) | SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg28;
    // Consuming
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid = SE_out_draw_box_B4_merge_reg_aunroll_x_backStall & SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg0 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg1 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg2 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg3 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg4 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg5 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg6 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg7 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed7;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg8 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed8;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg9 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed9;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg10 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed10;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg11 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed11;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg12 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed12;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg13 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed13;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg14 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed14;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg15 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed15;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg16 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed16;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg17 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed17;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg18 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed18;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg19 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed19;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg20 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed20;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg21 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed21;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg22 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed22;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg23 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed23;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg24 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed24;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg25 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed25;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg26 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed26;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg27 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed27;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_toReg28 = SE_out_draw_box_B4_merge_reg_aunroll_x_StallValid & SE_out_draw_box_B4_merge_reg_aunroll_x_consumed28;
    // Backward Stall generation
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or0 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or1 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed1 & SE_out_draw_box_B4_merge_reg_aunroll_x_or0;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or2 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed2 & SE_out_draw_box_B4_merge_reg_aunroll_x_or1;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or3 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed3 & SE_out_draw_box_B4_merge_reg_aunroll_x_or2;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or4 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed4 & SE_out_draw_box_B4_merge_reg_aunroll_x_or3;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or5 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed5 & SE_out_draw_box_B4_merge_reg_aunroll_x_or4;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or6 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed6 & SE_out_draw_box_B4_merge_reg_aunroll_x_or5;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or7 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed7 & SE_out_draw_box_B4_merge_reg_aunroll_x_or6;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or8 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed8 & SE_out_draw_box_B4_merge_reg_aunroll_x_or7;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or9 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed9 & SE_out_draw_box_B4_merge_reg_aunroll_x_or8;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or10 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed10 & SE_out_draw_box_B4_merge_reg_aunroll_x_or9;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or11 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed11 & SE_out_draw_box_B4_merge_reg_aunroll_x_or10;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or12 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed12 & SE_out_draw_box_B4_merge_reg_aunroll_x_or11;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or13 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed13 & SE_out_draw_box_B4_merge_reg_aunroll_x_or12;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or14 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed14 & SE_out_draw_box_B4_merge_reg_aunroll_x_or13;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or15 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed15 & SE_out_draw_box_B4_merge_reg_aunroll_x_or14;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or16 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed16 & SE_out_draw_box_B4_merge_reg_aunroll_x_or15;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or17 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed17 & SE_out_draw_box_B4_merge_reg_aunroll_x_or16;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or18 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed18 & SE_out_draw_box_B4_merge_reg_aunroll_x_or17;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or19 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed19 & SE_out_draw_box_B4_merge_reg_aunroll_x_or18;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or20 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed20 & SE_out_draw_box_B4_merge_reg_aunroll_x_or19;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or21 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed21 & SE_out_draw_box_B4_merge_reg_aunroll_x_or20;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or22 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed22 & SE_out_draw_box_B4_merge_reg_aunroll_x_or21;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or23 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed23 & SE_out_draw_box_B4_merge_reg_aunroll_x_or22;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or24 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed24 & SE_out_draw_box_B4_merge_reg_aunroll_x_or23;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or25 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed25 & SE_out_draw_box_B4_merge_reg_aunroll_x_or24;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or26 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed26 & SE_out_draw_box_B4_merge_reg_aunroll_x_or25;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_or27 = SE_out_draw_box_B4_merge_reg_aunroll_x_consumed27 & SE_out_draw_box_B4_merge_reg_aunroll_x_or26;
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_consumed28 & SE_out_draw_box_B4_merge_reg_aunroll_x_or27);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_backStall = SE_out_draw_box_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V0 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V1 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V2 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V3 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V4 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V5 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V6 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V7 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg7);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V8 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg8);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V9 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg9);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V10 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg10);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V11 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg11);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V12 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg12);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V13 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg13);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V14 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg14);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V15 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg15);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V16 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg16);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V17 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg17);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V18 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg18);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V19 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg19);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V20 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg20);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V21 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg21);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V22 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg22);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V23 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg23);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V24 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg24);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V25 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg25);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V26 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg26);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V27 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg27);
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_V28 = SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_draw_box_B4_merge_reg_aunroll_x_fromReg28);
    // Computing multiple Valid(s)
    assign SE_out_draw_box_B4_merge_reg_aunroll_x_wireValid = draw_box_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg(STALLFIFO,1706)
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V2;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(188),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3(STALLENABLE,1540)
    // Valid signal propagation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_stall_out | ~ (SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_wireValid = bubble_out_draw_box_B4_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16(BLACKBOX,70)@188
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_0 thei_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16(BITJOIN,737)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_q = i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16(BITSELECT,738)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_q[31:0]);

    // i_mul98_draw_box17_bs2_merged_bit_select(BITSELECT,582)@188
    assign i_mul98_draw_box17_bs2_merged_bit_select_b = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_b[31:18];
    assign i_mul98_draw_box17_bs2_merged_bit_select_c = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_b[17:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10(BITJOIN,752)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_q = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10(BITSELECT,753)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11(BITJOIN,824)
    assign bubble_join_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_q = i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11(BITSELECT,825)
    assign bubble_select_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_q[31:0]);

    // i_i_1103_replace_phi_draw_box12(MUX,42)@188
    assign i_i_1103_replace_phi_draw_box12_s = redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_q;
    always @(i_i_1103_replace_phi_draw_box12_s or bubble_select_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_b)
    begin
        unique case (i_i_1103_replace_phi_draw_box12_s)
            1'b0 : i_i_1103_replace_phi_draw_box12_q = bubble_select_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_b;
            1'b1 : i_i_1103_replace_phi_draw_box12_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_b;
            default : i_i_1103_replace_phi_draw_box12_q = 32'b0;
        endcase
    end

    // i_mul98_draw_box17_bs1_merged_bit_select(BITSELECT,581)@188
    assign i_mul98_draw_box17_bs1_merged_bit_select_b = i_i_1103_replace_phi_draw_box12_q[31:18];
    assign i_mul98_draw_box17_bs1_merged_bit_select_c = i_i_1103_replace_phi_draw_box12_q[17:0];

    // SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16(STALLENABLE,998)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_backStall = SR_SE_i_mul98_draw_box17_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_wireValid = i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_out_valid_out;

    // SE_i_mul98_draw_box17_im0_cma(STALLENABLE,1229)
    // Valid signal propagation
    assign SE_i_mul98_draw_box17_im0_cma_V0 = SE_i_mul98_draw_box17_im0_cma_R_v_0;
    assign SE_i_mul98_draw_box17_im0_cma_V1 = SE_i_mul98_draw_box17_im0_cma_R_v_1;
    assign SE_i_mul98_draw_box17_im0_cma_V2 = SE_i_mul98_draw_box17_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul98_draw_box17_im0_cma_s_tv_0 = bubble_out_i_mul98_draw_box17_im0_cma_data_reg_stall_out & SE_i_mul98_draw_box17_im0_cma_R_v_0;
    assign SE_i_mul98_draw_box17_im0_cma_s_tv_1 = bubble_out_i_mul98_draw_box17_im8_cma_data_reg_stall_out & SE_i_mul98_draw_box17_im0_cma_R_v_1;
    assign SE_i_mul98_draw_box17_im0_cma_s_tv_2 = bubble_out_i_mul98_draw_box17_ma3_cma_data_reg_stall_out & SE_i_mul98_draw_box17_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul98_draw_box17_im0_cma_or0 = SE_i_mul98_draw_box17_im0_cma_s_tv_0;
    assign SE_i_mul98_draw_box17_im0_cma_or1 = SE_i_mul98_draw_box17_im0_cma_s_tv_1 | SE_i_mul98_draw_box17_im0_cma_or0;
    assign SE_i_mul98_draw_box17_im0_cma_backEN = ~ (SE_i_mul98_draw_box17_im0_cma_s_tv_2 | SE_i_mul98_draw_box17_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul98_draw_box17_im0_cma_v_s_0 = SE_i_mul98_draw_box17_im0_cma_backEN & SR_SE_i_mul98_draw_box17_im0_cma_V;
    // Backward Stall generation
    assign SE_i_mul98_draw_box17_im0_cma_backStall = ~ (SE_i_mul98_draw_box17_im0_cma_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul98_draw_box17_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul98_draw_box17_im0_cma_R_s_1 <= 1'b0;
            SE_i_mul98_draw_box17_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul98_draw_box17_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul98_draw_box17_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul98_draw_box17_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul98_draw_box17_im0_cma_R_s_0 <= SE_i_mul98_draw_box17_im0_cma_v_s_0;
            end

            if (SE_i_mul98_draw_box17_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul98_draw_box17_im0_cma_R_s_1 <= SE_i_mul98_draw_box17_im0_cma_R_s_0;
            end

            if (SE_i_mul98_draw_box17_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul98_draw_box17_im0_cma_R_v_0 <= SE_i_mul98_draw_box17_im0_cma_R_v_0 & SE_i_mul98_draw_box17_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul98_draw_box17_im0_cma_R_v_0 <= SE_i_mul98_draw_box17_im0_cma_R_s_1;
            end

            if (SE_i_mul98_draw_box17_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul98_draw_box17_im0_cma_R_v_1 <= SE_i_mul98_draw_box17_im0_cma_R_v_1 & SE_i_mul98_draw_box17_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul98_draw_box17_im0_cma_R_v_1 <= SE_i_mul98_draw_box17_im0_cma_R_s_1;
            end

            if (SE_i_mul98_draw_box17_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul98_draw_box17_im0_cma_R_v_2 <= SE_i_mul98_draw_box17_im0_cma_R_v_2 & SE_i_mul98_draw_box17_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul98_draw_box17_im0_cma_R_v_2 <= SE_i_mul98_draw_box17_im0_cma_R_s_1;
            end

        end
    end

    // SR_SE_i_mul98_draw_box17_im0_cma(STALLREG,1738)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul98_draw_box17_im0_cma_r_valid <= 1'b0;
            SR_SE_i_mul98_draw_box17_im0_cma_r_data0 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul98_draw_box17_im0_cma_r_data1 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul98_draw_box17_im0_cma_r_data2 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul98_draw_box17_im0_cma_r_data3 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul98_draw_box17_im0_cma_r_data4 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul98_draw_box17_im0_cma_r_data5 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul98_draw_box17_im0_cma_r_data6 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul98_draw_box17_im0_cma_r_data7 <= 18'bxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul98_draw_box17_im0_cma_r_valid <= SE_i_mul98_draw_box17_im0_cma_backStall & (SR_SE_i_mul98_draw_box17_im0_cma_r_valid | SR_SE_i_mul98_draw_box17_im0_cma_i_valid);

            if (SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul98_draw_box17_im0_cma_r_data0 <= $unsigned(i_mul98_draw_box17_bs1_merged_bit_select_b);
                SR_SE_i_mul98_draw_box17_im0_cma_r_data1 <= $unsigned(i_mul98_draw_box17_bs1_merged_bit_select_b);
                SR_SE_i_mul98_draw_box17_im0_cma_r_data2 <= $unsigned(i_mul98_draw_box17_bs2_merged_bit_select_b);
                SR_SE_i_mul98_draw_box17_im0_cma_r_data3 <= $unsigned(i_mul98_draw_box17_bs2_merged_bit_select_b);
                SR_SE_i_mul98_draw_box17_im0_cma_r_data4 <= $unsigned(i_mul98_draw_box17_bs1_merged_bit_select_c);
                SR_SE_i_mul98_draw_box17_im0_cma_r_data5 <= $unsigned(i_mul98_draw_box17_bs1_merged_bit_select_c);
                SR_SE_i_mul98_draw_box17_im0_cma_r_data6 <= $unsigned(i_mul98_draw_box17_bs2_merged_bit_select_c);
                SR_SE_i_mul98_draw_box17_im0_cma_r_data7 <= $unsigned(i_mul98_draw_box17_bs2_merged_bit_select_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul98_draw_box17_im0_cma_and0 = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_V0;
    assign SR_SE_i_mul98_draw_box17_im0_cma_i_valid = SE_out_i_llvm_fpga_ffwd_dest_i32_a_fca_0_extract73_draw_box16_V0 & SR_SE_i_mul98_draw_box17_im0_cma_and0;
    // Stall signal propagation
    assign SR_SE_i_mul98_draw_box17_im0_cma_backStall = SR_SE_i_mul98_draw_box17_im0_cma_r_valid | ~ (SR_SE_i_mul98_draw_box17_im0_cma_i_valid);

    // Valid
    assign SR_SE_i_mul98_draw_box17_im0_cma_V = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_valid : SR_SE_i_mul98_draw_box17_im0_cma_i_valid;

    // Data0
    assign SR_SE_i_mul98_draw_box17_im0_cma_D0 = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_data0 : i_mul98_draw_box17_bs1_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mul98_draw_box17_im0_cma_D1 = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_data1 : i_mul98_draw_box17_bs1_merged_bit_select_b;
    // Data2
    assign SR_SE_i_mul98_draw_box17_im0_cma_D2 = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_data2 : i_mul98_draw_box17_bs2_merged_bit_select_b;
    // Data3
    assign SR_SE_i_mul98_draw_box17_im0_cma_D3 = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_data3 : i_mul98_draw_box17_bs2_merged_bit_select_b;
    // Data4
    assign SR_SE_i_mul98_draw_box17_im0_cma_D4 = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_data4 : i_mul98_draw_box17_bs1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_mul98_draw_box17_im0_cma_D5 = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_data5 : i_mul98_draw_box17_bs1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_mul98_draw_box17_im0_cma_D6 = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_data6 : i_mul98_draw_box17_bs2_merged_bit_select_c;
    // Data7
    assign SR_SE_i_mul98_draw_box17_im0_cma_D7 = SR_SE_i_mul98_draw_box17_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul98_draw_box17_im0_cma_r_data7 : i_mul98_draw_box17_bs2_merged_bit_select_c;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10(BLACKBOX,75)@188
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_unnamed_36_draw_box0 thei_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_backStall),
        .in_valid_in(SE_out_bubble_out_draw_box_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11(STALLENABLE,1054)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_consumed0 = (~ (SR_SE_i_mul98_draw_box17_im0_cma_backStall) & SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_backStall) & SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_StallValid = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_backStall & SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_StallValid & SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_StallValid & SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_or0 = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_backStall = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_V0 = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_V1 = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_and0 = i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_and1 = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box36_draw_box10_out_valid_out & SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_and0;
    assign SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_wireValid = SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_V0 & SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_and1;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i32_i_1103_push19_draw_box106(STALLENABLE,1078)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_wireValid = i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_valid_out;

    // c_i32_1125(CONSTANT,13)
    assign c_i32_1125_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc163_draw_box105(ADD,55)@188
    assign i_inc163_draw_box105_a = {1'b0, i_i_1103_replace_phi_draw_box12_q};
    assign i_inc163_draw_box105_b = {1'b0, c_i32_1125_q};
    assign i_inc163_draw_box105_o = $unsigned(i_inc163_draw_box105_a) + $unsigned(i_inc163_draw_box105_b);
    assign i_inc163_draw_box105_q = i_inc163_draw_box105_o[32:0];

    // bgTrunc_i_inc163_draw_box105_sel_x(BITSELECT,291)@188
    assign bgTrunc_i_inc163_draw_box105_sel_x_b = i_inc163_draw_box105_q[31:0];

    // i_llvm_fpga_push_i32_i_1103_push19_draw_box106(BLACKBOX,110)@188
    // in in_stall_in@20000000
    // out out_data_out@189
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@189
    draw_box_i_llvm_fpga_push_i32_i_1103_push19_0 thei_llvm_fpga_push_i32_i_1103_push19_draw_box106 (
        .in_data_in(bgTrunc_i_inc163_draw_box105_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_feedback_stall_out_19),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_draw_box4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef123(CONSTANT,14)
    assign c_i32_undef123_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11(BLACKBOX,98)@187
    // in in_stall_in@20000000
    // out out_data_out@188
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@188
    draw_box_i_llvm_fpga_pop_i32_i_1103_pop19_0 thei_llvm_fpga_pop_i32_i_1103_pop19_draw_box11 (
        .in_data_in(c_i32_undef123_q),
        .in_dir(bubble_select_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_b),
        .in_feedback_in_19(i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_i_1103_push19_draw_box106_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_backStall),
        .in_valid_in(SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0(STALLENABLE,1242)
    // Valid signal propagation
    assign SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_V0 = SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_0;
    assign SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_V1 = SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_backStall & SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_0;
    assign SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_s_tv_1 = SE_redist2_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_191_0_backStall & SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_or0 = SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_s_tv_0;
    assign SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backEN = ~ (SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_s_tv_1 | SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_v_s_0 = SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backEN & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V0;
    // Backward Stall generation
    assign SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backStall = ~ (SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_0 <= 1'b0;
            SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backEN == 1'b0)
            begin
                SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_0 <= SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_0 & SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_s_tv_0;
            end
            else
            begin
                SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_0 <= SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_v_s_0;
            end

            if (SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backEN == 1'b0)
            begin
                SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_1 <= SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_1 & SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_s_tv_1;
            end
            else
            begin
                SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_R_v_1 <= SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_v_s_0;
            end

        end
    end

    // bubble_join_draw_box_B4_merge_reg_aunroll_x(BITJOIN,842)
    assign bubble_join_draw_box_B4_merge_reg_aunroll_x_q = draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_draw_box_B4_merge_reg_aunroll_x(BITSELECT,843)
    assign bubble_select_draw_box_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_draw_box_B4_merge_reg_aunroll_x_q[0:0]);

    // redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo(STALLFIFO,627)
    assign redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_in = SE_out_draw_box_B4_merge_reg_aunroll_x_V28;
    assign redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_in = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_backStall;
    assign redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_data_in = bubble_select_draw_box_B4_merge_reg_aunroll_x_b;
    assign redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_in_bitsignaltemp = redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_in[0];
    assign redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_in_bitsignaltemp = redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_in[0];
    assign redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_out[0] = redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_out_bitsignaltemp;
    assign redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_out[0] = redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(187),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo (
        .valid_in(redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_draw_box_B4_merge_reg_aunroll_x_b),
        .valid_out(redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo(STALLENABLE,1241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg0 <= '0;
            SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg1 <= '0;
            SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg0 <= SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg0;
            // Successor 1
            SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg1 <= SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg1;
            // Successor 2
            SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg2 <= SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed0 = (~ (SE_redist1_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_187_0_backStall) & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid) | SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg0;
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_draw_box4_out_stall_out) & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid) | SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg1;
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed2 = (~ (i_llvm_fpga_pop_i32_i_1103_pop19_draw_box11_out_stall_out) & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid) | SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg2;
    // Consuming
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_StallValid = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_backStall & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid;
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg0 = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_StallValid & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed0;
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg1 = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_StallValid & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed1;
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_toReg2 = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_StallValid & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_or0 = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed0;
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_or1 = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed1 & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_or0;
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireStall = ~ (SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_consumed2 & SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_or1);
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_backStall = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V0 = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid & ~ (SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg0);
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V1 = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid & ~ (SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg1);
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V2 = SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid & ~ (SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_wireValid = redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4(STALLENABLE,1040)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_draw_box4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_i_1103_push19_draw_box106_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed2 = (~ (SE_redist20_i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out_5_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_or1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_wireValid = i_llvm_fpga_pipeline_keep_going_draw_box4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_draw_box114(STALLENABLE,1076)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_draw_box114_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_draw_box114_wireValid = i_llvm_fpga_push_i1_notexitcond_draw_box114_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_draw_box114(BLACKBOX,109)@193
    // in in_stall_in@20000000
    // out out_data_out@194
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@194
    draw_box_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_draw_box114 (
        .in_data_in(i_unnamed_draw_box112_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_draw_box4_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_draw_box1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_draw_box114_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_draw_box114_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_draw_box114_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_draw_box114_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_draw_box114_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_draw_box114_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_draw_box9(STALLENABLE,1062)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_draw_box9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_draw_box9_wireValid = i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_draw_box9(BLACKBOX,102)@374
    // in in_stall_in@20000000
    // out out_data_out@375
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@375
    draw_box_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_draw_box9 (
        .in_data_in(SR_SE_i_next_initerations_draw_box6_vt_join_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_draw_box4_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_draw_box6_vt_join_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_draw_box9_backStall),
        .in_valid_in(SE_i_next_initerations_draw_box6_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo(BITJOIN,882)
    assign bubble_join_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_q = redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_data_out;

    // bubble_select_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo(BITSELECT,883)
    assign bubble_select_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_b = $unsigned(bubble_join_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_draw_box4(BLACKBOX,91)@187
    // in in_stall_in@20000000
    // out out_data_out@188
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@188
    draw_box_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_draw_box4 (
        .in_data_in(bubble_select_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_draw_box9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_draw_box114_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_draw_box114_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_draw_box4_backStall),
        .in_valid_in(SE_out_redist0_draw_box_B4_merge_reg_aunroll_x_out_data_out_0_tpl_186_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_draw_box4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_draw_box4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_draw_box4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_draw_box4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_draw_box4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_draw_box4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_draw_box4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_draw_box4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,22)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_draw_box4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_draw_box4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_draw_box4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,264)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_draw_box4_out_pipeline_valid_out;

    // sync_out(GPOUT,282)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,296)
    assign out_memdep_26_draw_box_avm_address = i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_address;
    assign out_memdep_26_draw_box_avm_enable = i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_enable;
    assign out_memdep_26_draw_box_avm_read = i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_read;
    assign out_memdep_26_draw_box_avm_write = i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_write;
    assign out_memdep_26_draw_box_avm_writedata = i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_writedata;
    assign out_memdep_26_draw_box_avm_byteenable = i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_byteenable;
    assign out_memdep_26_draw_box_avm_burstcount = i_llvm_fpga_mem_memdep_26_draw_box35_out_memdep_26_draw_box_avm_burstcount;

    // bubble_join_redist19_i_masked_draw_box118_q_186_fifo(BITJOIN,918)
    assign bubble_join_redist19_i_masked_draw_box118_q_186_fifo_q = redist19_i_masked_draw_box118_q_186_fifo_data_out;

    // bubble_select_redist19_i_masked_draw_box118_q_186_fifo(BITSELECT,919)
    assign bubble_select_redist19_i_masked_draw_box118_q_186_fifo_b = $unsigned(bubble_join_redist19_i_masked_draw_box118_q_186_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,298)@379
    assign out_masked = bubble_select_redist19_i_masked_draw_box118_q_186_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop26_draw_box5_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,300)
    assign out_lsu_memdep_26_o_active = i_llvm_fpga_mem_memdep_26_draw_box35_out_lsu_memdep_26_o_active;

    // dupName_2_ext_sig_sync_out_x(GPOUT,303)
    assign out_memdep_28_draw_box_avm_address = i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_address;
    assign out_memdep_28_draw_box_avm_enable = i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_enable;
    assign out_memdep_28_draw_box_avm_read = i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_read;
    assign out_memdep_28_draw_box_avm_write = i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_write;
    assign out_memdep_28_draw_box_avm_writedata = i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_writedata;
    assign out_memdep_28_draw_box_avm_byteenable = i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_byteenable;
    assign out_memdep_28_draw_box_avm_burstcount = i_llvm_fpga_mem_memdep_28_draw_box48_out_memdep_28_draw_box_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,306)
    assign out_lsu_memdep_28_o_active = i_llvm_fpga_mem_memdep_28_draw_box48_out_lsu_memdep_28_o_active;

    // dupName_4_ext_sig_sync_out_x(GPOUT,309)
    assign out_memdep_32_draw_box_avm_address = i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_address;
    assign out_memdep_32_draw_box_avm_enable = i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_enable;
    assign out_memdep_32_draw_box_avm_read = i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_read;
    assign out_memdep_32_draw_box_avm_write = i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_write;
    assign out_memdep_32_draw_box_avm_writedata = i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_writedata;
    assign out_memdep_32_draw_box_avm_byteenable = i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_byteenable;
    assign out_memdep_32_draw_box_avm_burstcount = i_llvm_fpga_mem_memdep_32_draw_box64_out_memdep_32_draw_box_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,311)
    assign out_lsu_memdep_32_o_active = i_llvm_fpga_mem_memdep_32_draw_box64_out_lsu_memdep_32_o_active;

    // dupName_6_ext_sig_sync_out_x(GPOUT,312)
    assign out_memdep_37_draw_box_avm_address = i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_address;
    assign out_memdep_37_draw_box_avm_enable = i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_enable;
    assign out_memdep_37_draw_box_avm_read = i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_read;
    assign out_memdep_37_draw_box_avm_write = i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_write;
    assign out_memdep_37_draw_box_avm_writedata = i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_writedata;
    assign out_memdep_37_draw_box_avm_byteenable = i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_byteenable;
    assign out_memdep_37_draw_box_avm_burstcount = i_llvm_fpga_mem_memdep_37_draw_box78_out_memdep_37_draw_box_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,313)
    assign out_lsu_memdep_37_o_active = i_llvm_fpga_mem_memdep_37_draw_box78_out_lsu_memdep_37_o_active;

    // dupName_8_ext_sig_sync_out_x(GPOUT,314)
    assign out_memdep_42_draw_box_avm_address = i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_address;
    assign out_memdep_42_draw_box_avm_enable = i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_enable;
    assign out_memdep_42_draw_box_avm_read = i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_read;
    assign out_memdep_42_draw_box_avm_write = i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_write;
    assign out_memdep_42_draw_box_avm_writedata = i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_writedata;
    assign out_memdep_42_draw_box_avm_byteenable = i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_byteenable;
    assign out_memdep_42_draw_box_avm_burstcount = i_llvm_fpga_mem_memdep_42_draw_box91_out_memdep_42_draw_box_avm_burstcount;

    // dupName_9_ext_sig_sync_out_x(GPOUT,315)
    assign out_lsu_memdep_42_o_active = i_llvm_fpga_mem_memdep_42_draw_box91_out_lsu_memdep_42_o_active;

    // dupName_10_ext_sig_sync_out_x(GPOUT,316)
    assign out_memdep_47_draw_box_avm_address = i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_address;
    assign out_memdep_47_draw_box_avm_enable = i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_enable;
    assign out_memdep_47_draw_box_avm_read = i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_read;
    assign out_memdep_47_draw_box_avm_write = i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_write;
    assign out_memdep_47_draw_box_avm_writedata = i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_writedata;
    assign out_memdep_47_draw_box_avm_byteenable = i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_byteenable;
    assign out_memdep_47_draw_box_avm_burstcount = i_llvm_fpga_mem_memdep_47_draw_box103_out_memdep_47_draw_box_avm_burstcount;

    // dupName_11_ext_sig_sync_out_x(GPOUT,317)
    assign out_lsu_memdep_47_o_active = i_llvm_fpga_mem_memdep_47_draw_box103_out_lsu_memdep_47_o_active;

endmodule
