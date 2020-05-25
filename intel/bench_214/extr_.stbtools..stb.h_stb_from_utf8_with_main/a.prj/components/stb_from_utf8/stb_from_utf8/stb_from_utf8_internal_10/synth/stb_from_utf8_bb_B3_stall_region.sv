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

// SystemVerilog created from stb_from_utf8_bb_B3_stall_region
// SystemVerilog created on Sun May 24 22:41:05 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stb_from_utf8_bb_B3_stall_region (
    input wire [63:0] in_memdep_1_stb_from_utf8_avm_readdata,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_writeack,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_memdep_1_stb_from_utf8_avm_readdatavalid,
    output wire [63:0] out_memdep_1_stb_from_utf8_avm_address,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_enable,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_read,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_write,
    output wire [63:0] out_memdep_1_stb_from_utf8_avm_writedata,
    output wire [7:0] out_memdep_1_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_memdep_1_stb_from_utf8_avm_burstcount,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_return_stb_from_utf8_i_fifoready,
    output wire [0:0] out_lsu_memdep_1_o_active,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_iowr_bl_return_stb_from_utf8_o_fifodata,
    output wire [0:0] out_iowr_bl_return_stb_from_utf8_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_079_q;
    wire [31:0] c_i32_168_q;
    wire [31:0] c_i32_375_q;
    wire [31:0] c_i32_380_q;
    wire [31:0] c_i32_574_q;
    wire [31:0] c_i32_773_q;
    wire [63:0] c_i64_078_q;
    wire [0:0] i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_qi;
    reg [0:0] i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_q;
    wire [0:0] i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_qi;
    reg [0:0] i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q;
    wire [0:0] i_idxprom162_stb_from_utf843_s;
    reg [63:0] i_idxprom162_stb_from_utf843_q;
    wire [63:0] i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_iowr_bl_return_stb_from_utf8_o_fifodata;
    wire [0:0] i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_iowr_bl_return_stb_from_utf8_o_fifovalid;
    wire [0:0] i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_ack;
    wire [0:0] i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_stall;
    wire [0:0] i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_valid;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_lsu_memdep_1_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_valid_out;
    wire [0:0] i_not_while_body_branch_to_dummy_stb_from_utf831_q;
    wire [0:0] i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_q;
    wire [0:0] i_reduction_stb_from_utf8_138_stb_from_utf813_q;
    wire [0:0] i_reduction_stb_from_utf8_139_stb_from_utf814_q;
    wire [0:0] i_reduction_stb_from_utf8_140_stb_from_utf815_q;
    wire [0:0] i_reduction_stb_from_utf8_141_stb_from_utf832_qi;
    reg [0:0] i_reduction_stb_from_utf8_141_stb_from_utf832_q;
    wire [0:0] i_reduction_stb_from_utf8_142_stb_from_utf833_q;
    wire [0:0] i_reduction_stb_from_utf8_143_stb_from_utf834_q;
    wire [0:0] i_reduction_stb_from_utf8_144_stb_from_utf835_q;
    wire [0:0] i_reduction_stb_from_utf8_145_stb_from_utf836_q;
    wire [0:0] i_reduction_stb_from_utf8_146_stb_from_utf858_q;
    wire [0:0] i_reduction_stb_from_utf8_147_stb_from_utf859_q;
    wire [0:0] i_reduction_stb_from_utf8_148_stb_from_utf860_q;
    wire [0:0] i_reduction_stb_from_utf8_149_stb_from_utf861_q;
    wire [0:0] i_select295_stb_from_utf865_s;
    reg [63:0] i_select295_stb_from_utf865_q;
    wire [31:0] i_unnamed_stb_from_utf81_q;
    wire [32:0] i_unnamed_stb_from_utf817_a;
    wire [32:0] i_unnamed_stb_from_utf817_b;
    logic [32:0] i_unnamed_stb_from_utf817_o;
    wire [32:0] i_unnamed_stb_from_utf817_q;
    wire [33:0] i_unnamed_stb_from_utf818_a;
    wire [33:0] i_unnamed_stb_from_utf818_b;
    logic [33:0] i_unnamed_stb_from_utf818_o;
    wire [0:0] i_unnamed_stb_from_utf818_c;
    wire [31:0] i_unnamed_stb_from_utf81_vt_join_q;
    wire [30:0] i_unnamed_stb_from_utf81_vt_select_31_b;
    wire [0:0] i_unnamed_stb_from_utf82_q;
    wire [32:0] i_unnamed_stb_from_utf820_a;
    wire [32:0] i_unnamed_stb_from_utf820_b;
    logic [32:0] i_unnamed_stb_from_utf820_o;
    wire [32:0] i_unnamed_stb_from_utf820_q;
    wire [33:0] i_unnamed_stb_from_utf821_a;
    wire [33:0] i_unnamed_stb_from_utf821_b;
    logic [33:0] i_unnamed_stb_from_utf821_o;
    wire [0:0] i_unnamed_stb_from_utf821_c;
    wire [32:0] i_unnamed_stb_from_utf823_a;
    wire [32:0] i_unnamed_stb_from_utf823_b;
    logic [32:0] i_unnamed_stb_from_utf823_o;
    wire [32:0] i_unnamed_stb_from_utf823_q;
    wire [33:0] i_unnamed_stb_from_utf824_a;
    wire [33:0] i_unnamed_stb_from_utf824_b;
    logic [33:0] i_unnamed_stb_from_utf824_o;
    wire [0:0] i_unnamed_stb_from_utf824_c;
    wire [0:0] i_unnamed_stb_from_utf846_q;
    wire [0:0] i_unnamed_stb_from_utf848_q;
    wire [31:0] i_unnamed_stb_from_utf851_q;
    wire [1:0] i_unnamed_stb_from_utf851_vt_const_1_q;
    wire [31:0] i_unnamed_stb_from_utf851_vt_join_q;
    wire [29:0] i_unnamed_stb_from_utf851_vt_select_31_b;
    wire [0:0] i_unnamed_stb_from_utf852_q;
    wire [0:0] i_unnamed_stb_from_utf854_q;
    wire [0:0] i_unnamed_stb_from_utf856_q;
    wire [0:0] i_while_body_branch_to_dummy19_stb_from_utf826_qi;
    reg [0:0] i_while_body_branch_to_dummy19_stb_from_utf826_q;
    wire [0:0] i_while_body_branch_to_dummy33_stb_from_utf811_q;
    wire [0:0] i_while_body_branch_to_dummy35_stb_from_utf88_q;
    wire [0:0] i_while_body_branch_to_dummy37_stb_from_utf85_q;
    wire [0:0] i_while_body_branch_to_dummy_stb_from_utf829_q;
    wire [31:0] bgTrunc_i_unnamed_stb_from_utf817_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_stb_from_utf820_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_stb_from_utf823_sel_x_b;
    wire [31:0] c_i32_1071_recast_x_q;
    wire [31:0] c_i32_1170_recast_x_q;
    wire [31:0] c_i32_1369_recast_x_q;
    wire [31:0] c_i32_276_recast_x_q;
    wire [31:0] c_i32_781_recast_x_q;
    wire [31:0] c_i32_972_recast_x_q;
    wire [64:0] i_arrayidx163_stb_from_utf80_add_x_a;
    wire [64:0] i_arrayidx163_stb_from_utf80_add_x_b;
    logic [64:0] i_arrayidx163_stb_from_utf80_add_x_o;
    wire [64:0] i_arrayidx163_stb_from_utf80_add_x_q;
    wire [127:0] i_arrayidx163_stb_from_utf80_mult_extender_x_q;
    wire [60:0] i_arrayidx163_stb_from_utf80_mult_multconst_x_q;
    wire [63:0] i_arrayidx163_stb_from_utf80_trunc_sel_x_b;
    wire [63:0] i_arrayidx163_stb_from_utf80_dupName_0_trunc_sel_x_b;
    wire [63:0] i_unnamed_stb_from_utf842_sel_x_b;
    wire [35:0] i_arrayidx163_stb_from_utf80_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx163_stb_from_utf80_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx163_stb_from_utf80_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx163_stb_from_utf80_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx163_stb_from_utf80_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx163_stb_from_utf80_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx163_stb_from_utf80_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx163_stb_from_utf80_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_q;
    wire [11:0] i_arrayidx163_stb_from_utf80_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx163_stb_from_utf80_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx163_stb_from_utf80_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx163_stb_from_utf80_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx163_stb_from_utf80_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx163_stb_from_utf80_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx163_stb_from_utf80_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx163_stb_from_utf80_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_q;
    reg [0:0] redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_q;
    reg [0:0] redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_q;
    reg [0:0] redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_q;
    reg [0:0] redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_q;
    reg [0:0] redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_q;
    reg [0:0] redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_q;
    wire [0:0] bubble_join_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_q;
    wire [0:0] bubble_select_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_1_stb_from_utf847_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_1_stb_from_utf847_b;
    reg [0:0] SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_R_v_0;
    wire [0:0] SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_v_s_0;
    wire [0:0] SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_s_tv_0;
    wire [0:0] SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backEN;
    wire [0:0] SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_and0;
    wire [0:0] SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backStall;
    wire [0:0] SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_V0;
    reg [0:0] SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_R_v_0;
    wire [0:0] SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_v_s_0;
    wire [0:0] SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_s_tv_0;
    wire [0:0] SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backEN;
    wire [0:0] SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_and0;
    wire [0:0] SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backStall;
    wire [0:0] SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_V0;
    reg [0:0] SE_i_idxprom162_stb_from_utf843_R_v_0;
    wire [0:0] SE_i_idxprom162_stb_from_utf843_v_s_0;
    wire [0:0] SE_i_idxprom162_stb_from_utf843_s_tv_0;
    wire [0:0] SE_i_idxprom162_stb_from_utf843_backEN;
    wire [0:0] SE_i_idxprom162_stb_from_utf843_and0;
    wire [0:0] SE_i_idxprom162_stb_from_utf843_backStall;
    wire [0:0] SE_i_idxprom162_stb_from_utf843_V0;
    wire [0:0] SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_backStall;
    wire [0:0] SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_wireValid;
    wire [0:0] SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_and0;
    wire [0:0] SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_backStall;
    wire [0:0] SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_V0;
    reg [0:0] SE_i_reduction_stb_from_utf8_141_stb_from_utf832_R_v_0;
    wire [0:0] SE_i_reduction_stb_from_utf8_141_stb_from_utf832_v_s_0;
    wire [0:0] SE_i_reduction_stb_from_utf8_141_stb_from_utf832_s_tv_0;
    wire [0:0] SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backEN;
    wire [0:0] SE_i_reduction_stb_from_utf8_141_stb_from_utf832_and0;
    wire [0:0] SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backStall;
    wire [0:0] SE_i_reduction_stb_from_utf8_141_stb_from_utf832_V0;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireValid;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireStall;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_StallValid;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_toReg0;
    reg [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg0;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_consumed0;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_toReg1;
    reg [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg1;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_consumed1;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and0;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and1;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and2;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and3;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_or0;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_backStall;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_V0;
    wire [0:0] SE_i_reduction_stb_from_utf8_143_stb_from_utf834_V1;
    wire [0:0] SE_i_reduction_stb_from_utf8_147_stb_from_utf859_wireValid;
    wire [0:0] SE_i_reduction_stb_from_utf8_147_stb_from_utf859_and0;
    wire [0:0] SE_i_reduction_stb_from_utf8_147_stb_from_utf859_and1;
    wire [0:0] SE_i_reduction_stb_from_utf8_147_stb_from_utf859_backStall;
    wire [0:0] SE_i_reduction_stb_from_utf8_147_stb_from_utf859_V0;
    wire [0:0] SE_i_select295_stb_from_utf865_wireValid;
    wire [0:0] SE_i_select295_stb_from_utf865_and0;
    wire [0:0] SE_i_select295_stb_from_utf865_and1;
    wire [0:0] SE_i_select295_stb_from_utf865_backStall;
    wire [0:0] SE_i_select295_stb_from_utf865_V0;
    reg [0:0] SE_i_unnamed_stb_from_utf818_R_v_0;
    wire [0:0] SE_i_unnamed_stb_from_utf818_v_s_0;
    wire [0:0] SE_i_unnamed_stb_from_utf818_s_tv_0;
    wire [0:0] SE_i_unnamed_stb_from_utf818_backEN;
    wire [0:0] SE_i_unnamed_stb_from_utf818_backStall;
    wire [0:0] SE_i_unnamed_stb_from_utf818_V0;
    reg [0:0] SE_i_unnamed_stb_from_utf821_R_v_0;
    wire [0:0] SE_i_unnamed_stb_from_utf821_v_s_0;
    wire [0:0] SE_i_unnamed_stb_from_utf821_s_tv_0;
    wire [0:0] SE_i_unnamed_stb_from_utf821_backEN;
    wire [0:0] SE_i_unnamed_stb_from_utf821_backStall;
    wire [0:0] SE_i_unnamed_stb_from_utf821_V0;
    reg [0:0] SE_i_unnamed_stb_from_utf824_R_v_0;
    wire [0:0] SE_i_unnamed_stb_from_utf824_v_s_0;
    wire [0:0] SE_i_unnamed_stb_from_utf824_s_tv_0;
    wire [0:0] SE_i_unnamed_stb_from_utf824_backEN;
    wire [0:0] SE_i_unnamed_stb_from_utf824_backStall;
    wire [0:0] SE_i_unnamed_stb_from_utf824_V0;
    reg [0:0] SE_i_while_body_branch_to_dummy19_stb_from_utf826_R_v_0;
    wire [0:0] SE_i_while_body_branch_to_dummy19_stb_from_utf826_v_s_0;
    wire [0:0] SE_i_while_body_branch_to_dummy19_stb_from_utf826_s_tv_0;
    wire [0:0] SE_i_while_body_branch_to_dummy19_stb_from_utf826_backEN;
    wire [0:0] SE_i_while_body_branch_to_dummy19_stb_from_utf826_backStall;
    wire [0:0] SE_i_while_body_branch_to_dummy19_stb_from_utf826_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_toReg7;
    reg [0:0] SE_stall_entry_fromReg7;
    wire [0:0] SE_stall_entry_consumed7;
    wire [0:0] SE_stall_entry_toReg8;
    reg [0:0] SE_stall_entry_fromReg8;
    wire [0:0] SE_stall_entry_consumed8;
    wire [0:0] SE_stall_entry_toReg9;
    reg [0:0] SE_stall_entry_fromReg9;
    wire [0:0] SE_stall_entry_consumed9;
    wire [0:0] SE_stall_entry_toReg10;
    reg [0:0] SE_stall_entry_fromReg10;
    wire [0:0] SE_stall_entry_consumed10;
    wire [0:0] SE_stall_entry_toReg11;
    reg [0:0] SE_stall_entry_fromReg11;
    wire [0:0] SE_stall_entry_consumed11;
    wire [0:0] SE_stall_entry_toReg12;
    reg [0:0] SE_stall_entry_fromReg12;
    wire [0:0] SE_stall_entry_consumed12;
    wire [0:0] SE_stall_entry_toReg13;
    reg [0:0] SE_stall_entry_fromReg13;
    wire [0:0] SE_stall_entry_consumed13;
    wire [0:0] SE_stall_entry_toReg14;
    reg [0:0] SE_stall_entry_fromReg14;
    wire [0:0] SE_stall_entry_consumed14;
    wire [0:0] SE_stall_entry_toReg15;
    reg [0:0] SE_stall_entry_fromReg15;
    wire [0:0] SE_stall_entry_consumed15;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_or7;
    wire [0:0] SE_stall_entry_or8;
    wire [0:0] SE_stall_entry_or9;
    wire [0:0] SE_stall_entry_or10;
    wire [0:0] SE_stall_entry_or11;
    wire [0:0] SE_stall_entry_or12;
    wire [0:0] SE_stall_entry_or13;
    wire [0:0] SE_stall_entry_or14;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_stall_entry_V7;
    wire [0:0] SE_stall_entry_V8;
    wire [0:0] SE_stall_entry_V9;
    wire [0:0] SE_stall_entry_V10;
    wire [0:0] SE_stall_entry_V11;
    wire [0:0] SE_stall_entry_V12;
    wire [0:0] SE_stall_entry_V13;
    wire [0:0] SE_stall_entry_V14;
    wire [0:0] SE_stall_entry_V15;
    reg [0:0] SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_R_v_0;
    wire [0:0] SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_v_s_0;
    wire [0:0] SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_backEN;
    wire [0:0] SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_backStall;
    wire [0:0] SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_V0;
    reg [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_R_v_0;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_v_s_0;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_backEN;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_backStall;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_V0;
    reg [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_R_v_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_v_s_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_s_tv_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_backEN;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_backStall;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_V0;
    reg [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_R_v_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_v_s_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_s_tv_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_backEN;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_backStall;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_V0;
    reg [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_R_v_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_v_s_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_s_tv_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_backEN;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_backStall;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_V0;
    reg [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_R_v_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_v_s_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_s_tv_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backEN;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backStall;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_V0;
    reg [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_R_v_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_v_s_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_s_tv_0;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_backEN;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_backStall;
    wire [0:0] SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_13_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_13_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_13_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_16_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_16_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_16_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_out_bitsignaltemp;
    reg [0:0] bubble_out_stall_entry_12_reg_R_v_0;
    wire [0:0] bubble_out_stall_entry_12_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_12_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_12_reg_backEN;
    wire [0:0] bubble_out_stall_entry_12_reg_backStall;
    wire [0:0] bubble_out_stall_entry_12_reg_V0;
    wire [0:0] bubble_out_stall_entry_13_reg_valid_in;
    wire bubble_out_stall_entry_13_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_13_reg_stall_in;
    wire bubble_out_stall_entry_13_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_13_reg_valid_out;
    wire bubble_out_stall_entry_13_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_13_reg_stall_out;
    wire bubble_out_stall_entry_13_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_16_reg_valid_in;
    wire bubble_out_stall_entry_16_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_16_reg_stall_in;
    wire bubble_out_stall_entry_16_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_16_reg_valid_out;
    wire bubble_out_stall_entry_16_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_16_reg_stall_out;
    wire bubble_out_stall_entry_16_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_i_valid;
    reg [0:0] SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid;
    reg [0:0] SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_data0;
    wire [0:0] SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backStall;
    wire [0:0] SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_V;
    wire [0:0] SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_D0;


    // c_i32_079(CONSTANT,6)
    assign c_i32_079_q = $unsigned(32'b00000000000000000000000000000000);

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867(STALLENABLE,324)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_wireValid = i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_valid_out;

    // bubble_join_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866(BITJOIN,211)
    assign bubble_join_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_q = i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_ack;

    // bubble_select_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866(BITSELECT,212)
    assign bubble_select_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_b = $unsigned(bubble_join_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867(BLACKBOX,42)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    stb_from_utf8_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867 (
        .in_data_in(bubble_select_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866(STALLENABLE,288)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_V0 = SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_backStall = i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_stall_out | ~ (SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_wireValid = i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_memdep_1_stb_from_utf847(BITJOIN,265)
    assign bubble_join_i_llvm_fpga_mem_memdep_1_stb_from_utf847_q = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_1_stb_from_utf847(BITSELECT,266)
    assign bubble_select_i_llvm_fpga_mem_memdep_1_stb_from_utf847_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_1_stb_from_utf847_q[0:0]);

    // c_i64_078(CONSTANT,12)
    assign c_i64_078_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864(BITJOIN,258)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_q = i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864(BITSELECT,259)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_q[63:0]);

    // SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3(STALLENABLE,389)
    // Valid signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_V0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_s_tv_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_backStall & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backEN = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_v_s_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backEN & SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_V;
    // Backward Stall generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backStall = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backEN == 1'b0)
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_R_v_0 & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_s_tv_0;
            end
            else
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg(STALLFIFO,503)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862(STALLENABLE,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_consumed1 = (~ (SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_valid_out;

    // SE_i_reduction_stb_from_utf8_141_stb_from_utf832(STALLENABLE,330)
    // Valid signal propagation
    assign SE_i_reduction_stb_from_utf8_141_stb_from_utf832_V0 = SE_i_reduction_stb_from_utf8_141_stb_from_utf832_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_stb_from_utf8_141_stb_from_utf832_s_tv_0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_backStall & SE_i_reduction_stb_from_utf8_141_stb_from_utf832_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backEN = ~ (SE_i_reduction_stb_from_utf8_141_stb_from_utf832_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_stb_from_utf8_141_stb_from_utf832_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_V1 & SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backEN;
    assign SE_i_reduction_stb_from_utf8_141_stb_from_utf832_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_V0 & SE_i_reduction_stb_from_utf8_141_stb_from_utf832_and0;
    // Backward Stall generation
    assign SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backStall = ~ (SE_i_reduction_stb_from_utf8_141_stb_from_utf832_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_stb_from_utf8_141_stb_from_utf832_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backEN == 1'b0)
            begin
                SE_i_reduction_stb_from_utf8_141_stb_from_utf832_R_v_0 <= SE_i_reduction_stb_from_utf8_141_stb_from_utf832_R_v_0 & SE_i_reduction_stb_from_utf8_141_stb_from_utf832_s_tv_0;
            end
            else
            begin
                SE_i_reduction_stb_from_utf8_141_stb_from_utf832_R_v_0 <= SE_i_reduction_stb_from_utf8_141_stb_from_utf832_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84(STALLENABLE,312)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_backStall = SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and0 = i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and1 = i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and2 = i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_and2;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80(STALLENABLE,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_consumed1 = (~ (SE_i_reduction_stb_from_utf8_147_stb_from_utf859_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828(STALLENABLE,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_consumed0 = (~ (SE_i_reduction_stb_from_utf8_147_stb_from_utf859_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_consumed1 = (~ (SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg(STALLFIFO,504)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850(STALLENABLE,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_consumed1 = (~ (SE_i_reduction_stb_from_utf8_147_stb_from_utf859_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_valid_out;

    // SE_i_reduction_stb_from_utf8_147_stb_from_utf859(STALLENABLE,336)
    // Valid signal propagation
    assign SE_i_reduction_stb_from_utf8_147_stb_from_utf859_V0 = SE_i_reduction_stb_from_utf8_147_stb_from_utf859_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_stb_from_utf8_147_stb_from_utf859_backStall = SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backStall | ~ (SE_i_reduction_stb_from_utf8_147_stb_from_utf859_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_stb_from_utf8_147_stb_from_utf859_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_V1;
    assign SE_i_reduction_stb_from_utf8_147_stb_from_utf859_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_V0 & SE_i_reduction_stb_from_utf8_147_stb_from_utf859_and0;
    assign SE_i_reduction_stb_from_utf8_147_stb_from_utf859_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_V1 & SE_i_reduction_stb_from_utf8_147_stb_from_utf859_and1;

    // SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863(STALLENABLE,285)
    // Valid signal propagation
    assign SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_V0 = SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_R_v_0;
    // Stall signal propagation
    assign SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_s_tv_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_backStall & SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_R_v_0;
    // Backward Enable generation
    assign SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backEN = ~ (SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_and0 = SE_i_reduction_stb_from_utf8_147_stb_from_utf859_V0 & SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backEN;
    assign SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_V1 & SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_and0;
    // Backward Stall generation
    assign SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backStall = ~ (SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backEN == 1'b0)
            begin
                SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_R_v_0 <= SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_R_v_0 & SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_s_tv_0;
            end
            else
            begin
                SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_R_v_0 <= SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_v_s_0;
            end

        end
    end

    // SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0(STALLENABLE,386)
    // Valid signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_V0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_s_tv_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_backStall & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_backEN = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_v_s_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_backEN & SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_V0;
    // Backward Stall generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_backStall = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_backEN == 1'b0)
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_R_v_0 & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_v_s_0;
            end

        end
    end

    // SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1(STALLENABLE,387)
    // Valid signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_V0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_s_tv_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_backStall & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_backEN = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_v_s_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_backEN & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_V0;
    // Backward Stall generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_backStall = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_backEN == 1'b0)
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_R_v_0 & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_s_tv_0;
            end
            else
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862(BITJOIN,217)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_q = i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862(BITSELECT,218)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_q[0:0]);

    // c_i32_1170_recast_x(CONSTANT,149)
    assign c_i32_1170_recast_x_q = $unsigned(32'b00000000000000000000000000001011);

    // c_i32_380(CONSTANT,9)
    assign c_i32_380_q = $unsigned(32'b00000000000000000000000000000011);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850(BITJOIN,224)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_q = i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850(BITSELECT,225)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_q[31:0]);

    // i_unnamed_stb_from_utf851(LOGICAL,73)@0
    assign i_unnamed_stb_from_utf851_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_b | c_i32_380_q;

    // i_unnamed_stb_from_utf851_vt_select_31(BITSELECT,76)@0
    assign i_unnamed_stb_from_utf851_vt_select_31_b = i_unnamed_stb_from_utf851_q[31:2];

    // i_unnamed_stb_from_utf851_vt_const_1(CONSTANT,74)
    assign i_unnamed_stb_from_utf851_vt_const_1_q = $unsigned(2'b11);

    // i_unnamed_stb_from_utf851_vt_join(BITJOIN,75)@0
    assign i_unnamed_stb_from_utf851_vt_join_q = {i_unnamed_stb_from_utf851_vt_select_31_b, i_unnamed_stb_from_utf851_vt_const_1_q};

    // i_unnamed_stb_from_utf852(LOGICAL,77)@0
    assign i_unnamed_stb_from_utf852_q = $unsigned(i_unnamed_stb_from_utf851_vt_join_q == c_i32_1170_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_781_recast_x(CONSTANT,154)
    assign c_i32_781_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // i_unnamed_stb_from_utf854(LOGICAL,78)@0
    assign i_unnamed_stb_from_utf854_q = $unsigned(i_unnamed_stb_from_utf851_vt_join_q == c_i32_781_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_stb_from_utf8_147_stb_from_utf859(LOGICAL,54)@0
    assign i_reduction_stb_from_utf8_147_stb_from_utf859_q = i_unnamed_stb_from_utf854_q | i_unnamed_stb_from_utf852_q;

    // c_i32_168(CONSTANT,7)
    assign c_i32_168_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80(BITJOIN,252)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_q = i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80(BITSELECT,253)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_q[31:0]);

    // i_unnamed_stb_from_utf81(LOGICAL,58)@0
    assign i_unnamed_stb_from_utf81_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_b | c_i32_168_q;

    // i_unnamed_stb_from_utf81_vt_select_31(BITSELECT,63)@0
    assign i_unnamed_stb_from_utf81_vt_select_31_b = i_unnamed_stb_from_utf81_q[31:1];

    // i_unnamed_stb_from_utf81_vt_join(BITJOIN,62)@0
    assign i_unnamed_stb_from_utf81_vt_join_q = {i_unnamed_stb_from_utf81_vt_select_31_b, VCC_q};

    // i_unnamed_stb_from_utf856(LOGICAL,79)@0
    assign i_unnamed_stb_from_utf856_q = $unsigned(i_unnamed_stb_from_utf81_vt_join_q == c_i32_380_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828(BITJOIN,228)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_q = i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828(BITSELECT,229)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_q[31:0]);

    // i_while_body_branch_to_dummy_stb_from_utf829(LOGICAL,84)@0
    assign i_while_body_branch_to_dummy_stb_from_utf829_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_b == c_i32_168_q ? 1'b1 : 1'b0);

    // i_reduction_stb_from_utf8_146_stb_from_utf858(LOGICAL,53)@0
    assign i_reduction_stb_from_utf8_146_stb_from_utf858_q = i_while_body_branch_to_dummy_stb_from_utf829_q | i_unnamed_stb_from_utf856_q;

    // i_reduction_stb_from_utf8_148_stb_from_utf860(LOGICAL,55)@0
    assign i_reduction_stb_from_utf8_148_stb_from_utf860_q = i_reduction_stb_from_utf8_146_stb_from_utf858_q | i_reduction_stb_from_utf8_147_stb_from_utf859_q;

    // c_i32_1369_recast_x(CONSTANT,150)
    assign c_i32_1369_recast_x_q = $unsigned(32'b00000000000000000000000000001101);

    // i_unnamed_stb_from_utf848(LOGICAL,72)@0
    assign i_unnamed_stb_from_utf848_q = $unsigned(i_unnamed_stb_from_utf81_vt_join_q == c_i32_1369_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_stb_from_utf8_149_stb_from_utf861(LOGICAL,56)@0
    assign i_reduction_stb_from_utf8_149_stb_from_utf861_q = i_unnamed_stb_from_utf848_q | i_reduction_stb_from_utf8_148_stb_from_utf860_q;

    // i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863(LOGICAL,22)@0 + 1
    assign i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_qi = i_reduction_stb_from_utf8_149_stb_from_utf861_q & bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_delay ( .xin(i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_qi), .xout(i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q), .ena(SE_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_backEN == 1'b1)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_q <= $unsigned(i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q);
        end
    end

    // redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_backEN == 1'b1)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_q <= $unsigned(redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_0_q);
        end
    end

    // redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2(REG,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_backEN == 1'b1)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_q <= $unsigned(redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_q);
        end
    end

    // SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2(STALLENABLE,388)
    // Valid signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_V0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_s_tv_0 = SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backStall & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_backEN = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_v_s_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_backEN & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_1_V0;
    // Backward Stall generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_backStall = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_backEN == 1'b0)
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_R_v_0 & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_s_tv_0;
            end
            else
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_v_s_0;
            end

        end
    end

    // SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3(STALLREG,508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid <= 1'b0;
            SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backStall & (SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid | SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_i_valid);

            if (SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_data0 <= $unsigned(redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_i_valid = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_V0;
    // Stall signal propagation
    assign SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backStall = SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid | ~ (SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_i_valid);

    // Valid
    assign SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_V = SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid == 1'b1 ? SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid : SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_i_valid;

    assign SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_D0 = SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_valid == 1'b1 ? SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_r_data0 : redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_2_q;

    // redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3(REG,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_backEN == 1'b1)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_q <= $unsigned(SR_SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_D0);
        end
    end

    // redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4(REG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_backEN == 1'b1)
        begin
            redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_q <= $unsigned(redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_select295_stb_from_utf865(MUX,57)@6
    assign i_select295_stb_from_utf865_s = redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_q;
    always @(i_select295_stb_from_utf865_s or bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_b or c_i64_078_q)
    begin
        unique case (i_select295_stb_from_utf865_s)
            1'b0 : i_select295_stb_from_utf865_q = bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_b;
            1'b1 : i_select295_stb_from_utf865_q = c_i64_078_q;
            default : i_select295_stb_from_utf865_q = 64'b0;
        endcase
    end

    // i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866(BLACKBOX,24)@6
    // in in_i_stall@20000000
    // out out_iowr_bl_return_stb_from_utf8_o_fifodata@20000000
    // out out_iowr_bl_return_stb_from_utf8_o_fifovalid@20000000
    // out out_o_stall@20000000
    stb_from_utf8_i_iowr_bl_return_unnamed_sA000000Ztf815_stb_from_utf80 thei_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866 (
        .in_i_data(i_select295_stb_from_utf865_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_1_stb_from_utf847_b),
        .in_i_stall(SE_out_i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_backStall),
        .in_i_valid(SE_i_select295_stb_from_utf865_V0),
        .in_iowr_bl_return_stb_from_utf8_i_fifoready(in_iowr_bl_return_stb_from_utf8_i_fifoready),
        .out_iowr_bl_return_stb_from_utf8_o_fifodata(i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_iowr_bl_return_stb_from_utf8_o_fifodata),
        .out_iowr_bl_return_stb_from_utf8_o_fifovalid(i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_iowr_bl_return_stb_from_utf8_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_ack),
        .out_o_stall(i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_stall),
        .out_o_valid(i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4(STALLENABLE,390)
    // Valid signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_V0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_s_tv_0 = SE_i_select295_stb_from_utf865_backStall & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_backEN = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_v_s_0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_backEN & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_3_V0;
    // Backward Stall generation
    assign SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_backStall = ~ (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_backEN == 1'b0)
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_R_v_0 & SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_s_tv_0;
            end
            else
            begin
                SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_R_v_0 <= SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_v_s_0;
            end

        end
    end

    // SE_i_select295_stb_from_utf865(STALLENABLE,339)
    // Valid signal propagation
    assign SE_i_select295_stb_from_utf865_V0 = SE_i_select295_stb_from_utf865_wireValid;
    // Backward Stall generation
    assign SE_i_select295_stb_from_utf865_backStall = i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_o_stall | ~ (SE_i_select295_stb_from_utf865_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_select295_stb_from_utf865_and0 = SE_redist2_i_from_while_body_unifiedlatchblock_switch294_stb_from_utf863_q_6_4_V0;
    assign SE_i_select295_stb_from_utf865_and1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_V1 & SE_i_select295_stb_from_utf865_and0;
    assign SE_i_select295_stb_from_utf865_wireValid = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_V1 & SE_i_select295_stb_from_utf865_and1;

    // SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1(STALLENABLE,414)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and1 = bubble_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and2 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_and2;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864(STALLENABLE,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_consumed1 = (~ (SE_i_select295_stb_from_utf865_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_wireValid = i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864(BLACKBOX,39)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_0 thei_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_16_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_16(STALLENABLE,502)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_16_V0 = SE_out_bubble_out_stall_entry_16_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_16_backStall = i_llvm_fpga_ffwd_dest_p1024i32_buffer06912_stb_from_utf864_out_stall_out | ~ (SE_out_bubble_out_stall_entry_16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_16_wireValid = bubble_out_stall_entry_16_reg_valid_out;

    // bubble_out_stall_entry_16_reg(STALLFIFO,507)
    assign bubble_out_stall_entry_16_reg_valid_in = SE_stall_entry_V15;
    assign bubble_out_stall_entry_16_reg_stall_in = SE_out_bubble_out_stall_entry_16_backStall;
    assign bubble_out_stall_entry_16_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_16_reg_valid_in[0];
    assign bubble_out_stall_entry_16_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_16_reg_stall_in[0];
    assign bubble_out_stall_entry_16_reg_valid_out[0] = bubble_out_stall_entry_16_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_16_reg_stall_out[0] = bubble_out_stall_entry_16_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_16_reg (
        .valid_in(bubble_out_stall_entry_16_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_16_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_16_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_16_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_13(STALLENABLE,496)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_13_V0 = SE_out_bubble_out_stall_entry_13_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_13_backStall = i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_stall_out | ~ (SE_out_bubble_out_stall_entry_13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_13_wireValid = bubble_out_stall_entry_13_reg_valid_out;

    // bubble_out_stall_entry_13_reg(STALLFIFO,506)
    assign bubble_out_stall_entry_13_reg_valid_in = SE_stall_entry_V14;
    assign bubble_out_stall_entry_13_reg_stall_in = SE_out_bubble_out_stall_entry_13_backStall;
    assign bubble_out_stall_entry_13_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_13_reg_valid_in[0];
    assign bubble_out_stall_entry_13_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_13_reg_stall_in[0];
    assign bubble_out_stall_entry_13_reg_valid_out[0] = bubble_out_stall_entry_13_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_13_reg_stall_out[0] = bubble_out_stall_entry_13_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_13_reg (
        .valid_in(bubble_out_stall_entry_13_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_13_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_13_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_13_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841(STALLENABLE,316)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_backStall = SE_i_idxprom162_stb_from_utf843_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_wireValid = i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841(BLACKBOX,38)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_reduction_132_stb_from_utf80 thei_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_backStall),
        .in_valid_in(bubble_out_stall_entry_12_reg_V0),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_12_reg(STALLENABLE,505)
    // Valid signal propagation
    assign bubble_out_stall_entry_12_reg_V0 = bubble_out_stall_entry_12_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_stall_entry_12_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_stall_out & bubble_out_stall_entry_12_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_stall_entry_12_reg_backEN = ~ (bubble_out_stall_entry_12_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_12_reg_v_s_0 = bubble_out_stall_entry_12_reg_backEN & SE_stall_entry_V13;
    // Backward Stall generation
    assign bubble_out_stall_entry_12_reg_backStall = ~ (bubble_out_stall_entry_12_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_12_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_12_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_12_reg_R_v_0 <= bubble_out_stall_entry_12_reg_R_v_0 & bubble_out_stall_entry_12_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_12_reg_R_v_0 <= bubble_out_stall_entry_12_reg_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80(BLACKBOX,37)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16142_0 thei_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_backStall),
        .in_valid_in(SE_stall_entry_V12),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84(BLACKBOX,36)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16141_0 thei_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_backStall),
        .in_valid_in(SE_stall_entry_V11),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87(BLACKBOX,35)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16140_0 thei_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_backStall),
        .in_valid_in(SE_stall_entry_V10),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16139_0 thei_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_backStall),
        .in_valid_in(SE_stall_entry_V9),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_stb_from_utf818(STALLENABLE,342)
    // Valid signal propagation
    assign SE_i_unnamed_stb_from_utf818_V0 = SE_i_unnamed_stb_from_utf818_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_stb_from_utf818_s_tv_0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_backStall & SE_i_unnamed_stb_from_utf818_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_stb_from_utf818_backEN = ~ (SE_i_unnamed_stb_from_utf818_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_stb_from_utf818_v_s_0 = SE_i_unnamed_stb_from_utf818_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_V0;
    // Backward Stall generation
    assign SE_i_unnamed_stb_from_utf818_backStall = ~ (SE_i_unnamed_stb_from_utf818_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_stb_from_utf818_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_stb_from_utf818_backEN == 1'b0)
            begin
                SE_i_unnamed_stb_from_utf818_R_v_0 <= SE_i_unnamed_stb_from_utf818_R_v_0 & SE_i_unnamed_stb_from_utf818_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_stb_from_utf818_R_v_0 <= SE_i_unnamed_stb_from_utf818_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816(STALLENABLE,306)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_backStall = SE_i_unnamed_stb_from_utf818_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816(BLACKBOX,33)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16138_0 thei_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_backStall),
        .in_valid_in(SE_stall_entry_V8),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_stb_from_utf821(STALLENABLE,347)
    // Valid signal propagation
    assign SE_i_unnamed_stb_from_utf821_V0 = SE_i_unnamed_stb_from_utf821_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_stb_from_utf821_s_tv_0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_backStall & SE_i_unnamed_stb_from_utf821_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_stb_from_utf821_backEN = ~ (SE_i_unnamed_stb_from_utf821_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_stb_from_utf821_v_s_0 = SE_i_unnamed_stb_from_utf821_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_V0;
    // Backward Stall generation
    assign SE_i_unnamed_stb_from_utf821_backStall = ~ (SE_i_unnamed_stb_from_utf821_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_stb_from_utf821_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_stb_from_utf821_backEN == 1'b0)
            begin
                SE_i_unnamed_stb_from_utf821_R_v_0 <= SE_i_unnamed_stb_from_utf821_R_v_0 & SE_i_unnamed_stb_from_utf821_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_stb_from_utf821_R_v_0 <= SE_i_unnamed_stb_from_utf821_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819(STALLENABLE,304)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_backStall = SE_i_unnamed_stb_from_utf821_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819(BLACKBOX,32)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16137_0 thei_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_backStall),
        .in_valid_in(SE_stall_entry_V7),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_stb_from_utf824(STALLENABLE,349)
    // Valid signal propagation
    assign SE_i_unnamed_stb_from_utf824_V0 = SE_i_unnamed_stb_from_utf824_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_stb_from_utf824_s_tv_0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_backStall & SE_i_unnamed_stb_from_utf824_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_stb_from_utf824_backEN = ~ (SE_i_unnamed_stb_from_utf824_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_stb_from_utf824_v_s_0 = SE_i_unnamed_stb_from_utf824_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_V0;
    // Backward Stall generation
    assign SE_i_unnamed_stb_from_utf824_backStall = ~ (SE_i_unnamed_stb_from_utf824_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_stb_from_utf824_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_stb_from_utf824_backEN == 1'b0)
            begin
                SE_i_unnamed_stb_from_utf824_R_v_0 <= SE_i_unnamed_stb_from_utf824_R_v_0 & SE_i_unnamed_stb_from_utf824_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_stb_from_utf824_R_v_0 <= SE_i_unnamed_stb_from_utf824_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822(STALLENABLE,302)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_backStall = SE_i_unnamed_stb_from_utf824_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822(BLACKBOX,31)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16136_0 thei_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_backStall),
        .in_valid_in(SE_stall_entry_V6),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_while_body_branch_to_dummy19_stb_from_utf826(STALLENABLE,358)
    // Valid signal propagation
    assign SE_i_while_body_branch_to_dummy19_stb_from_utf826_V0 = SE_i_while_body_branch_to_dummy19_stb_from_utf826_R_v_0;
    // Stall signal propagation
    assign SE_i_while_body_branch_to_dummy19_stb_from_utf826_s_tv_0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_backStall & SE_i_while_body_branch_to_dummy19_stb_from_utf826_R_v_0;
    // Backward Enable generation
    assign SE_i_while_body_branch_to_dummy19_stb_from_utf826_backEN = ~ (SE_i_while_body_branch_to_dummy19_stb_from_utf826_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_while_body_branch_to_dummy19_stb_from_utf826_v_s_0 = SE_i_while_body_branch_to_dummy19_stb_from_utf826_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_V0;
    // Backward Stall generation
    assign SE_i_while_body_branch_to_dummy19_stb_from_utf826_backStall = ~ (SE_i_while_body_branch_to_dummy19_stb_from_utf826_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_while_body_branch_to_dummy19_stb_from_utf826_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_while_body_branch_to_dummy19_stb_from_utf826_backEN == 1'b0)
            begin
                SE_i_while_body_branch_to_dummy19_stb_from_utf826_R_v_0 <= SE_i_while_body_branch_to_dummy19_stb_from_utf826_R_v_0 & SE_i_while_body_branch_to_dummy19_stb_from_utf826_s_tv_0;
            end
            else
            begin
                SE_i_while_body_branch_to_dummy19_stb_from_utf826_R_v_0 <= SE_i_while_body_branch_to_dummy19_stb_from_utf826_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825(STALLENABLE,300)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_backStall = SE_i_while_body_branch_to_dummy19_stb_from_utf826_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825(BLACKBOX,30)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16135_0 thei_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828(BLACKBOX,29)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16134_0 thei_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i32_acl_16133_0 thei_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838(STALLENABLE,326)
    // Valid signal propagation
    assign SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_V0 = SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_wireValid;
    // Backward Stall generation
    assign SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_backStall = SE_i_idxprom162_stb_from_utf843_backStall | ~ (SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_and0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_V1;
    assign SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_wireValid = SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_V0 & SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_and0;

    // SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0(STALLENABLE,384)
    // Valid signal propagation
    assign SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_V0 = SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_s_tv_0 = SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_backStall & SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_backEN = ~ (SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_v_s_0 = SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_V0;
    // Backward Stall generation
    assign SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_backStall = ~ (SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_R_v_0 <= SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_R_v_0 & SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_R_v_0 <= SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837(STALLENABLE,294)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_backStall = SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837(BLACKBOX,27)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i1_tA000000Z_decision395_xor27_0 thei_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i1_tA000000Z_decision395_xor26_0 thei_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
            SE_stall_entry_fromReg7 <= '0;
            SE_stall_entry_fromReg8 <= '0;
            SE_stall_entry_fromReg9 <= '0;
            SE_stall_entry_fromReg10 <= '0;
            SE_stall_entry_fromReg11 <= '0;
            SE_stall_entry_fromReg12 <= '0;
            SE_stall_entry_fromReg13 <= '0;
            SE_stall_entry_fromReg14 <= '0;
            SE_stall_entry_fromReg15 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            // Successor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
            // Successor 8
            SE_stall_entry_fromReg8 <= SE_stall_entry_toReg8;
            // Successor 9
            SE_stall_entry_fromReg9 <= SE_stall_entry_toReg9;
            // Successor 10
            SE_stall_entry_fromReg10 <= SE_stall_entry_toReg10;
            // Successor 11
            SE_stall_entry_fromReg11 <= SE_stall_entry_toReg11;
            // Successor 12
            SE_stall_entry_fromReg12 <= SE_stall_entry_toReg12;
            // Successor 13
            SE_stall_entry_fromReg13 <= SE_stall_entry_toReg13;
            // Successor 14
            SE_stall_entry_fromReg14 <= SE_stall_entry_toReg14;
            // Successor 15
            SE_stall_entry_fromReg15 <= SE_stall_entry_toReg15;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor26_stb_from_utf862_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16134_stb_from_utf828_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    assign SE_stall_entry_consumed10 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg10;
    assign SE_stall_entry_consumed11 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg11;
    assign SE_stall_entry_consumed12 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_16142_stb_from_utf80_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg12;
    assign SE_stall_entry_consumed13 = (~ (bubble_out_stall_entry_12_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg13;
    assign SE_stall_entry_consumed14 = (~ (bubble_out_stall_entry_13_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg14;
    assign SE_stall_entry_consumed15 = (~ (bubble_out_stall_entry_16_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg15;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    assign SE_stall_entry_toReg7 = SE_stall_entry_StallValid & SE_stall_entry_consumed7;
    assign SE_stall_entry_toReg8 = SE_stall_entry_StallValid & SE_stall_entry_consumed8;
    assign SE_stall_entry_toReg9 = SE_stall_entry_StallValid & SE_stall_entry_consumed9;
    assign SE_stall_entry_toReg10 = SE_stall_entry_StallValid & SE_stall_entry_consumed10;
    assign SE_stall_entry_toReg11 = SE_stall_entry_StallValid & SE_stall_entry_consumed11;
    assign SE_stall_entry_toReg12 = SE_stall_entry_StallValid & SE_stall_entry_consumed12;
    assign SE_stall_entry_toReg13 = SE_stall_entry_StallValid & SE_stall_entry_consumed13;
    assign SE_stall_entry_toReg14 = SE_stall_entry_StallValid & SE_stall_entry_consumed14;
    assign SE_stall_entry_toReg15 = SE_stall_entry_StallValid & SE_stall_entry_consumed15;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_or7 = SE_stall_entry_consumed7 & SE_stall_entry_or6;
    assign SE_stall_entry_or8 = SE_stall_entry_consumed8 & SE_stall_entry_or7;
    assign SE_stall_entry_or9 = SE_stall_entry_consumed9 & SE_stall_entry_or8;
    assign SE_stall_entry_or10 = SE_stall_entry_consumed10 & SE_stall_entry_or9;
    assign SE_stall_entry_or11 = SE_stall_entry_consumed11 & SE_stall_entry_or10;
    assign SE_stall_entry_or12 = SE_stall_entry_consumed12 & SE_stall_entry_or11;
    assign SE_stall_entry_or13 = SE_stall_entry_consumed13 & SE_stall_entry_or12;
    assign SE_stall_entry_or14 = SE_stall_entry_consumed14 & SE_stall_entry_or13;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed15 & SE_stall_entry_or14);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    assign SE_stall_entry_V7 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg7);
    assign SE_stall_entry_V8 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg8);
    assign SE_stall_entry_V9 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg9);
    assign SE_stall_entry_V10 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg10);
    assign SE_stall_entry_V11 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg11);
    assign SE_stall_entry_V12 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg12);
    assign SE_stall_entry_V13 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg13);
    assign SE_stall_entry_V14 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg14);
    assign SE_stall_entry_V15 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg15);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_i1_tobool6225_0 thei_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839(STALLENABLE,290)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_backStall = SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_wireValid = i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_valid_out;

    // SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0(STALLENABLE,385)
    // Valid signal propagation
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_V0 = SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_s_tv_0 = SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backStall & SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_backEN = ~ (SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_v_s_0 = SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_V0;
    // Backward Stall generation
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_backStall = ~ (SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_R_v_0 <= SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_R_v_0 & SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_R_v_0 <= SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_v_s_0;
            end

        end
    end

    // SE_i_reduction_stb_from_utf8_143_stb_from_utf834(STALLENABLE,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg0 <= '0;
            SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg0 <= SE_i_reduction_stb_from_utf8_143_stb_from_utf834_toReg0;
            // Successor 1
            SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg1 <= SE_i_reduction_stb_from_utf8_143_stb_from_utf834_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_consumed0 = (~ (SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backStall) & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireValid) | SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg0;
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_consumed1 = (~ (SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_backStall) & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireValid) | SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg1;
    // Consuming
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_StallValid = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_backStall & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireValid;
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_toReg0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_StallValid & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_consumed0;
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_toReg1 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_StallValid & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_or0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_consumed0;
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireStall = ~ (SE_i_reduction_stb_from_utf8_143_stb_from_utf834_consumed1 & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_or0);
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_backStall = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_V0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireValid & ~ (SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg0);
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_V1 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireValid & ~ (SE_i_reduction_stb_from_utf8_143_stb_from_utf834_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and0 = SE_i_unnamed_stb_from_utf818_V0;
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and1 = SE_i_while_body_branch_to_dummy19_stb_from_utf826_V0 & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and0;
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and2 = SE_i_unnamed_stb_from_utf821_V0 & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and1;
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and3 = SE_i_unnamed_stb_from_utf824_V0 & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and2;
    assign SE_i_reduction_stb_from_utf8_143_stb_from_utf834_wireValid = SE_i_reduction_stb_from_utf8_141_stb_from_utf832_V0 & SE_i_reduction_stb_from_utf8_143_stb_from_utf834_and3;

    // SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840(STALLENABLE,284)
    // Valid signal propagation
    assign SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_V0 = SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_R_v_0;
    // Stall signal propagation
    assign SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_backStall & SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_R_v_0;
    // Backward Enable generation
    assign SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backEN = ~ (SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_and0 = SE_i_reduction_stb_from_utf8_143_stb_from_utf834_V0 & SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backEN;
    assign SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_v_s_0 = SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_V0 & SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_and0;
    // Backward Stall generation
    assign SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backStall = ~ (SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backEN == 1'b0)
            begin
                SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_R_v_0 <= SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_R_v_0 & SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_s_tv_0;
            end
            else
            begin
                SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_R_v_0 <= SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_v_s_0;
            end

        end
    end

    // SE_i_idxprom162_stb_from_utf843(STALLENABLE,286)
    // Valid signal propagation
    assign SE_i_idxprom162_stb_from_utf843_V0 = SE_i_idxprom162_stb_from_utf843_R_v_0;
    // Stall signal propagation
    assign SE_i_idxprom162_stb_from_utf843_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_backStall & SE_i_idxprom162_stb_from_utf843_R_v_0;
    // Backward Enable generation
    assign SE_i_idxprom162_stb_from_utf843_backEN = ~ (SE_i_idxprom162_stb_from_utf843_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_idxprom162_stb_from_utf843_and0 = SE_i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_V0 & SE_i_idxprom162_stb_from_utf843_backEN;
    assign SE_i_idxprom162_stb_from_utf843_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_V0 & SE_i_idxprom162_stb_from_utf843_and0;
    // Backward Stall generation
    assign SE_i_idxprom162_stb_from_utf843_backStall = ~ (SE_i_idxprom162_stb_from_utf843_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_idxprom162_stb_from_utf843_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_idxprom162_stb_from_utf843_backEN == 1'b0)
            begin
                SE_i_idxprom162_stb_from_utf843_R_v_0 <= SE_i_idxprom162_stb_from_utf843_R_v_0 & SE_i_idxprom162_stb_from_utf843_s_tv_0;
            end
            else
            begin
                SE_i_idxprom162_stb_from_utf843_R_v_0 <= SE_i_idxprom162_stb_from_utf843_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844(BLACKBOX,40)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_0 thei_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_13_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844(STALLENABLE,320)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_backStall = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_and0 = i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_and1 = SE_i_idxprom162_stb_from_utf843_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_wireValid = SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_and1;

    // SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847(STALLENABLE,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_consumed1 = (~ (SE_i_select295_stb_from_utf865_backStall) & SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_StallValid = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_backStall & SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_toReg0 = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_StallValid & SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_toReg1 = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_StallValid & SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_or0 = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_consumed1 & SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_backStall = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_V0 = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_V1 = SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_wireValid = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_valid;

    // c_i32_276_recast_x(CONSTANT,152)
    assign c_i32_276_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825(BITJOIN,231)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_q = i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825(BITSELECT,232)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_q[31:0]);

    // i_while_body_branch_to_dummy19_stb_from_utf826(LOGICAL,80)@0 + 1
    assign i_while_body_branch_to_dummy19_stb_from_utf826_qi = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16135_stb_from_utf825_b != c_i32_276_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_while_body_branch_to_dummy19_stb_from_utf826_delay ( .xin(i_while_body_branch_to_dummy19_stb_from_utf826_qi), .xout(i_while_body_branch_to_dummy19_stb_from_utf826_q), .ena(SE_i_while_body_branch_to_dummy19_stb_from_utf826_backEN[0]), .clk(clock), .aclr(resetn) );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i32_773(CONSTANT,11)
    assign c_i32_773_q = $unsigned(32'b11111111111111111111111111111001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816(BITJOIN,240)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_q = i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816(BITSELECT,241)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_q[31:0]);

    // i_unnamed_stb_from_utf817(ADD,59)@0
    assign i_unnamed_stb_from_utf817_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16138_stb_from_utf816_b};
    assign i_unnamed_stb_from_utf817_b = {1'b0, c_i32_773_q};
    assign i_unnamed_stb_from_utf817_o = $unsigned(i_unnamed_stb_from_utf817_a) + $unsigned(i_unnamed_stb_from_utf817_b);
    assign i_unnamed_stb_from_utf817_q = i_unnamed_stb_from_utf817_o[32:0];

    // bgTrunc_i_unnamed_stb_from_utf817_sel_x(BITSELECT,145)@0
    assign bgTrunc_i_unnamed_stb_from_utf817_sel_x_b = i_unnamed_stb_from_utf817_q[31:0];

    // i_unnamed_stb_from_utf818(COMPARE,60)@0 + 1
    assign i_unnamed_stb_from_utf818_a = {2'b00, c_i32_168_q};
    assign i_unnamed_stb_from_utf818_b = {2'b00, bgTrunc_i_unnamed_stb_from_utf817_sel_x_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_stb_from_utf818_o <= 34'b0;
        end
        else if (SE_i_unnamed_stb_from_utf818_backEN == 1'b1)
        begin
            i_unnamed_stb_from_utf818_o <= $unsigned(i_unnamed_stb_from_utf818_a) - $unsigned(i_unnamed_stb_from_utf818_b);
        end
    end
    assign i_unnamed_stb_from_utf818_c[0] = i_unnamed_stb_from_utf818_o[33];

    // i_reduction_stb_from_utf8_143_stb_from_utf834(LOGICAL,50)@1
    assign i_reduction_stb_from_utf8_143_stb_from_utf834_q = i_unnamed_stb_from_utf818_c & i_while_body_branch_to_dummy19_stb_from_utf826_q;

    // c_i32_574(CONSTANT,10)
    assign c_i32_574_q = $unsigned(32'b11111111111111111111111111111011);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819(BITJOIN,237)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_q = i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819(BITSELECT,238)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_q[31:0]);

    // i_unnamed_stb_from_utf820(ADD,65)@0
    assign i_unnamed_stb_from_utf820_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16137_stb_from_utf819_b};
    assign i_unnamed_stb_from_utf820_b = {1'b0, c_i32_574_q};
    assign i_unnamed_stb_from_utf820_o = $unsigned(i_unnamed_stb_from_utf820_a) + $unsigned(i_unnamed_stb_from_utf820_b);
    assign i_unnamed_stb_from_utf820_q = i_unnamed_stb_from_utf820_o[32:0];

    // bgTrunc_i_unnamed_stb_from_utf820_sel_x(BITSELECT,146)@0
    assign bgTrunc_i_unnamed_stb_from_utf820_sel_x_b = i_unnamed_stb_from_utf820_q[31:0];

    // i_unnamed_stb_from_utf821(COMPARE,66)@0 + 1
    assign i_unnamed_stb_from_utf821_a = {2'b00, c_i32_168_q};
    assign i_unnamed_stb_from_utf821_b = {2'b00, bgTrunc_i_unnamed_stb_from_utf820_sel_x_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_stb_from_utf821_o <= 34'b0;
        end
        else if (SE_i_unnamed_stb_from_utf821_backEN == 1'b1)
        begin
            i_unnamed_stb_from_utf821_o <= $unsigned(i_unnamed_stb_from_utf821_a) - $unsigned(i_unnamed_stb_from_utf821_b);
        end
    end
    assign i_unnamed_stb_from_utf821_c[0] = i_unnamed_stb_from_utf821_o[33];

    // c_i32_375(CONSTANT,8)
    assign c_i32_375_q = $unsigned(32'b11111111111111111111111111111101);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822(BITJOIN,234)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_q = i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822(BITSELECT,235)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_q[31:0]);

    // i_unnamed_stb_from_utf823(ADD,67)@0
    assign i_unnamed_stb_from_utf823_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16136_stb_from_utf822_b};
    assign i_unnamed_stb_from_utf823_b = {1'b0, c_i32_375_q};
    assign i_unnamed_stb_from_utf823_o = $unsigned(i_unnamed_stb_from_utf823_a) + $unsigned(i_unnamed_stb_from_utf823_b);
    assign i_unnamed_stb_from_utf823_q = i_unnamed_stb_from_utf823_o[32:0];

    // bgTrunc_i_unnamed_stb_from_utf823_sel_x(BITSELECT,147)@0
    assign bgTrunc_i_unnamed_stb_from_utf823_sel_x_b = i_unnamed_stb_from_utf823_q[31:0];

    // i_unnamed_stb_from_utf824(COMPARE,68)@0 + 1
    assign i_unnamed_stb_from_utf824_a = {2'b00, c_i32_168_q};
    assign i_unnamed_stb_from_utf824_b = {2'b00, bgTrunc_i_unnamed_stb_from_utf823_sel_x_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_stb_from_utf824_o <= 34'b0;
        end
        else if (SE_i_unnamed_stb_from_utf824_backEN == 1'b1)
        begin
            i_unnamed_stb_from_utf824_o <= $unsigned(i_unnamed_stb_from_utf824_a) - $unsigned(i_unnamed_stb_from_utf824_b);
        end
    end
    assign i_unnamed_stb_from_utf824_c[0] = i_unnamed_stb_from_utf824_o[33];

    // i_reduction_stb_from_utf8_142_stb_from_utf833(LOGICAL,49)@1
    assign i_reduction_stb_from_utf8_142_stb_from_utf833_q = i_unnamed_stb_from_utf824_c & i_unnamed_stb_from_utf821_c;

    // i_reduction_stb_from_utf8_144_stb_from_utf835(LOGICAL,51)@1
    assign i_reduction_stb_from_utf8_144_stb_from_utf835_q = i_reduction_stb_from_utf8_142_stb_from_utf833_q & i_reduction_stb_from_utf8_143_stb_from_utf834_q;

    // i_not_while_body_branch_to_dummy_stb_from_utf831(LOGICAL,43)@0
    assign i_not_while_body_branch_to_dummy_stb_from_utf831_q = i_while_body_branch_to_dummy_stb_from_utf829_q ^ VCC_q;

    // i_unnamed_stb_from_utf82(LOGICAL,64)@0
    assign i_unnamed_stb_from_utf82_q = $unsigned(i_unnamed_stb_from_utf81_vt_join_q != c_i32_1369_recast_x_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84(BITJOIN,249)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_q = i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84(BITSELECT,250)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_q[31:0]);

    // i_while_body_branch_to_dummy37_stb_from_utf85(LOGICAL,83)@0
    assign i_while_body_branch_to_dummy37_stb_from_utf85_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16141_stb_from_utf84_b == c_i32_1170_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_stb_from_utf8_139_stb_from_utf814(LOGICAL,46)@0
    assign i_reduction_stb_from_utf8_139_stb_from_utf814_q = i_while_body_branch_to_dummy37_stb_from_utf85_q ^ i_unnamed_stb_from_utf82_q;

    // c_i32_1071_recast_x(CONSTANT,148)
    assign c_i32_1071_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87(BITJOIN,246)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_q = i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87(BITSELECT,247)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_q[31:0]);

    // i_while_body_branch_to_dummy35_stb_from_utf88(LOGICAL,82)@0
    assign i_while_body_branch_to_dummy35_stb_from_utf88_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16140_stb_from_utf87_b == c_i32_1071_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_972_recast_x(CONSTANT,155)
    assign c_i32_972_recast_x_q = $unsigned(32'b00000000000000000000000000001001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810(BITJOIN,243)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_q = i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810(BITSELECT,244)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_q[31:0]);

    // i_while_body_branch_to_dummy33_stb_from_utf811(LOGICAL,81)@0
    assign i_while_body_branch_to_dummy33_stb_from_utf811_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_16139_stb_from_utf810_b == c_i32_972_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_stb_from_utf8_138_stb_from_utf813(LOGICAL,45)@0
    assign i_reduction_stb_from_utf8_138_stb_from_utf813_q = i_while_body_branch_to_dummy33_stb_from_utf811_q ^ i_while_body_branch_to_dummy35_stb_from_utf88_q;

    // i_reduction_stb_from_utf8_140_stb_from_utf815(LOGICAL,47)@0
    assign i_reduction_stb_from_utf8_140_stb_from_utf815_q = i_reduction_stb_from_utf8_138_stb_from_utf813_q ^ i_reduction_stb_from_utf8_139_stb_from_utf814_q;

    // i_reduction_stb_from_utf8_141_stb_from_utf832(LOGICAL,48)@0 + 1
    assign i_reduction_stb_from_utf8_141_stb_from_utf832_qi = i_reduction_stb_from_utf8_140_stb_from_utf815_q & i_not_while_body_branch_to_dummy_stb_from_utf831_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_stb_from_utf8_141_stb_from_utf832_delay ( .xin(i_reduction_stb_from_utf8_141_stb_from_utf832_qi), .xout(i_reduction_stb_from_utf8_141_stb_from_utf832_q), .ena(SE_i_reduction_stb_from_utf8_141_stb_from_utf832_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_reduction_stb_from_utf8_145_stb_from_utf836(LOGICAL,52)@1
    assign i_reduction_stb_from_utf8_145_stb_from_utf836_q = i_reduction_stb_from_utf8_141_stb_from_utf832_q & i_reduction_stb_from_utf8_144_stb_from_utf835_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839(BITJOIN,214)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_q = i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839(BITSELECT,215)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_q[0:0]);

    // redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0(REG,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_backEN == 1'b1)
        begin
            redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_b);
        end
    end

    // i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840(LOGICAL,21)@1 + 1
    assign i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_qi = redist1_i_llvm_fpga_ffwd_dest_i1_tobool6225_stb_from_utf839_out_dest_data_out_5_0_1_0_q | i_reduction_stb_from_utf8_145_stb_from_utf836_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_delay ( .xin(i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_qi), .xout(i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_q), .ena(SE_i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_stb_from_utf846(LOGICAL,71)@2
    assign i_unnamed_stb_from_utf846_q = i_do_while_end_from_while_body_unifiedlatchblock_switch_stb_from_utf840_q ^ VCC_q;

    // i_arrayidx163_stb_from_utf80_mult_multconst_x(CONSTANT,169)
    assign i_arrayidx163_stb_from_utf80_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841(BITJOIN,255)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_q = i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841(BITSELECT,256)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_q[31:0]);

    // i_unnamed_stb_from_utf842_sel_x(BITSELECT,172)@1
    assign i_unnamed_stb_from_utf842_sel_x_b = $unsigned({{32{bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_stb_from_utf8_132_stb_from_utf841_b[31:0]});

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837(BITJOIN,221)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_q = i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837(BITSELECT,222)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_q[0:0]);

    // redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_backEN == 1'b1)
        begin
            redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_b);
        end
    end

    // i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838(LOGICAL,44)@1
    assign i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_q = i_reduction_stb_from_utf8_145_stb_from_utf836_q & redist0_i_llvm_fpga_ffwd_dest_i1_tobool62_phi_decision395_xor27_stb_from_utf837_out_dest_data_out_6_0_1_0_q;

    // i_idxprom162_stb_from_utf843(MUX,23)@1 + 1
    assign i_idxprom162_stb_from_utf843_s = i_path_to_while_end_via_while_body_unifiedlatchblock_switch_stb_from_utf838_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_idxprom162_stb_from_utf843_q <= 64'b0;
        end
        else if (SE_i_idxprom162_stb_from_utf843_backEN == 1'b1)
        begin
            unique case (i_idxprom162_stb_from_utf843_s)
                1'b0 : i_idxprom162_stb_from_utf843_q <= c_i64_078_q;
                1'b1 : i_idxprom162_stb_from_utf843_q <= i_unnamed_stb_from_utf842_sel_x_b;
                default : i_idxprom162_stb_from_utf843_q <= 64'b0;
            endcase
        end
    end

    // i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select(BITSELECT,199)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_b = i_idxprom162_stb_from_utf843_q[63:54];
    assign i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_c = i_idxprom162_stb_from_utf843_q[53:36];
    assign i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_d = i_idxprom162_stb_from_utf843_q[35:18];
    assign i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_e = i_idxprom162_stb_from_utf843_q[17:0];

    // i_arrayidx163_stb_from_utf80_mult_x_im0_shift0(BITSHIFT,195)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_im0_shift0_qint = { i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx163_stb_from_utf80_mult_x_im0_shift0_q = i_arrayidx163_stb_from_utf80_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx163_stb_from_utf80_mult_x_sums_align_3(BITSHIFT,192)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx163_stb_from_utf80_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_align_3_q = i_arrayidx163_stb_from_utf80_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx163_stb_from_utf80_mult_x_im6_shift0(BITSHIFT,197)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_im6_shift0_qint = { i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx163_stb_from_utf80_mult_x_im6_shift0_q = i_arrayidx163_stb_from_utf80_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx163_stb_from_utf80_mult_x_sums_align_2(BITSHIFT,191)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx163_stb_from_utf80_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_align_2_q = i_arrayidx163_stb_from_utf80_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx163_stb_from_utf80_mult_x_sums_join_4(BITJOIN,193)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_join_4_q = {i_arrayidx163_stb_from_utf80_mult_x_sums_align_3_q, i_arrayidx163_stb_from_utf80_mult_x_sums_align_2_q};

    // i_arrayidx163_stb_from_utf80_mult_x_im3_shift0(BITSHIFT,196)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_im3_shift0_qint = { i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx163_stb_from_utf80_mult_x_im3_shift0_q = i_arrayidx163_stb_from_utf80_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx163_stb_from_utf80_mult_x_sums_align_0(BITSHIFT,189)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx163_stb_from_utf80_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_align_0_q = i_arrayidx163_stb_from_utf80_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx163_stb_from_utf80_mult_x_im9_shift0(BITSHIFT,198)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_im9_shift0_qint = { i_arrayidx163_stb_from_utf80_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx163_stb_from_utf80_mult_x_im9_shift0_q = i_arrayidx163_stb_from_utf80_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx163_stb_from_utf80_mult_x_sums_join_1(BITJOIN,190)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_join_1_q = {i_arrayidx163_stb_from_utf80_mult_x_sums_align_0_q, {1'b0, i_arrayidx163_stb_from_utf80_mult_x_im9_shift0_q}};

    // i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0(ADD,194)@2
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx163_stb_from_utf80_mult_x_sums_join_1_q};
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx163_stb_from_utf80_mult_x_sums_join_4_q};
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_q = i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx163_stb_from_utf80_mult_extender_x(BITJOIN,168)@2
    assign i_arrayidx163_stb_from_utf80_mult_extender_x_q = {i_arrayidx163_stb_from_utf80_mult_multconst_x_q, i_arrayidx163_stb_from_utf80_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx163_stb_from_utf80_trunc_sel_x(BITSELECT,170)@2
    assign i_arrayidx163_stb_from_utf80_trunc_sel_x_b = i_arrayidx163_stb_from_utf80_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844(BITJOIN,262)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_q = i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844(BITSELECT,263)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_q[63:0]);

    // i_arrayidx163_stb_from_utf80_add_x(ADD,162)@2
    assign i_arrayidx163_stb_from_utf80_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_b};
    assign i_arrayidx163_stb_from_utf80_add_x_b = {1'b0, i_arrayidx163_stb_from_utf80_trunc_sel_x_b};
    assign i_arrayidx163_stb_from_utf80_add_x_o = $unsigned(i_arrayidx163_stb_from_utf80_add_x_a) + $unsigned(i_arrayidx163_stb_from_utf80_add_x_b);
    assign i_arrayidx163_stb_from_utf80_add_x_q = i_arrayidx163_stb_from_utf80_add_x_o[64:0];

    // i_arrayidx163_stb_from_utf80_dupName_0_trunc_sel_x(BITSELECT,171)@2
    assign i_arrayidx163_stb_from_utf80_dupName_0_trunc_sel_x_b = i_arrayidx163_stb_from_utf80_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_1_stb_from_utf847(BLACKBOX,41)@2
    // in in_i_stall@20000000
    // out out_lsu_memdep_1_o_active@20000000
    // out out_memdep_1_stb_from_utf8_avm_address@20000000
    // out out_memdep_1_stb_from_utf8_avm_burstcount@20000000
    // out out_memdep_1_stb_from_utf8_avm_byteenable@20000000
    // out out_memdep_1_stb_from_utf8_avm_enable@20000000
    // out out_memdep_1_stb_from_utf8_avm_read@20000000
    // out out_memdep_1_stb_from_utf8_avm_write@20000000
    // out out_memdep_1_stb_from_utf8_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_o_writeack@6
    stb_from_utf8_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_stb_from_utf847 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx163_stb_from_utf80_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_stb_from_utf846_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_1_stb_from_utf847_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_buffer06913_stb_from_utf844_V0),
        .in_i_writedata(c_i32_079_q),
        .in_memdep_1_stb_from_utf8_avm_readdata(in_memdep_1_stb_from_utf8_avm_readdata),
        .in_memdep_1_stb_from_utf8_avm_readdatavalid(in_memdep_1_stb_from_utf8_avm_readdatavalid),
        .in_memdep_1_stb_from_utf8_avm_waitrequest(in_memdep_1_stb_from_utf8_avm_waitrequest),
        .in_memdep_1_stb_from_utf8_avm_writeack(in_memdep_1_stb_from_utf8_avm_writeack),
        .out_lsu_memdep_1_o_active(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_lsu_memdep_1_o_active),
        .out_memdep_1_stb_from_utf8_avm_address(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_address),
        .out_memdep_1_stb_from_utf8_avm_burstcount(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_burstcount),
        .out_memdep_1_stb_from_utf8_avm_byteenable(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_byteenable),
        .out_memdep_1_stb_from_utf8_avm_enable(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_enable),
        .out_memdep_1_stb_from_utf8_avm_read(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_read),
        .out_memdep_1_stb_from_utf8_avm_write(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_write),
        .out_memdep_1_stb_from_utf8_avm_writedata(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_memdep_1_stb_from_utf8_avm_address = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_address;
    assign out_memdep_1_stb_from_utf8_avm_enable = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_enable;
    assign out_memdep_1_stb_from_utf8_avm_read = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_read;
    assign out_memdep_1_stb_from_utf8_avm_write = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_write;
    assign out_memdep_1_stb_from_utf8_avm_writedata = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_writedata;
    assign out_memdep_1_stb_from_utf8_avm_byteenable = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_byteenable;
    assign out_memdep_1_stb_from_utf8_avm_burstcount = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_memdep_1_stb_from_utf8_avm_burstcount;

    // feedback_out_1_sync(GPOUT,18)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,20)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_stb_from_utf867_out_feedback_valid_out_1;

    // sync_out(GPOUT,143)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,157)
    assign out_lsu_memdep_1_o_active = i_llvm_fpga_mem_memdep_1_stb_from_utf847_out_lsu_memdep_1_o_active;

    // dupName_0_sync_out_x(GPOUT,158)@6
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_acl_16133_stb_from_utf850_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,161)
    assign out_iowr_bl_return_stb_from_utf8_o_fifodata = i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_iowr_bl_return_stb_from_utf8_o_fifodata;
    assign out_iowr_bl_return_stb_from_utf8_o_fifovalid = i_iowr_bl_return_stb_from_utf8_unnamed_stb_from_utf815_stb_from_utf866_out_iowr_bl_return_stb_from_utf8_o_fifovalid;

endmodule
