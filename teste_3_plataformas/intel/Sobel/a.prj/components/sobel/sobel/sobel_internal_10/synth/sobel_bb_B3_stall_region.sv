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

// SystemVerilog created from sobel_bb_B3_stall_region
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_bb_B3_stall_region (
    input wire [63:0] in_unnamed_sobel6_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_writeack,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel6_sobel_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add1236,
    input wire [0:0] in_exitcond1137,
    input wire [0:0] in_forked,
    input wire [31:0] in_j_083_pop935,
    input wire [0:0] in_memdep_phi1_pop1039,
    input wire [0:0] in_notcmp2038,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_sobel7_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_writeack,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel7_sobel_avm_readdatavalid,
    output wire [63:0] out_unnamed_sobel6_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel6_sobel_avm_writedata,
    output wire [7:0] out_unnamed_sobel6_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel6_sobel_avm_burstcount,
    output wire [0:0] out_exitcond1132_pop17,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp2033_pop18,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_sobel8_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_writeack,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel8_sobel_avm_readdatavalid,
    output wire [63:0] out_unnamed_sobel7_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel7_sobel_avm_writedata,
    output wire [7:0] out_unnamed_sobel7_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel7_sobel_avm_burstcount,
    input wire [63:0] in_unnamed_sobel9_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_writeack,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel9_sobel_avm_readdatavalid,
    output wire [63:0] out_unnamed_sobel8_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel8_sobel_avm_writedata,
    output wire [7:0] out_unnamed_sobel8_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel8_sobel_avm_burstcount,
    input wire [63:0] in_unnamed_sobel10_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_writeack,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel10_sobel_avm_readdatavalid,
    output wire [63:0] out_unnamed_sobel9_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel9_sobel_avm_writedata,
    output wire [7:0] out_unnamed_sobel9_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel9_sobel_avm_burstcount,
    input wire [63:0] in_unnamed_sobel11_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_writeack,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel11_sobel_avm_readdatavalid,
    output wire [63:0] out_unnamed_sobel10_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel10_sobel_avm_writedata,
    output wire [7:0] out_unnamed_sobel10_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel10_sobel_avm_burstcount,
    input wire [63:0] in_unnamed_sobel12_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_writeack,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel12_sobel_avm_readdatavalid,
    output wire [63:0] out_unnamed_sobel11_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel11_sobel_avm_writedata,
    output wire [7:0] out_unnamed_sobel11_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel11_sobel_avm_burstcount,
    input wire [63:0] in_unnamed_sobel13_sobel_avm_readdata,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_writeack,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel13_sobel_avm_readdatavalid,
    output wire [63:0] out_unnamed_sobel12_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel12_sobel_avm_writedata,
    output wire [7:0] out_unnamed_sobel12_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel12_sobel_avm_burstcount,
    input wire [63:0] in_memdep_sobel_avm_readdata,
    input wire [0:0] in_memdep_sobel_avm_writeack,
    input wire [0:0] in_memdep_sobel_avm_waitrequest,
    input wire [0:0] in_memdep_sobel_avm_readdatavalid,
    output wire [63:0] out_unnamed_sobel13_sobel_avm_address,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_enable,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_read,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_write,
    output wire [63:0] out_unnamed_sobel13_sobel_avm_writedata,
    output wire [7:0] out_unnamed_sobel13_sobel_avm_byteenable,
    output wire [0:0] out_unnamed_sobel13_sobel_avm_burstcount,
    output wire [63:0] out_memdep_sobel_avm_address,
    output wire [0:0] out_memdep_sobel_avm_enable,
    output wire [0:0] out_memdep_sobel_avm_read,
    output wire [0:0] out_memdep_sobel_avm_write,
    output wire [63:0] out_memdep_sobel_avm_writedata,
    output wire [7:0] out_memdep_sobel_avm_byteenable,
    output wire [0:0] out_memdep_sobel_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1114_q;
    wire [31:0] c_i32_0126_q;
    wire [31:0] c_i32_1054127_q;
    wire [31:0] c_i32_1116_q;
    wire [31:0] c_i32_1118_q;
    wire [31:0] c_i32_21128_q;
    wire [7:0] c_i8_1120_q;
    wire [7:0] c_i8_2106_q;
    wire [7:0] c_i8_96117_q;
    wire [32:0] i_add101_sobel67_a;
    wire [32:0] i_add101_sobel67_b;
    logic [32:0] i_add101_sobel67_o;
    wire [32:0] i_add101_sobel67_q;
    wire [32:0] i_add165_sobel77_a;
    wire [32:0] i_add165_sobel77_b;
    logic [32:0] i_add165_sobel77_o;
    wire [32:0] i_add165_sobel77_q;
    wire [31:0] i_add165_sobel77_vt_join_q;
    wire [30:0] i_add165_sobel77_vt_select_30_b;
    wire [32:0] i_add22_sobel18_a;
    wire [32:0] i_add22_sobel18_b;
    logic [32:0] i_add22_sobel18_o;
    wire [32:0] i_add22_sobel18_q;
    wire [32:0] i_add94_sobel64_a;
    wire [32:0] i_add94_sobel64_b;
    logic [32:0] i_add94_sobel64_o;
    wire [32:0] i_add94_sobel64_q;
    wire [32:0] i_add_i_sobel95_a;
    wire [32:0] i_add_i_sobel95_b;
    logic [32:0] i_add_i_sobel95_o;
    wire [32:0] i_add_i_sobel95_q;
    wire [24:0] i_add_i_sobel95_vt_const_31_q;
    wire [31:0] i_add_i_sobel95_vt_join_q;
    wire [6:0] i_add_i_sobel95_vt_select_6_b;
    wire [3:0] i_and6_i_sobel96_vt_const_3_q;
    wire [25:0] i_and6_i_sobel96_vt_const_31_q;
    wire [31:0] i_and6_i_sobel96_vt_join_q;
    wire [1:0] i_and6_i_sobel96_vt_select_5_b;
    wire [1:0] i_and7_i_sobel99_vt_const_1_q;
    wire [27:0] i_and7_i_sobel99_vt_const_31_q;
    wire [31:0] i_and7_i_sobel99_vt_join_q;
    wire [1:0] i_and7_i_sobel99_vt_select_3_b;
    wire [1:0] i_cleanups_shl_sobel15_vt_join_q;
    wire [0:0] i_cleanups_shl_sobel15_vt_select_1_b;
    wire [0:0] i_cmp_i_sobel90_q;
    wire [32:0] i_conv4_i_sobel94_vt_const_63_q;
    wire [63:0] i_conv4_i_sobel94_vt_join_q;
    wire [30:0] i_conv4_i_sobel94_vt_select_30_b;
    wire [8:0] i_fpga_indvars_iv_next_sobel22_a;
    wire [8:0] i_fpga_indvars_iv_next_sobel22_b;
    logic [8:0] i_fpga_indvars_iv_next_sobel22_o;
    wire [8:0] i_fpga_indvars_iv_next_sobel22_q;
    wire [63:0] i_idxprom13_sobel27_vt_join_q;
    wire [31:0] i_idxprom13_sobel27_vt_select_31_b;
    wire [63:0] i_idxprom23_sobel35_vt_join_q;
    wire [31:0] i_idxprom23_sobel35_vt_select_31_b;
    wire [63:0] i_idxprom7_sobel24_vt_join_q;
    wire [31:0] i_idxprom7_sobel24_vt_select_31_b;
    wire [63:0] i_idxprom91_sobel19_vt_join_q;
    wire [31:0] i_idxprom91_sobel19_vt_select_31_b;
    wire [31:0] i_llvm_ctpop_i32_unnamed_sobel14_sobel89_data;
    wire [31:0] i_llvm_ctpop_i32_unnamed_sobel14_sobel89_sum;
    wire [31:0] i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_join_q;
    wire [5:0] i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_select_5_b;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel112_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel112_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel112_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel112_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sobel3_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_valid_out;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sobel16_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sobel16_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sobel16_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sobel16_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sobel37_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sobel37_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sobel37_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sobel37_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_add1231_push16_sobel26_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_add1231_push16_sobel26_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i32_add1231_push16_sobel26_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_add1231_push16_sobel26_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_082_push12_sobel34_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_i_082_push12_sobel34_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i32_i_082_push12_sobel34_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_082_push12_sobel34_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_valid_out;
    wire [0:0] i_masked_sobel47_qi;
    reg [0:0] i_masked_sobel47_q;
    wire [0:0] i_memdep_phi1_or_sobel31_q;
    wire [31:0] i_mul114_sobel60_vt_join_q;
    wire [30:0] i_mul114_sobel60_vt_select_31_b;
    wire [31:0] i_mul164_sobel75_vt_join_q;
    wire [30:0] i_mul164_sobel75_vt_select_30_b;
    wire [31:0] i_mul31_sobel62_vt_join_q;
    wire [30:0] i_mul31_sobel62_vt_select_31_b;
    wire [31:0] i_mul81_sobel76_vt_join_q;
    wire [30:0] i_mul81_sobel76_vt_select_30_b;
    wire [31:0] i_mul93_sobel65_vt_join_q;
    wire [30:0] i_mul93_sobel65_vt_select_31_b;
    wire [31:0] i_mul_sobel61_vt_join_q;
    wire [30:0] i_mul_sobel61_vt_select_31_b;
    wire [31:0] i_neg_i_i_sobel88_q;
    wire [0:0] i_next_cleanups_sobel56_s;
    reg [1:0] i_next_cleanups_sobel56_q;
    wire [0:0] i_notcmp_sobel36_q;
    wire [31:0] i_or2_i_i_sobel81_q;
    wire [31:0] i_or2_i_i_sobel81_vt_join_q;
    wire [30:0] i_or2_i_i_sobel81_vt_select_30_b;
    wire [31:0] i_or4_i_i_sobel83_q;
    wire [31:0] i_or4_i_i_sobel83_vt_join_q;
    wire [30:0] i_or4_i_i_sobel83_vt_select_30_b;
    wire [31:0] i_or6_i_i_sobel85_q;
    wire [31:0] i_or6_i_i_sobel85_vt_join_q;
    wire [30:0] i_or6_i_i_sobel85_vt_select_30_b;
    wire [31:0] i_or8_i_i_sobel87_q;
    wire [31:0] i_or_i_i_sobel79_q;
    wire [31:0] i_or_i_i_sobel79_vt_join_q;
    wire [30:0] i_or_i_i_sobel79_vt_select_30_b;
    wire [0:0] i_or_sobel46_q;
    wire [32:0] i_reduction_sobel_0_sobel66_a;
    wire [32:0] i_reduction_sobel_0_sobel66_b;
    logic [32:0] i_reduction_sobel_0_sobel66_o;
    wire [32:0] i_reduction_sobel_0_sobel66_q;
    wire [32:0] i_reduction_sobel_1_sobel68_a;
    wire [32:0] i_reduction_sobel_1_sobel68_b;
    logic [32:0] i_reduction_sobel_1_sobel68_o;
    wire [32:0] i_reduction_sobel_1_sobel68_q;
    wire [61:0] i_sh_prom1126_i_sobel103_vt_const_63_q;
    wire [63:0] i_sh_prom1126_i_sobel103_vt_join_q;
    wire [1:0] i_sh_prom1126_i_sobel103_vt_select_1_b;
    wire [59:0] i_sh_prom8_i_sobel100_vt_const_63_q;
    wire [63:0] i_sh_prom8_i_sobel100_vt_join_q;
    wire [1:0] i_sh_prom8_i_sobel100_vt_select_3_b;
    wire [57:0] i_sh_prom_i_sobel97_vt_const_63_q;
    wire [63:0] i_sh_prom_i_sobel97_vt_join_q;
    wire [1:0] i_sh_prom_i_sobel97_vt_select_5_b;
    wire [2:0] i_shr1_i_i_sobel80_vt_const_31_q;
    wire [31:0] i_shr1_i_i_sobel80_vt_join_q;
    wire [28:0] i_shr1_i_i_sobel80_vt_select_28_b;
    wire [4:0] i_shr3_i_i_sobel82_vt_const_31_q;
    wire [31:0] i_shr3_i_i_sobel82_vt_join_q;
    wire [26:0] i_shr3_i_i_sobel82_vt_select_26_b;
    wire [8:0] i_shr5_i_i_sobel84_vt_const_31_q;
    wire [31:0] i_shr5_i_i_sobel84_vt_join_q;
    wire [22:0] i_shr5_i_i_sobel84_vt_select_22_b;
    wire [15:0] i_shr7_i_i_sobel86_vt_const_31_q;
    wire [31:0] i_shr7_i_i_sobel86_vt_join_q;
    wire [15:0] i_shr7_i_i_sobel86_vt_select_15_b;
    wire [31:0] i_shr_i_i_sobel78_vt_join_q;
    wire [29:0] i_shr_i_i_sobel78_vt_select_29_b;
    wire [32:0] i_sub108_sobel69_a;
    wire [32:0] i_sub108_sobel69_b;
    logic [32:0] i_sub108_sobel69_o;
    wire [32:0] i_sub108_sobel69_q;
    wire [32:0] i_sub115_sobel71_a;
    wire [32:0] i_sub115_sobel71_b;
    logic [32:0] i_sub115_sobel71_o;
    wire [32:0] i_sub115_sobel71_q;
    wire [32:0] i_sub122_sobel73_a;
    wire [32:0] i_sub122_sobel73_b;
    logic [32:0] i_sub122_sobel73_o;
    wire [32:0] i_sub122_sobel73_q;
    wire [32:0] i_sub25_sobel70_a;
    wire [32:0] i_sub25_sobel70_b;
    logic [32:0] i_sub25_sobel70_o;
    wire [32:0] i_sub25_sobel70_q;
    wire [32:0] i_sub32_sobel72_a;
    wire [32:0] i_sub32_sobel72_b;
    logic [32:0] i_sub32_sobel72_o;
    wire [32:0] i_sub32_sobel72_q;
    wire [32:0] i_sub39_sobel74_a;
    wire [32:0] i_sub39_sobel74_b;
    logic [32:0] i_sub39_sobel74_o;
    wire [32:0] i_sub39_sobel74_q;
    wire [32:0] i_sub4_sobel17_a;
    wire [32:0] i_sub4_sobel17_b;
    logic [32:0] i_sub4_sobel17_o;
    wire [32:0] i_sub4_sobel17_q;
    wire [32:0] i_sub_i_sobel92_a;
    wire [32:0] i_sub_i_sobel92_b;
    logic [32:0] i_sub_i_sobel92_o;
    wire [32:0] i_sub_i_sobel92_q;
    wire [20:0] i_sub_i_sobel92_vt_const_31_q;
    wire [31:0] i_sub_i_sobel92_vt_join_q;
    wire [10:0] i_sub_i_sobel92_vt_select_10_b;
    wire [32:0] i_sub_sobel25_a;
    wire [32:0] i_sub_sobel25_b;
    logic [32:0] i_sub_sobel25_o;
    wire [32:0] i_sub_sobel25_q;
    wire [0:0] i_unnamed_sobel93_s;
    reg [31:0] i_unnamed_sobel93_q;
    wire [31:0] i_unnamed_sobel93_vt_join_q;
    wire [10:0] i_unnamed_sobel93_vt_select_10_b;
    wire [0:0] i_xor_sobel32_q;
    wire [31:0] bgTrunc_i_add101_sobel67_sel_x_b;
    wire [31:0] bgTrunc_i_add165_sobel77_sel_x_b;
    wire [31:0] bgTrunc_i_add22_sobel18_sel_x_b;
    wire [31:0] bgTrunc_i_add94_sobel64_sel_x_b;
    wire [31:0] bgTrunc_i_add_i_sobel95_sel_x_b;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_sobel22_sel_x_b;
    wire [63:0] bgTrunc_i_mul164_sobel75_sel_x_in;
    wire [31:0] bgTrunc_i_mul164_sobel75_sel_x_b;
    wire [63:0] bgTrunc_i_mul81_sobel76_sel_x_in;
    wire [31:0] bgTrunc_i_mul81_sobel76_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_sobel_0_sobel66_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_sobel_1_sobel68_sel_x_b;
    wire [31:0] bgTrunc_i_sub108_sobel69_sel_x_b;
    wire [31:0] bgTrunc_i_sub115_sobel71_sel_x_b;
    wire [31:0] bgTrunc_i_sub122_sobel73_sel_x_b;
    wire [31:0] bgTrunc_i_sub25_sobel70_sel_x_b;
    wire [31:0] bgTrunc_i_sub32_sobel72_sel_x_b;
    wire [31:0] bgTrunc_i_sub39_sobel74_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_sobel17_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_sobel92_sel_x_b;
    wire [31:0] bgTrunc_i_sub_sobel25_sel_x_b;
    wire [64:0] i_arrayidx113_sobel0_add_x_a;
    wire [64:0] i_arrayidx113_sobel0_add_x_b;
    logic [64:0] i_arrayidx113_sobel0_add_x_o;
    wire [64:0] i_arrayidx113_sobel0_add_x_q;
    wire [64:0] i_arrayidx113_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx113_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx113_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx113_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx113_sobel0_mult_extender_x_q;
    wire [54:0] i_arrayidx113_sobel0_mult_multconst_x_q;
    wire [63:0] i_arrayidx113_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx113_sobel0_dupName_0_mult_extender_x_q;
    wire [60:0] i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q;
    wire [63:0] i_arrayidx113_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx113_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx113_sobel0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx11_sobel0_add_x_a;
    wire [64:0] i_arrayidx11_sobel0_add_x_b;
    logic [64:0] i_arrayidx11_sobel0_add_x_o;
    wire [64:0] i_arrayidx11_sobel0_add_x_q;
    wire [64:0] i_arrayidx11_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx11_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx11_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx11_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx11_sobel0_mult_extender_x_q;
    wire [63:0] i_arrayidx11_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx11_sobel0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx11_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx11_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx11_sobel0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx170_sobel0_add_x_a;
    wire [64:0] i_arrayidx170_sobel0_add_x_b;
    logic [64:0] i_arrayidx170_sobel0_add_x_o;
    wire [64:0] i_arrayidx170_sobel0_add_x_q;
    wire [64:0] i_arrayidx170_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx170_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx170_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx170_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx170_sobel0_mult_extender_x_q;
    wire [63:0] i_arrayidx170_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx170_sobel0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx170_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx170_sobel0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx17_sobel0_add_x_a;
    wire [64:0] i_arrayidx17_sobel0_add_x_b;
    logic [64:0] i_arrayidx17_sobel0_add_x_o;
    wire [64:0] i_arrayidx17_sobel0_add_x_q;
    wire [64:0] i_arrayidx17_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx17_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx17_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx17_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx17_sobel0_mult_extender_x_q;
    wire [63:0] i_arrayidx17_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx17_sobel0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx17_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx17_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx17_sobel0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx24_sobel0_add_x_a;
    wire [64:0] i_arrayidx24_sobel0_add_x_b;
    logic [64:0] i_arrayidx24_sobel0_add_x_o;
    wire [64:0] i_arrayidx24_sobel0_add_x_q;
    wire [64:0] i_arrayidx24_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx24_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx24_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx24_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx24_sobel0_mult_extender_x_q;
    wire [63:0] i_arrayidx24_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx24_sobel0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx24_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx24_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx24_sobel0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx30_sobel0_add_x_a;
    wire [64:0] i_arrayidx30_sobel0_add_x_b;
    logic [64:0] i_arrayidx30_sobel0_add_x_o;
    wire [64:0] i_arrayidx30_sobel0_add_x_q;
    wire [64:0] i_arrayidx30_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx30_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx30_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx30_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx30_sobel0_mult_extender_x_q;
    wire [63:0] i_arrayidx30_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx30_sobel0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx30_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx30_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx30_sobel0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx38_sobel0_add_x_a;
    wire [64:0] i_arrayidx38_sobel0_add_x_b;
    logic [64:0] i_arrayidx38_sobel0_add_x_o;
    wire [64:0] i_arrayidx38_sobel0_add_x_q;
    wire [64:0] i_arrayidx38_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx38_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx38_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx38_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx38_sobel0_mult_extender_x_q;
    wire [63:0] i_arrayidx38_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx38_sobel0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx38_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx38_sobel0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx6_sobel0_add_x_a;
    wire [64:0] i_arrayidx6_sobel0_add_x_b;
    logic [64:0] i_arrayidx6_sobel0_add_x_o;
    wire [64:0] i_arrayidx6_sobel0_add_x_q;
    wire [64:0] i_arrayidx6_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx6_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx6_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx6_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx6_sobel0_mult_extender_x_q;
    wire [63:0] i_arrayidx6_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx6_sobel0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx6_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx6_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx6_sobel0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx92_sobel0_add_x_a;
    wire [64:0] i_arrayidx92_sobel0_add_x_b;
    logic [64:0] i_arrayidx92_sobel0_add_x_o;
    wire [64:0] i_arrayidx92_sobel0_add_x_q;
    wire [64:0] i_arrayidx92_sobel0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx92_sobel0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx92_sobel0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx92_sobel0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx92_sobel0_mult_extender_x_q;
    wire [63:0] i_arrayidx92_sobel0_trunc_sel_x_b;
    wire [127:0] i_arrayidx92_sobel0_dupName_0_mult_extender_x_q;
    wire [63:0] i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx92_sobel0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx92_sobel0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_conv4_i_sobel94_sel_x_b;
    wire [0:0] i_first_cleanup_sobel14_sel_x_b;
    wire [63:0] i_idxprom13_sobel27_sel_x_b;
    wire [63:0] i_idxprom23_sobel35_sel_x_b;
    wire [63:0] i_idxprom5_sobel33_sel_x_b;
    wire [63:0] i_idxprom7_sobel24_sel_x_b;
    wire [63:0] i_idxprom91_sobel19_sel_x_b;
    wire [63:0] i_idxprom_sobel40_sel_x_b;
    wire [135:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a;
    wire [63:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_q;
    wire [135:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_dest_data_out_0_0_0_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_c0_exit51_1_tpl;
    wire [63:0] i_sh_prom1126_i_sobel103_sel_x_b;
    wire [63:0] i_sh_prom8_i_sobel100_sel_x_b;
    wire [63:0] i_sh_prom_i_sobel97_sel_x_b;
    wire [5:0] i_shl12_i_sobel0_shift_narrow_x_b;
    wire [5:0] i_shl9_i_sobel0_shift_narrow_x_b;
    wire [5:0] i_shl_i_sobel0_shift_narrow_x_b;
    wire [0:0] sobel_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] sobel_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] sobel_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] sobel_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] sobel_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_and6_i_sobel96_join_q;
    wire [31:0] i_and7_i_sobel99_join_q;
    wire [0:0] i_exitcond_sobel20_cmp_nsign_q;
    wire [63:0] i_mul164_sobel75_sums_join_0_q;
    wire [50:0] i_mul164_sobel75_sums_align_1_q;
    wire [50:0] i_mul164_sobel75_sums_align_1_qint;
    wire [64:0] i_mul164_sobel75_sums_result_add_0_0_a;
    wire [64:0] i_mul164_sobel75_sums_result_add_0_0_b;
    logic [64:0] i_mul164_sobel75_sums_result_add_0_0_o;
    wire [64:0] i_mul164_sobel75_sums_result_add_0_0_q;
    wire [63:0] i_mul81_sobel76_sums_join_0_q;
    wire [50:0] i_mul81_sobel76_sums_align_1_q;
    wire [50:0] i_mul81_sobel76_sums_align_1_qint;
    wire [64:0] i_mul81_sobel76_sums_result_add_0_0_a;
    wire [64:0] i_mul81_sobel76_sums_result_add_0_0_b;
    logic [64:0] i_mul81_sobel76_sums_result_add_0_0_o;
    wire [64:0] i_mul81_sobel76_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx113_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx113_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx113_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx113_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx113_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx113_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx113_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx113_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx11_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx11_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx11_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx11_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx11_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx11_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx11_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx11_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx170_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx170_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx170_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx170_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx170_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx170_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx170_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx170_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx17_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx17_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx17_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx17_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx17_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx17_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx17_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx17_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx24_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx24_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx24_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx24_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx24_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx24_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx24_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx24_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx30_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx30_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx30_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx30_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx30_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx30_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx30_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx30_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx38_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx38_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx38_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx38_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx38_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx38_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx38_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx38_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx6_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx6_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx6_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx6_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx6_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx6_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx6_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx6_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx92_sobel0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx92_sobel0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx92_sobel0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx92_sobel0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx92_sobel0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx92_sobel0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx92_sobel0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx92_sobel0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid1001_i_cleanups_shl_sobel0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid1001_i_cleanups_shl_sobel0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid1002_i_cleanups_shl_sobel0_shift_x_q;
    wire [0:0] leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_s;
    reg [1:0] leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1009_i_mul114_sobel0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1009_i_mul114_sobel0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid1010_i_mul114_sobel0_shift_x_q;
    wire [0:0] leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1017_i_mul31_sobel0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1017_i_mul31_sobel0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid1018_i_mul31_sobel0_shift_x_q;
    wire [0:0] leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1025_i_mul93_sobel0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1025_i_mul93_sobel0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid1026_i_mul93_sobel0_shift_x_q;
    wire [0:0] leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1033_i_mul_sobel0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1033_i_mul_sobel0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid1034_i_mul_sobel0_shift_x_q;
    wire [0:0] leftShiftStage0_uid1036_i_mul_sobel0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1036_i_mul_sobel0_shift_x_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid1041_i_shl12_i_sobel0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid1041_i_shl12_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid1042_i_shl12_i_sobel0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid1044_i_shl12_i_sobel0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid1044_i_shl12_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid1045_i_shl12_i_sobel0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid1047_i_shl12_i_sobel0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid1047_i_shl12_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid1048_i_shl12_i_sobel0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_in;
    wire [1:0] leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_b;
    wire [1:0] leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_s;
    reg [63:0] leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_q;
    wire [59:0] leftShiftStage0Idx1Rng4_uid1055_i_shl9_i_sobel0_shift_x_in;
    wire [59:0] leftShiftStage0Idx1Rng4_uid1055_i_shl9_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid1056_i_shl9_i_sobel0_shift_x_q;
    wire [7:0] leftShiftStage0Idx2Pad8_uid1057_i_shl9_i_sobel0_shift_x_q;
    wire [55:0] leftShiftStage0Idx2Rng8_uid1058_i_shl9_i_sobel0_shift_x_in;
    wire [55:0] leftShiftStage0Idx2Rng8_uid1058_i_shl9_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid1059_i_shl9_i_sobel0_shift_x_q;
    wire [11:0] leftShiftStage0Idx3Pad12_uid1060_i_shl9_i_sobel0_shift_x_q;
    wire [51:0] leftShiftStage0Idx3Rng12_uid1061_i_shl9_i_sobel0_shift_x_in;
    wire [51:0] leftShiftStage0Idx3Rng12_uid1061_i_shl9_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid1062_i_shl9_i_sobel0_shift_x_q;
    wire [3:0] leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_in;
    wire [1:0] leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_b;
    wire [1:0] leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_s;
    reg [63:0] leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q;
    wire [47:0] leftShiftStage0Idx1Rng16_uid1069_i_shl_i_sobel0_shift_x_in;
    wire [47:0] leftShiftStage0Idx1Rng16_uid1069_i_shl_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid1070_i_shl_i_sobel0_shift_x_q;
    wire [31:0] leftShiftStage0Idx2Rng32_uid1072_i_shl_i_sobel0_shift_x_in;
    wire [31:0] leftShiftStage0Idx2Rng32_uid1072_i_shl_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid1073_i_shl_i_sobel0_shift_x_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid1074_i_shl_i_sobel0_shift_x_q;
    wire [15:0] leftShiftStage0Idx3Rng48_uid1075_i_shl_i_sobel0_shift_x_in;
    wire [15:0] leftShiftStage0Idx3Rng48_uid1075_i_shl_i_sobel0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid1076_i_shl_i_sobel0_shift_x_q;
    wire [1:0] leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b;
    wire [1:0] leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_s;
    reg [63:0] leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid1082_i_shr1_i_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1084_i_shr1_i_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_q;
    wire [27:0] rightShiftStage0Idx1Rng4_uid1090_i_shr3_i_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1092_i_shr3_i_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_q;
    wire [23:0] rightShiftStage0Idx1Rng8_uid1098_i_shr5_i_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1100_i_shr5_i_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_q;
    wire [15:0] rightShiftStage0Idx1Rng16_uid1106_i_shr7_i_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1108_i_shr7_i_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1114_i_shr_i_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1116_i_shr_i_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_q;
    wire [12:0] i_arrayidx113_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx113_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx113_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx113_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx113_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx113_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx113_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx113_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx113_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx113_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx113_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx113_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx113_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx113_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx113_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx113_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx113_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx113_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx113_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx113_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx113_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx113_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx113_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx113_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx113_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx113_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx113_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx113_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx113_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx113_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx113_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx113_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx113_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx113_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx113_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx113_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx113_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx113_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx113_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx113_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx113_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx113_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx11_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx11_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx11_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx11_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx11_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx11_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx11_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx11_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx11_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx11_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx11_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx11_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx11_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx11_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx11_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx11_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx11_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx11_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx11_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx11_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx11_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx11_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx11_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx11_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx11_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx11_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx11_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx11_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx11_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx11_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx11_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx11_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx11_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx11_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx11_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx11_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx11_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx11_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx11_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx11_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx11_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx11_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx170_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx170_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx170_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx170_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx170_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx170_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx170_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx170_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx170_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx170_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx170_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx170_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx170_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx170_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx170_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx170_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx170_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx170_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx170_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx170_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx170_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx170_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx170_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx170_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx170_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx170_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx170_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx170_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx170_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx170_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx170_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx170_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx170_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx170_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx170_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx170_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx170_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx170_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx170_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx170_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx170_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx170_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx17_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx17_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx17_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx17_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx17_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx17_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx17_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx17_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx17_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx17_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx17_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx17_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx17_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx17_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx17_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx17_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx17_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx17_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx17_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx17_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx17_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx17_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx17_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx17_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx17_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx17_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx17_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx17_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx17_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx17_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx17_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx17_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx17_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx17_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx17_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx17_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx17_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx17_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx17_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx17_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx17_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx17_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx24_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx24_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx24_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx24_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx24_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx24_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx24_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx24_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx24_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx24_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx24_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx24_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx24_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx24_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx24_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx24_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx24_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx24_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx24_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx24_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx24_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx24_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx24_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx24_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx24_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx24_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx24_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx24_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx24_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx24_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx24_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx24_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx24_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx24_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx24_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx24_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx24_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx24_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx24_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx24_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx24_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx24_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx30_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx30_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx30_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx30_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx30_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx30_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx30_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx30_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx30_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx30_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx30_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx30_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx30_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx30_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx30_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx30_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx30_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx30_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx30_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx30_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx30_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx30_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx30_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx30_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx30_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx30_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx30_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx30_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx30_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx30_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx30_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx30_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx30_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx30_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx30_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx30_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx30_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx30_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx30_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx30_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx30_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx30_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx38_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx38_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx38_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx38_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx38_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx38_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx38_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx38_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx38_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx38_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx38_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx38_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx38_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx38_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx38_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx38_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx38_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx38_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx38_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx38_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx38_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx38_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx38_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx38_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx38_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx38_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx38_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx38_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx38_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx38_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx38_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx38_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx38_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx38_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx38_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx38_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx38_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx38_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx38_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx38_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx38_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx38_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx6_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx6_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx6_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx6_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx6_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx6_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx6_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx6_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx6_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx6_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx6_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx6_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx6_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx6_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx6_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx6_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx6_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx6_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx6_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx6_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx6_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx6_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx6_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx6_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx6_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx6_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx6_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx6_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx6_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx6_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx6_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx6_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx6_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx6_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx6_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx6_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx6_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx6_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx6_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx6_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx6_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx6_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx92_sobel0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx92_sobel0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx92_sobel0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx92_sobel0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx92_sobel0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx92_sobel0_mult_x_im0_add_1_q;
    wire [13:0] i_arrayidx92_sobel0_mult_x_im0_shift2_q;
    wire [13:0] i_arrayidx92_sobel0_mult_x_im0_shift2_qint;
    wire [14:0] i_arrayidx92_sobel0_mult_x_im0_add_3_a;
    wire [14:0] i_arrayidx92_sobel0_mult_x_im0_add_3_b;
    logic [14:0] i_arrayidx92_sobel0_mult_x_im0_add_3_o;
    wire [14:0] i_arrayidx92_sobel0_mult_x_im0_add_3_q;
    wire [18:0] i_arrayidx92_sobel0_mult_x_im0_shift4_q;
    wire [18:0] i_arrayidx92_sobel0_mult_x_im0_shift4_qint;
    wire [20:0] i_arrayidx92_sobel0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx92_sobel0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx92_sobel0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im3_add_1_q;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im3_shift2_q;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im3_shift2_qint;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im3_add_3_a;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im3_add_3_b;
    logic [22:0] i_arrayidx92_sobel0_mult_x_im3_add_3_o;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im3_add_3_q;
    wire [26:0] i_arrayidx92_sobel0_mult_x_im3_shift4_q;
    wire [26:0] i_arrayidx92_sobel0_mult_x_im3_shift4_qint;
    wire [20:0] i_arrayidx92_sobel0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx92_sobel0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx92_sobel0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im6_add_1_q;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im6_shift2_q;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im6_shift2_qint;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im6_add_3_a;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im6_add_3_b;
    logic [22:0] i_arrayidx92_sobel0_mult_x_im6_add_3_o;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im6_add_3_q;
    wire [26:0] i_arrayidx92_sobel0_mult_x_im6_shift4_q;
    wire [26:0] i_arrayidx92_sobel0_mult_x_im6_shift4_qint;
    wire [20:0] i_arrayidx92_sobel0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx92_sobel0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx92_sobel0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im9_add_1_q;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im9_shift2_q;
    wire [21:0] i_arrayidx92_sobel0_mult_x_im9_shift2_qint;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im9_add_3_a;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im9_add_3_b;
    logic [22:0] i_arrayidx92_sobel0_mult_x_im9_add_3_o;
    wire [22:0] i_arrayidx92_sobel0_mult_x_im9_add_3_q;
    wire [26:0] i_arrayidx92_sobel0_mult_x_im9_shift4_q;
    wire [26:0] i_arrayidx92_sobel0_mult_x_im9_shift4_qint;
    wire [11:0] i_arrayidx92_sobel0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx92_sobel0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx92_sobel0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx92_sobel0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx92_sobel0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx92_sobel0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx92_sobel0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx92_sobel0_dupName_0_mult_x_im9_shift0_qint;
    wire i_mul164_sobel75_im0_cma_reset;
    wire [13:0] i_mul164_sobel75_im0_cma_a0;
    wire [13:0] i_mul164_sobel75_im0_cma_c0;
    wire [27:0] i_mul164_sobel75_im0_cma_s0;
    wire [27:0] i_mul164_sobel75_im0_cma_qq;
    wire [27:0] i_mul164_sobel75_im0_cma_q;
    wire i_mul164_sobel75_im0_cma_ena0;
    wire i_mul164_sobel75_im0_cma_ena1;
    wire i_mul164_sobel75_im0_cma_ena2;
    wire i_mul164_sobel75_im8_cma_reset;
    wire [17:0] i_mul164_sobel75_im8_cma_a0;
    wire [17:0] i_mul164_sobel75_im8_cma_c0;
    wire [35:0] i_mul164_sobel75_im8_cma_s0;
    wire [35:0] i_mul164_sobel75_im8_cma_qq;
    wire [35:0] i_mul164_sobel75_im8_cma_q;
    wire i_mul164_sobel75_im8_cma_ena0;
    wire i_mul164_sobel75_im8_cma_ena1;
    wire i_mul164_sobel75_im8_cma_ena2;
    wire i_mul81_sobel76_im0_cma_reset;
    wire [13:0] i_mul81_sobel76_im0_cma_a0;
    wire [13:0] i_mul81_sobel76_im0_cma_c0;
    wire [27:0] i_mul81_sobel76_im0_cma_s0;
    wire [27:0] i_mul81_sobel76_im0_cma_qq;
    wire [27:0] i_mul81_sobel76_im0_cma_q;
    wire i_mul81_sobel76_im0_cma_ena0;
    wire i_mul81_sobel76_im0_cma_ena1;
    wire i_mul81_sobel76_im0_cma_ena2;
    wire i_mul81_sobel76_im8_cma_reset;
    wire [17:0] i_mul81_sobel76_im8_cma_a0;
    wire [17:0] i_mul81_sobel76_im8_cma_c0;
    wire [35:0] i_mul81_sobel76_im8_cma_s0;
    wire [35:0] i_mul81_sobel76_im8_cma_qq;
    wire [35:0] i_mul81_sobel76_im8_cma_q;
    wire i_mul81_sobel76_im8_cma_ena0;
    wire i_mul81_sobel76_im8_cma_ena1;
    wire i_mul81_sobel76_im8_cma_ena2;
    wire i_mul164_sobel75_ma3_cma_reset;
    wire [13:0] i_mul164_sobel75_ma3_cma_a0;
    wire [17:0] i_mul164_sobel75_ma3_cma_c0;
    wire [13:0] i_mul164_sobel75_ma3_cma_a1;
    wire [17:0] i_mul164_sobel75_ma3_cma_c1;
    wire [32:0] i_mul164_sobel75_ma3_cma_s0;
    wire [32:0] i_mul164_sobel75_ma3_cma_qq;
    wire [32:0] i_mul164_sobel75_ma3_cma_q;
    wire i_mul164_sobel75_ma3_cma_ena0;
    wire i_mul164_sobel75_ma3_cma_ena1;
    wire i_mul164_sobel75_ma3_cma_ena2;
    wire i_mul81_sobel76_ma3_cma_reset;
    wire [13:0] i_mul81_sobel76_ma3_cma_a0;
    wire [17:0] i_mul81_sobel76_ma3_cma_c0;
    wire [13:0] i_mul81_sobel76_ma3_cma_a1;
    wire [17:0] i_mul81_sobel76_ma3_cma_c1;
    wire [32:0] i_mul81_sobel76_ma3_cma_s0;
    wire [32:0] i_mul81_sobel76_ma3_cma_qq;
    wire [32:0] i_mul81_sobel76_ma3_cma_q;
    wire i_mul81_sobel76_ma3_cma_ena0;
    wire i_mul81_sobel76_ma3_cma_ena1;
    wire i_mul81_sobel76_ma3_cma_ena2;
    wire [5:0] i_and10_trunc_i_sobel102_sel_x_merged_bit_select_in;
    wire [1:0] i_and10_trunc_i_sobel102_sel_x_merged_bit_select_b;
    wire [1:0] i_and10_trunc_i_sobel102_sel_x_merged_bit_select_c;
    wire [1:0] i_and10_trunc_i_sobel102_sel_x_merged_bit_select_d;
    wire [9:0] i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [13:0] i_mul164_sobel75_bs1_merged_bit_select_b;
    wire [17:0] i_mul164_sobel75_bs1_merged_bit_select_c;
    wire [13:0] i_mul81_sobel76_bs1_merged_bit_select_b;
    wire [17:0] i_mul81_sobel76_bs1_merged_bit_select_c;
    wire [9:0] i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [64:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    wire [63:0] join_for_coalesced_delay_3_q;
    wire [31:0] sel_for_coalesced_delay_3_b;
    wire [31:0] sel_for_coalesced_delay_3_c;
    wire [63:0] join_for_coalesced_delay_4_q;
    wire [31:0] sel_for_coalesced_delay_4_b;
    wire [31:0] sel_for_coalesced_delay_4_c;
    reg [1:0] redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_q;
    reg [1:0] redist1_leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_b_1_0_q;
    reg [1:0] redist2_leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_b_1_0_q;
    reg [0:0] redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_q;
    reg [0:0] redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_q;
    reg [0:0] redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q;
    wire [0:0] redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_in;
    wire redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_in;
    wire redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_data_in;
    wire [0:0] redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_out;
    wire redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_out;
    wire redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_data_out;
    wire [0:0] redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_in;
    wire redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_in;
    wire redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_data_in;
    wire [0:0] redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_out;
    wire redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_out;
    wire redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_data_out;
    wire [0:0] redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_in;
    wire redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_in;
    wire redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_data_in;
    wire [0:0] redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_out;
    wire redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_out;
    wire redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_data_out;
    reg [63:0] redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist14_i_arrayidx6_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist16_i_arrayidx30_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist17_i_arrayidx24_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist18_i_arrayidx17_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist21_i_arrayidx11_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist22_i_arrayidx113_sobel0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [31:0] redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_q;
    reg [31:0] redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_q;
    reg [31:0] redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_q;
    reg [31:0] redist28_bgTrunc_i_add22_sobel18_sel_x_b_1_0_q;
    reg [31:0] redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_q;
    reg [10:0] redist31_i_unnamed_sobel93_vt_select_10_b_1_0_q;
    reg [30:0] redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_q;
    reg [30:0] redist33_i_mul93_sobel65_vt_select_31_b_1_0_q;
    reg [30:0] redist34_i_mul81_sobel76_vt_select_30_b_1_0_q;
    reg [30:0] redist35_i_mul31_sobel62_vt_select_31_b_1_0_q;
    reg [30:0] redist36_i_mul164_sobel75_vt_select_30_b_1_0_q;
    reg [30:0] redist37_i_mul114_sobel60_vt_select_31_b_2_0_q;
    reg [30:0] redist37_i_mul114_sobel60_vt_select_31_b_2_1_q;
    wire [0:0] redist38_i_masked_sobel47_q_113_fifo_valid_in;
    wire redist38_i_masked_sobel47_q_113_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist38_i_masked_sobel47_q_113_fifo_stall_in;
    wire redist38_i_masked_sobel47_q_113_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist38_i_masked_sobel47_q_113_fifo_data_in;
    wire [0:0] redist38_i_masked_sobel47_q_113_fifo_valid_out;
    wire redist38_i_masked_sobel47_q_113_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist38_i_masked_sobel47_q_113_fifo_stall_out;
    wire redist38_i_masked_sobel47_q_113_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist38_i_masked_sobel47_q_113_fifo_data_out;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_1_0_q;
    reg [31:0] redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_0_q;
    reg [31:0] redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_q;
    reg [31:0] redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_0_q;
    reg [31:0] redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_q;
    wire [0:0] redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_in;
    wire redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_in;
    wire redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_data_in;
    wire [0:0] redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_out;
    wire redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_out;
    wire redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_data_out;
    reg [31:0] redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_q;
    reg [31:0] redist46_i_idxprom91_sobel19_vt_select_31_b_1_0_q;
    reg [31:0] redist47_i_add165_sobel77_vt_join_q_2_0_q;
    reg [31:0] redist47_i_add165_sobel77_vt_join_q_2_1_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_2_fifo_data_out;
    reg [63:0] coalesced_delay_3_0_q;
    reg [63:0] coalesced_delay_4_0_q;
    wire [31:0] bubble_join_i_llvm_ctpop_i32_unnamed_sobel14_sobel89_q;
    wire [31:0] bubble_select_i_llvm_ctpop_i32_unnamed_sobel14_sobel89_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_sobel112_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_sobel112_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_sobel10_sobel55_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_sobel10_sobel55_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_sobel11_sobel57_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_sobel11_sobel57_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_sobel12_sobel58_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_sobel12_sobel58_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_sobel13_sobel59_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_sobel13_sobel59_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_sobel6_sobel51_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_sobel6_sobel51_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_sobel7_sobel52_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_sobel7_sobel52_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_sobel8_sobel53_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_sobel8_sobel53_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_sobel9_sobel54_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_sobel9_sobel54_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_sobel3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_b;
    wire [67:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_b;
    wire [67:0] bubble_join_sobel_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_sobel_B3_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_sobel_B3_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_sobel_B3_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_sobel_B3_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_sobel_B3_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_sobel_B3_merge_reg_aunroll_x_g;
    wire [27:0] bubble_join_i_mul164_sobel75_im0_cma_q;
    wire [27:0] bubble_select_i_mul164_sobel75_im0_cma_b;
    wire [35:0] bubble_join_i_mul164_sobel75_im8_cma_q;
    wire [35:0] bubble_select_i_mul164_sobel75_im8_cma_b;
    wire [27:0] bubble_join_i_mul81_sobel76_im0_cma_q;
    wire [27:0] bubble_select_i_mul81_sobel76_im0_cma_b;
    wire [35:0] bubble_join_i_mul81_sobel76_im8_cma_q;
    wire [35:0] bubble_select_i_mul81_sobel76_im8_cma_b;
    wire [32:0] bubble_join_i_mul164_sobel75_ma3_cma_q;
    wire [32:0] bubble_select_i_mul164_sobel75_ma3_cma_b;
    wire [32:0] bubble_join_i_mul81_sobel76_ma3_cma_q;
    wire [32:0] bubble_select_i_mul81_sobel76_ma3_cma_b;
    wire [0:0] bubble_join_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_q;
    wire [0:0] bubble_select_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_b;
    wire [31:0] bubble_join_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_q;
    wire [31:0] bubble_select_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_b;
    wire [0:0] bubble_join_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_q;
    wire [0:0] bubble_select_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_b;
    wire [0:0] bubble_join_redist38_i_masked_sobel47_q_113_fifo_q;
    wire [0:0] bubble_select_redist38_i_masked_sobel47_q_113_fifo_b;
    wire [0:0] bubble_join_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_q;
    wire [0:0] bubble_select_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_i_add165_sobel77_wireValid;
    wire [0:0] SE_i_add165_sobel77_and0;
    wire [0:0] SE_i_add165_sobel77_backStall;
    wire [0:0] SE_i_add165_sobel77_V0;
    wire [0:0] SE_i_add94_sobel64_wireValid;
    wire [0:0] SE_i_add94_sobel64_and0;
    wire [0:0] SE_i_add94_sobel64_and1;
    wire [0:0] SE_i_add94_sobel64_backStall;
    wire [0:0] SE_i_add94_sobel64_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sobel112_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg7;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V7;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_sobel16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_sobel16_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_sobel37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push14_sobel63_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push14_sobel63_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_add1231_push16_sobel26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_add1231_push16_sobel26_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_082_push12_sobel34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_082_push12_sobel34_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_backStall;
    reg [0:0] SE_i_masked_sobel47_R_v_0;
    wire [0:0] SE_i_masked_sobel47_v_s_0;
    wire [0:0] SE_i_masked_sobel47_s_tv_0;
    wire [0:0] SE_i_masked_sobel47_backEN;
    wire [0:0] SE_i_masked_sobel47_and0;
    wire [0:0] SE_i_masked_sobel47_backStall;
    wire [0:0] SE_i_masked_sobel47_V0;
    wire [0:0] SE_i_mul114_sobel60_vt_join_wireValid;
    wire [0:0] SE_i_mul114_sobel60_vt_join_and0;
    wire [0:0] SE_i_mul114_sobel60_vt_join_backStall;
    wire [0:0] SE_i_mul114_sobel60_vt_join_V0;
    wire [0:0] SE_i_mul31_sobel62_vt_join_wireValid;
    wire [0:0] SE_i_mul31_sobel62_vt_join_and0;
    wire [0:0] SE_i_mul31_sobel62_vt_join_and1;
    wire [0:0] SE_i_mul31_sobel62_vt_join_backStall;
    wire [0:0] SE_i_mul31_sobel62_vt_join_V0;
    wire [0:0] SE_i_sub108_sobel69_wireValid;
    wire [0:0] SE_i_sub108_sobel69_and0;
    wire [0:0] SE_i_sub108_sobel69_and1;
    wire [0:0] SE_i_sub108_sobel69_backStall;
    wire [0:0] SE_i_sub108_sobel69_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_wireStall;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_StallValid;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg0;
    reg [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg0;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed0;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg1;
    reg [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg1;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed1;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg2;
    reg [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg2;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed2;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_or0;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_or1;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_V0;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_V1;
    wire [0:0] SE_i_arrayidx113_sobel0_dupName_0_add_x_V2;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_wireStall;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_StallValid;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg0;
    reg [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg0;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed0;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg1;
    reg [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg1;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed1;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg2;
    reg [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg2;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed2;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg3;
    reg [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg3;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed3;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg4;
    reg [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg4;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed4;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_or0;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_or1;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_or2;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_or3;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_V0;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_V1;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_V2;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_V3;
    wire [0:0] SE_i_arrayidx11_sobel0_dupName_0_add_x_V4;
    wire [0:0] SE_i_arrayidx170_sobel0_dupName_0_add_x_wireValid;
    wire [0:0] SE_i_arrayidx170_sobel0_dupName_0_add_x_and0;
    wire [0:0] SE_i_arrayidx170_sobel0_dupName_0_add_x_and1;
    wire [0:0] SE_i_arrayidx170_sobel0_dupName_0_add_x_backStall;
    wire [0:0] SE_i_arrayidx170_sobel0_dupName_0_add_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_V1;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_sobel_B3_merge_reg_aunroll_x_V5;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_sums_align_0_wireValid;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_sums_align_0_and0;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_sums_align_0_backStall;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_sums_align_0_V0;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_sums_align_0_wireValid;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_sums_align_0_and0;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_sums_align_0_backStall;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_sums_align_0_V0;
    wire [0:0] SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_V0;
    reg [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_0;
    reg [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_1;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_v_s_0;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_s_tv_0;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_s_tv_1;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_or0;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backStall;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_V0;
    wire [0:0] SE_i_arrayidx113_sobel0_mult_x_im0_add_3_V1;
    reg [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_0;
    reg [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_1;
    reg [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_2;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_v_s_0;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_0;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_1;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_2;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_or0;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_or1;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backStall;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V0;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V1;
    wire [0:0] SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V2;
    reg [0:0] SE_i_mul164_sobel75_im0_cma_R_s_0;
    reg [0:0] SE_i_mul164_sobel75_im0_cma_R_s_1;
    reg [0:0] SE_i_mul164_sobel75_im0_cma_R_v_0;
    reg [0:0] SE_i_mul164_sobel75_im0_cma_R_v_1;
    reg [0:0] SE_i_mul164_sobel75_im0_cma_R_v_2;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_v_s_0;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_backEN;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_or0;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_or1;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_backStall;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_V0;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_V1;
    wire [0:0] SE_i_mul164_sobel75_im0_cma_V2;
    reg [0:0] SE_i_mul81_sobel76_im0_cma_R_s_0;
    reg [0:0] SE_i_mul81_sobel76_im0_cma_R_s_1;
    reg [0:0] SE_i_mul81_sobel76_im0_cma_R_v_0;
    reg [0:0] SE_i_mul81_sobel76_im0_cma_R_v_1;
    reg [0:0] SE_i_mul81_sobel76_im0_cma_R_v_2;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_v_s_0;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_backEN;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_or0;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_or1;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_backStall;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_V0;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_V1;
    wire [0:0] SE_i_mul81_sobel76_im0_cma_V2;
    reg [0:0] SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN;
    wire [0:0] SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backStall;
    wire [0:0] SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_V0;
    reg [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_0;
    reg [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_1;
    wire [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_v_s_0;
    wire [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_s_tv_0;
    wire [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_s_tv_1;
    wire [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backEN;
    wire [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_or0;
    wire [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backStall;
    wire [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_V0;
    wire [0:0] SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_V1;
    reg [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_0;
    reg [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_1;
    wire [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_v_s_0;
    wire [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_s_tv_0;
    wire [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_s_tv_1;
    wire [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backEN;
    wire [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_or0;
    wire [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backStall;
    wire [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V0;
    wire [0:0] SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V1;
    reg [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_0;
    reg [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_1;
    reg [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_2;
    reg [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_3;
    reg [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_4;
    reg [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_5;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_0;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_1;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_2;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_3;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_4;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_5;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or0;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or1;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or2;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or3;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or4;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backStall;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V0;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V1;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V2;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V3;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V4;
    wire [0:0] SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V5;
    wire [0:0] SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_wireValid;
    wire [0:0] SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_and0;
    wire [0:0] SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_backStall;
    wire [0:0] SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_V0;
    wire [0:0] SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_wireValid;
    wire [0:0] SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_and0;
    wire [0:0] SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_backStall;
    wire [0:0] SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_V0;
    reg [0:0] SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_V0;
    reg [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_2;
    reg [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_3;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_3;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or0;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or1;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or2;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V0;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V1;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V2;
    wire [0:0] SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V3;
    reg [0:0] SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_V0;
    reg [0:0] SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_V0;
    reg [0:0] SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_R_v_0;
    wire [0:0] SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_v_s_0;
    wire [0:0] SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_s_tv_0;
    wire [0:0] SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backEN;
    wire [0:0] SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backStall;
    wire [0:0] SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_V0;
    reg [0:0] SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_R_v_0;
    wire [0:0] SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_V0;
    reg [0:0] SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_R_v_0;
    wire [0:0] SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_v_s_0;
    wire [0:0] SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_s_tv_0;
    wire [0:0] SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_backEN;
    wire [0:0] SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_backStall;
    wire [0:0] SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_V0;
    reg [0:0] SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_R_v_0;
    wire [0:0] SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_V0;
    reg [0:0] SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_R_v_0;
    wire [0:0] SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_v_s_0;
    wire [0:0] SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_s_tv_0;
    wire [0:0] SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_backEN;
    wire [0:0] SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_backStall;
    wire [0:0] SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_V0;
    reg [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_R_v_0;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_v_s_0;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_s_tv_0;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_backEN;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_backStall;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_V0;
    reg [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_R_v_0;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_v_s_0;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_s_tv_0;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_backEN;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_backStall;
    wire [0:0] SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_V0;
    wire [0:0] SE_in_redist38_i_masked_sobel47_q_113_fifo_wireValid;
    wire [0:0] SE_in_redist38_i_masked_sobel47_q_113_fifo_backStall;
    wire [0:0] SE_in_redist38_i_masked_sobel47_q_113_fifo_V0;
    wire [0:0] SE_out_redist38_i_masked_sobel47_q_113_fifo_wireValid;
    wire [0:0] SE_out_redist38_i_masked_sobel47_q_113_fifo_and0;
    wire [0:0] SE_out_redist38_i_masked_sobel47_q_113_fifo_and1;
    wire [0:0] SE_out_redist38_i_masked_sobel47_q_113_fifo_and2;
    wire [0:0] SE_out_redist38_i_masked_sobel47_q_113_fifo_and3;
    wire [0:0] SE_out_redist38_i_masked_sobel47_q_113_fifo_and4;
    wire [0:0] SE_out_redist38_i_masked_sobel47_q_113_fifo_backStall;
    wire [0:0] SE_out_redist38_i_masked_sobel47_q_113_fifo_V0;
    reg [0:0] SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_R_v_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_backEN;
    wire [0:0] SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_backStall;
    wire [0:0] SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_V0;
    reg [0:0] SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_R_v_0;
    wire [0:0] SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_backEN;
    wire [0:0] SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_backStall;
    wire [0:0] SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_V0;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireStall;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_StallValid;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg0;
    reg [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg0;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed0;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg1;
    reg [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg1;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed1;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg2;
    reg [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg2;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed2;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg3;
    reg [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg3;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed3;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or0;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or1;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or2;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_backStall;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V0;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V1;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V2;
    wire [0:0] SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V3;
    reg [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_0;
    reg [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_1;
    wire [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_v_s_0;
    wire [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_s_tv_0;
    wire [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_s_tv_1;
    wire [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backEN;
    wire [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_or0;
    wire [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backStall;
    wire [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_V0;
    wire [0:0] SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    reg [0:0] SE_coalesced_delay_3_0_R_v_0;
    wire [0:0] SE_coalesced_delay_3_0_v_s_0;
    wire [0:0] SE_coalesced_delay_3_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_0_backEN;
    wire [0:0] SE_coalesced_delay_3_0_backStall;
    wire [0:0] SE_coalesced_delay_3_0_V0;
    reg [0:0] SE_coalesced_delay_4_0_R_v_0;
    wire [0:0] SE_coalesced_delay_4_0_v_s_0;
    wire [0:0] SE_coalesced_delay_4_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_4_0_backEN;
    wire [0:0] SE_coalesced_delay_4_0_backStall;
    wire [0:0] SE_coalesced_delay_4_0_V0;
    wire [0:0] SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_and0;
    wire [0:0] SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_and1;
    wire [0:0] SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_and0;
    wire [0:0] SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_and1;
    wire [0:0] SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul164_sobel75_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul164_sobel75_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul164_sobel75_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul164_sobel75_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul81_sobel76_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul81_sobel76_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul81_sobel76_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul81_sobel76_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul164_sobel75_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul164_sobel75_ma3_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul81_sobel76_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul81_sobel76_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_i_valid;
    reg [0:0] SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid;
    reg [0:0] SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_data0;
    wire [0:0] SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backStall;
    wire [0:0] SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V;
    wire [0:0] SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data3;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D3;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_i_valid;
    reg [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and0;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and1;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and2;
    reg [63:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data0;
    reg [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data1;
    reg [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data2;
    reg [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data3;
    reg [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data4;
    reg [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data5;
    reg [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data6;
    reg [63:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data7;
    reg [63:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data8;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_V;
    wire [63:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D0;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D1;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D2;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D3;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D4;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D5;
    wire [0:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D6;
    wire [63:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D7;
    wire [63:0] SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D8;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_i_valid;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and0;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and1;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and2;
    reg [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data0;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data1;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data2;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data3;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data4;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data5;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data6;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data7;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data8;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data9;
    reg [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data10;
    reg [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data11;
    reg [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data12;
    reg [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data13;
    reg [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data14;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_V;
    wire [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D0;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D1;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D2;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D3;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D4;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D5;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D6;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D7;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D8;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D9;
    wire [0:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D10;
    wire [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D11;
    wire [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D12;
    wire [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D13;
    wire [63:0] SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D14;
    wire [0:0] SR_SE_i_mul164_sobel75_im0_cma_i_valid;
    reg [0:0] SR_SE_i_mul164_sobel75_im0_cma_r_valid;
    reg [13:0] SR_SE_i_mul164_sobel75_im0_cma_r_data0;
    reg [13:0] SR_SE_i_mul164_sobel75_im0_cma_r_data1;
    reg [13:0] SR_SE_i_mul164_sobel75_im0_cma_r_data2;
    reg [13:0] SR_SE_i_mul164_sobel75_im0_cma_r_data3;
    reg [17:0] SR_SE_i_mul164_sobel75_im0_cma_r_data4;
    reg [17:0] SR_SE_i_mul164_sobel75_im0_cma_r_data5;
    reg [17:0] SR_SE_i_mul164_sobel75_im0_cma_r_data6;
    reg [17:0] SR_SE_i_mul164_sobel75_im0_cma_r_data7;
    wire [0:0] SR_SE_i_mul164_sobel75_im0_cma_backStall;
    wire [0:0] SR_SE_i_mul164_sobel75_im0_cma_V;
    wire [13:0] SR_SE_i_mul164_sobel75_im0_cma_D0;
    wire [13:0] SR_SE_i_mul164_sobel75_im0_cma_D1;
    wire [13:0] SR_SE_i_mul164_sobel75_im0_cma_D2;
    wire [13:0] SR_SE_i_mul164_sobel75_im0_cma_D3;
    wire [17:0] SR_SE_i_mul164_sobel75_im0_cma_D4;
    wire [17:0] SR_SE_i_mul164_sobel75_im0_cma_D5;
    wire [17:0] SR_SE_i_mul164_sobel75_im0_cma_D6;
    wire [17:0] SR_SE_i_mul164_sobel75_im0_cma_D7;
    wire [0:0] SR_SE_i_mul81_sobel76_im0_cma_i_valid;
    reg [0:0] SR_SE_i_mul81_sobel76_im0_cma_r_valid;
    reg [13:0] SR_SE_i_mul81_sobel76_im0_cma_r_data0;
    reg [13:0] SR_SE_i_mul81_sobel76_im0_cma_r_data1;
    reg [13:0] SR_SE_i_mul81_sobel76_im0_cma_r_data2;
    reg [13:0] SR_SE_i_mul81_sobel76_im0_cma_r_data3;
    reg [17:0] SR_SE_i_mul81_sobel76_im0_cma_r_data4;
    reg [17:0] SR_SE_i_mul81_sobel76_im0_cma_r_data5;
    reg [17:0] SR_SE_i_mul81_sobel76_im0_cma_r_data6;
    reg [17:0] SR_SE_i_mul81_sobel76_im0_cma_r_data7;
    wire [0:0] SR_SE_i_mul81_sobel76_im0_cma_backStall;
    wire [0:0] SR_SE_i_mul81_sobel76_im0_cma_V;
    wire [13:0] SR_SE_i_mul81_sobel76_im0_cma_D0;
    wire [13:0] SR_SE_i_mul81_sobel76_im0_cma_D1;
    wire [13:0] SR_SE_i_mul81_sobel76_im0_cma_D2;
    wire [13:0] SR_SE_i_mul81_sobel76_im0_cma_D3;
    wire [17:0] SR_SE_i_mul81_sobel76_im0_cma_D4;
    wire [17:0] SR_SE_i_mul81_sobel76_im0_cma_D5;
    wire [17:0] SR_SE_i_mul81_sobel76_im0_cma_D6;
    wire [17:0] SR_SE_i_mul81_sobel76_im0_cma_D7;
    wire [0:0] SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_i_valid;
    reg [0:0] SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid;
    reg [30:0] SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_data0;
    reg [31:0] SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_data1;
    wire [0:0] SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backStall;
    wire [0:0] SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_V;
    wire [30:0] SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_D0;
    wire [31:0] SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_D1;


    // bubble_join_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo(BITJOIN,1562)
    assign bubble_join_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_q = redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_data_out;

    // bubble_select_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo(BITSELECT,1563)
    assign bubble_select_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_b = $unsigned(bubble_join_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_q[0:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,1580)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,1581)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,1403)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // bubble_join_stall_entry(BITJOIN,1526)
    assign bubble_join_stall_entry_q = {in_notcmp2038, in_memdep_phi1_pop1039, in_j_083_pop935, in_forked, in_exitcond1137, in_add1236};

    // bubble_select_stall_entry(BITSELECT,1527)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);

    // SE_stall_entry(STALLENABLE,1739)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = sobel_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sobel_B3_merge_reg_aunroll_x(BLACKBOX,592)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    sobel_B3_merge_reg thesobel_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_sobel_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_g),
        .in_data_in_5_tpl(bubble_select_stall_entry_f),
        .out_stall_out(sobel_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(sobel_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(sobel_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(sobel_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(sobel_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_sobel_B3_merge_reg_aunroll_x(BITJOIN,1539)
    assign bubble_join_sobel_B3_merge_reg_aunroll_x_q = {sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl, sobel_B3_merge_reg_aunroll_x_out_data_out_4_tpl, sobel_B3_merge_reg_aunroll_x_out_data_out_3_tpl, sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl, sobel_B3_merge_reg_aunroll_x_out_data_out_1_tpl, sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_sobel_B3_merge_reg_aunroll_x(BITSELECT,1540)
    assign bubble_select_sobel_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_sobel_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_sobel_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_sobel_B3_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_sobel_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_sobel_B3_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_sobel_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_sobel_B3_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_sobel_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_sobel_B3_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_sobel_B3_merge_reg_aunroll_x_g = $unsigned(bubble_join_sobel_B3_merge_reg_aunroll_x_q[67:67]);

    // join_for_coalesced_delay_1(BITJOIN,1402)
    assign join_for_coalesced_delay_1_q = {bubble_select_sobel_B3_merge_reg_aunroll_x_f, bubble_select_sobel_B3_merge_reg_aunroll_x_e};

    // join_for_coalesced_delay_0(BITJOIN,1399)
    assign join_for_coalesced_delay_0_q = {bubble_select_sobel_B3_merge_reg_aunroll_x_b, bubble_select_sobel_B3_merge_reg_aunroll_x_c};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2(BITJOIN,1510)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_q = i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2(BITSELECT,1511)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_q[1:0]);

    // i_first_cleanup_sobel14_sel_x(BITSELECT,527)@115
    assign i_first_cleanup_sobel14_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_b[0:0];

    // i_xor_sobel32(LOGICAL,220)@115
    assign i_xor_sobel32_q = i_first_cleanup_sobel14_sel_x_b ^ VCC_q;

    // i_arrayidx113_sobel0_dupName_0_mult_multconst_x(CONSTANT,358)
    assign i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // c_i32_0126(CONSTANT,24)
    assign c_i32_0126_q = $unsigned(32'b00000000000000000000000000000000);

    // SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4(STALLENABLE,1648)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_V0 = SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_backStall = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_wireValid = i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_valid_out;

    // SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34(STALLENABLE,1669)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_V0 = SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_backStall = i_llvm_fpga_push_i32_i_082_push12_sobel34_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_and0 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V0;
    assign SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V4 & SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_and0;

    // SE_out_i_llvm_fpga_push_i32_i_082_push12_sobel34(STALLENABLE,1670)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_082_push12_sobel34_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_082_push12_sobel34_wireValid = i_llvm_fpga_push_i32_i_082_push12_sobel34_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going_sobel3(BITJOIN,1492)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_sobel3_q = i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3(BITSELECT,1493)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_sobel3_q[0:0]);

    // i_add22_sobel18(ADD,47)@114
    assign i_add22_sobel18_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_b};
    assign i_add22_sobel18_b = {1'b0, c_i32_1116_q};
    assign i_add22_sobel18_o = $unsigned(i_add22_sobel18_a) + $unsigned(i_add22_sobel18_b);
    assign i_add22_sobel18_q = i_add22_sobel18_o[32:0];

    // bgTrunc_i_add22_sobel18_sel_x(BITSELECT,302)@114
    assign bgTrunc_i_add22_sobel18_sel_x_b = i_add22_sobel18_q[31:0];

    // redist28_bgTrunc_i_add22_sobel18_sel_x_b_1_0(REG,1434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_bgTrunc_i_add22_sobel18_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist28_bgTrunc_i_add22_sobel18_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add22_sobel18_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i32_i_082_push12_sobel34(BLACKBOX,126)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    sobel_i_llvm_fpga_push_i32_i_082_push12_0 thei_llvm_fpga_push_i32_i_082_push12_sobel34 (
        .in_data_in(redist28_bgTrunc_i_add22_sobel18_sel_x_b_1_0_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_feedback_stall_out_12),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_082_push12_sobel34_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_V0),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_i_082_push12_sobel34_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_i_082_push12_sobel34_out_feedback_valid_out_12),
        .out_stall_out(i_llvm_fpga_push_i32_i_082_push12_sobel34_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_082_push12_sobel34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0(REG,1416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backEN == 1'b1)
        begin
            redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_q <= $unsigned(sel_for_coalesced_delay_0_c);
        end
    end

    // SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0(STALLREG,2505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid <= 1'b0;
            SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid <= SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backStall & (SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid | SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_i_valid);

            if (SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_data0 <= $unsigned(redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_i_valid = SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_V1;
    // Stall signal propagation
    assign SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backStall = SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid | ~ (SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_i_valid);

    // Valid
    assign SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V = SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid == 1'b1 ? SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid : SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_i_valid;

    assign SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_D0 = SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_valid == 1'b1 ? SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_r_data0 : redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_q;

    // redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0(REG,1417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backEN == 1'b1)
        begin
            redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_q <= $unsigned(SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_D0);
        end
    end

    // c_i32_1116(CONSTANT,26)
    assign c_i32_1116_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_i_082_pop12_sobel4(BLACKBOX,115)@113
    // in in_stall_in@20000000
    // out out_data_out@114
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@114
    sobel_i_llvm_fpga_pop_i32_i_082_pop12_0 thei_llvm_fpga_pop_i32_i_082_pop12_sobel4 (
        .in_data_in(c_i32_1116_q),
        .in_dir(redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_i_082_push12_sobel34_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_i_082_push12_sobel34_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_backStall),
        .in_valid_in(SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V1),
        .out_data_out(i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_i_082_pop12_sobel4(BITJOIN,1516)
    assign bubble_join_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_q = i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_082_pop12_sobel4(BITSELECT,1517)
    assign bubble_select_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_q[31:0]);

    // i_idxprom91_sobel19_sel_x(BITSELECT,532)@114
    assign i_idxprom91_sobel19_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_b[31:0]};

    // i_idxprom91_sobel19_vt_select_31(BITSELECT,92)@114
    assign i_idxprom91_sobel19_vt_select_31_b = i_idxprom91_sobel19_sel_x_b[31:0];

    // redist46_i_idxprom91_sobel19_vt_select_31_b_1_0(REG,1452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_idxprom91_sobel19_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist46_i_idxprom91_sobel19_vt_select_31_b_1_0_q <= $unsigned(i_idxprom91_sobel19_vt_select_31_b);
        end
    end

    // i_idxprom91_sobel19_vt_join(BITJOIN,91)@115
    assign i_idxprom91_sobel19_vt_join_q = {c_i32_0126_q, redist46_i_idxprom91_sobel19_vt_select_31_b_1_0_q};

    // i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,1345)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom91_sobel19_vt_join_q[63:54];
    assign i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom91_sobel19_vt_join_q[53:36];
    assign i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom91_sobel19_vt_join_q[35:18];
    assign i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom91_sobel19_vt_join_q[17:0];

    // i_arrayidx170_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1187)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx170_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx170_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,778)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx170_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx170_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1189)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx170_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx170_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,777)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx170_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx170_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,779)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx170_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1188)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx170_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx170_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,775)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx170_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx170_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1190)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx170_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx170_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx170_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,776)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx170_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx170_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,780)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx170_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx170_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx170_sobel0_dupName_0_mult_extender_x(BITJOIN,397)@115
    assign i_arrayidx170_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx170_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx170_sobel0_dupName_1_trunc_sel_x(BITSELECT,400)@115
    assign i_arrayidx170_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx170_sobel0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx113_sobel0_mult_multconst_x(CONSTANT,355)
    assign i_arrayidx113_sobel0_mult_multconst_x_q = $unsigned(55'b0000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7(BITJOIN,1519)
    assign bubble_join_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_q = i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7(BITSELECT,1520)
    assign bubble_select_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_q[31:0]);

    // redist39_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_1_0(REG,1445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist39_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_b);
        end
    end

    // i_idxprom7_sobel24_sel_x(BITSELECT,531)@113
    assign i_idxprom7_sobel24_sel_x_b = {32'b00000000000000000000000000000000, redist39_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_1_0_q[31:0]};

    // i_idxprom7_sobel24_vt_select_31(BITSELECT,88)@113
    assign i_idxprom7_sobel24_vt_select_31_b = i_idxprom7_sobel24_sel_x_b[31:0];

    // i_idxprom7_sobel24_vt_join(BITJOIN,87)@113
    assign i_idxprom7_sobel24_vt_join_q = {c_i32_0126_q, i_idxprom7_sobel24_vt_select_31_b};

    // i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select(BITSELECT,1344)@113
    assign i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b = i_idxprom7_sobel24_vt_join_q[63:54];
    assign i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c = i_idxprom7_sobel24_vt_join_q[53:36];
    assign i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d = i_idxprom7_sobel24_vt_join_q[35:18];
    assign i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e = i_idxprom7_sobel24_vt_join_q[17:0];

    // i_arrayidx170_sobel0_mult_x_im0_shift2(BITSHIFT,1169)@113
    assign i_arrayidx170_sobel0_mult_x_im0_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx170_sobel0_mult_x_im0_shift2_q = i_arrayidx170_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx170_sobel0_mult_x_im0_shift0(BITSHIFT,1167)@113
    assign i_arrayidx170_sobel0_mult_x_im0_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx170_sobel0_mult_x_im0_shift0_q = i_arrayidx170_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx170_sobel0_mult_x_im0_add_1(ADD,1168)@113
    assign i_arrayidx170_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx170_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx170_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx170_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx170_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx170_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx170_sobel0_mult_x_im0_add_1_q = i_arrayidx170_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx170_sobel0_mult_x_im0_add_3(ADD,1170)@113 + 1
    assign i_arrayidx170_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx170_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx170_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx170_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx170_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx170_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx170_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx170_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx170_sobel0_mult_x_im0_add_3_q = i_arrayidx170_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx170_sobel0_mult_x_im0_shift4(BITSHIFT,1171)@114
    assign i_arrayidx170_sobel0_mult_x_im0_shift4_qint = { i_arrayidx170_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx170_sobel0_mult_x_im0_shift4_q = i_arrayidx170_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx170_sobel0_mult_x_sums_align_3(BITSHIFT,760)@114
    assign i_arrayidx170_sobel0_mult_x_sums_align_3_qint = { i_arrayidx170_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx170_sobel0_mult_x_sums_align_3_q = i_arrayidx170_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx170_sobel0_mult_x_im6_shift2(BITSHIFT,1179)@113
    assign i_arrayidx170_sobel0_mult_x_im6_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx170_sobel0_mult_x_im6_shift2_q = i_arrayidx170_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx170_sobel0_mult_x_im6_shift0(BITSHIFT,1177)@113
    assign i_arrayidx170_sobel0_mult_x_im6_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx170_sobel0_mult_x_im6_shift0_q = i_arrayidx170_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx170_sobel0_mult_x_im6_add_1(ADD,1178)@113
    assign i_arrayidx170_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx170_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx170_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx170_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx170_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx170_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx170_sobel0_mult_x_im6_add_1_q = i_arrayidx170_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx170_sobel0_mult_x_im6_add_3(ADD,1180)@113 + 1
    assign i_arrayidx170_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx170_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx170_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx170_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx170_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx170_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx170_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx170_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx170_sobel0_mult_x_im6_add_3_q = i_arrayidx170_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx170_sobel0_mult_x_im6_shift4(BITSHIFT,1181)@114
    assign i_arrayidx170_sobel0_mult_x_im6_shift4_qint = { i_arrayidx170_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx170_sobel0_mult_x_im6_shift4_q = i_arrayidx170_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx170_sobel0_mult_x_sums_align_2(BITSHIFT,759)@114
    assign i_arrayidx170_sobel0_mult_x_sums_align_2_qint = { i_arrayidx170_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx170_sobel0_mult_x_sums_align_2_q = i_arrayidx170_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx170_sobel0_mult_x_sums_join_4(BITJOIN,761)@114
    assign i_arrayidx170_sobel0_mult_x_sums_join_4_q = {i_arrayidx170_sobel0_mult_x_sums_align_3_q, i_arrayidx170_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx170_sobel0_mult_x_im3_shift2(BITSHIFT,1174)@113
    assign i_arrayidx170_sobel0_mult_x_im3_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx170_sobel0_mult_x_im3_shift2_q = i_arrayidx170_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx170_sobel0_mult_x_im3_shift0(BITSHIFT,1172)@113
    assign i_arrayidx170_sobel0_mult_x_im3_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx170_sobel0_mult_x_im3_shift0_q = i_arrayidx170_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx170_sobel0_mult_x_im3_add_1(ADD,1173)@113
    assign i_arrayidx170_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx170_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx170_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx170_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx170_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx170_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx170_sobel0_mult_x_im3_add_1_q = i_arrayidx170_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx170_sobel0_mult_x_im3_add_3(ADD,1175)@113 + 1
    assign i_arrayidx170_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx170_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx170_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx170_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx170_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx170_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx170_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx170_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx170_sobel0_mult_x_im3_add_3_q = i_arrayidx170_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx170_sobel0_mult_x_im3_shift4(BITSHIFT,1176)@114
    assign i_arrayidx170_sobel0_mult_x_im3_shift4_qint = { i_arrayidx170_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx170_sobel0_mult_x_im3_shift4_q = i_arrayidx170_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx170_sobel0_mult_x_sums_align_0(BITSHIFT,757)@114
    assign i_arrayidx170_sobel0_mult_x_sums_align_0_qint = { i_arrayidx170_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx170_sobel0_mult_x_sums_align_0_q = i_arrayidx170_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx170_sobel0_mult_x_im9_shift2(BITSHIFT,1184)@113
    assign i_arrayidx170_sobel0_mult_x_im9_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx170_sobel0_mult_x_im9_shift2_q = i_arrayidx170_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx170_sobel0_mult_x_im9_shift0(BITSHIFT,1182)@113
    assign i_arrayidx170_sobel0_mult_x_im9_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx170_sobel0_mult_x_im9_shift0_q = i_arrayidx170_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx170_sobel0_mult_x_im9_add_1(ADD,1183)@113
    assign i_arrayidx170_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx170_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx170_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx170_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx170_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx170_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx170_sobel0_mult_x_im9_add_1_q = i_arrayidx170_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx170_sobel0_mult_x_im9_add_3(ADD,1185)@113 + 1
    assign i_arrayidx170_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx170_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx170_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx170_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx170_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx170_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx170_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx170_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx170_sobel0_mult_x_im9_add_3_q = i_arrayidx170_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx170_sobel0_mult_x_im9_shift4(BITSHIFT,1186)@114
    assign i_arrayidx170_sobel0_mult_x_im9_shift4_qint = { i_arrayidx170_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx170_sobel0_mult_x_im9_shift4_q = i_arrayidx170_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx170_sobel0_mult_x_sums_join_1(BITJOIN,758)@114
    assign i_arrayidx170_sobel0_mult_x_sums_join_1_q = {i_arrayidx170_sobel0_mult_x_sums_align_0_q, i_arrayidx170_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx170_sobel0_mult_x_sums_result_add_0_0(ADD,762)@114
    assign i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx170_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx170_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx170_sobel0_mult_extender_x(BITJOIN,394)@114
    assign i_arrayidx170_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx170_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx170_sobel0_trunc_sel_x(BITSELECT,396)@114
    assign i_arrayidx170_sobel0_trunc_sel_x_b = i_arrayidx170_sobel0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x(BITJOIN,1530)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_dest_data_out_0_0_1_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x(BITSELECT,1531)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_q[63:0]);

    // i_arrayidx170_sobel0_add_x(ADD,382)@114
    assign i_arrayidx170_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_b};
    assign i_arrayidx170_sobel0_add_x_b = {1'b0, i_arrayidx170_sobel0_trunc_sel_x_b};
    assign i_arrayidx170_sobel0_add_x_o = $unsigned(i_arrayidx170_sobel0_add_x_a) + $unsigned(i_arrayidx170_sobel0_add_x_b);
    assign i_arrayidx170_sobel0_add_x_q = i_arrayidx170_sobel0_add_x_o[64:0];

    // i_arrayidx170_sobel0_dupName_0_trunc_sel_x(BITSELECT,399)@114
    assign i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx170_sobel0_add_x_q[63:0];

    // redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx170_sobel0_dupName_0_add_x(ADD,389)@115
    assign i_arrayidx170_sobel0_dupName_0_add_x_a = {1'b0, redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx170_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx170_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx170_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx170_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx170_sobel0_dupName_0_add_x_b);
    assign i_arrayidx170_sobel0_dupName_0_add_x_q = i_arrayidx170_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx170_sobel0_dupName_2_trunc_sel_x(BITSELECT,401)@115
    assign i_arrayidx170_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx170_sobel0_dupName_0_add_x_q[63:0];

    // join_for_coalesced_delay_2(BITJOIN,1405)
    assign join_for_coalesced_delay_2_q = {i_xor_sobel32_q, i_arrayidx170_sobel0_dupName_2_trunc_sel_x_b};

    // bubble_join_i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x(BITJOIN,1536)
    assign bubble_join_i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_q = i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_c0_exit51_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x(BITSELECT,1537)
    assign bubble_select_i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113(STALLENABLE,1660)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_wireValid = i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_valid_out;

    // redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo(STALLFIFO,1450)
    assign redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V7;
    assign redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_in = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_backStall;
    assign redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b;
    assign redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_in_bitsignaltemp = redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_in[0];
    assign redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_in_bitsignaltemp = redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_in[0];
    assign redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_out[0] = redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_out_bitsignaltemp;
    assign redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_out[0] = redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(114),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo (
        .valid_in(redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_in_bitsignaltemp),
        .stall_in(redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b),
        .valid_out(redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_out_bitsignaltemp),
        .stall_out(redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_out_bitsignaltemp),
        .data_out(redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo(BITJOIN,1574)
    assign bubble_join_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_q = redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_data_out;

    // bubble_select_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo(BITSELECT,1575)
    assign bubble_select_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_b = $unsigned(bubble_join_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_sobel112(BITJOIN,1464)
    assign bubble_join_i_llvm_fpga_mem_memdep_sobel112_q = i_llvm_fpga_mem_memdep_sobel112_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_sobel112(BITSELECT,1465)
    assign bubble_select_i_llvm_fpga_mem_memdep_sobel112_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_sobel112_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push13_sobel113(BLACKBOX,121)@228
    // in in_stall_in@20000000
    // out out_data_out@229
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@229
    sobel_i_llvm_fpga_push_i1_memdep_phi_push13_0 thei_llvm_fpga_push_i1_memdep_phi_push13_sobel113 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_sobel112_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_feedback_stall_out_13),
        .in_keep_going(bubble_select_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_V0),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29(STALLENABLE,1662)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_wireValid = i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_valid_out;

    // i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10(BLACKBOX,112)@227
    // in in_stall_in@20000000
    // out out_data_out@228
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@228
    sobel_i_llvm_fpga_pop_i1_notcmp2033_pop18_0 thei_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10(BITJOIN,1506)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_q = i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10(BITSELECT,1507)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_q[0:0]);

    // i_llvm_fpga_push_i1_notcmp2033_push18_sobel29(BLACKBOX,122)@228
    // in in_stall_in@20000000
    // out out_data_out@229
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@229
    sobel_i_llvm_fpga_push_i1_notcmp2033_push18_0 thei_llvm_fpga_push_i1_notcmp2033_push18_sobel29 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_feedback_stall_out_18),
        .in_keep_going(bubble_select_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10(STALLENABLE,1642)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_consumed0 = (~ (SE_out_redist38_i_masked_sobel47_q_113_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_wireValid = i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29(STALLENABLE,1661)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_V0 = SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_backStall = i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_and0 = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_V1;
    assign SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_wireValid = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V2 & SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_and0;

    // SE_out_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28(STALLENABLE,1654)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_wireValid = i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_valid_out;

    // i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9(BLACKBOX,109)@227
    // in in_stall_in@20000000
    // out out_data_out@228
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@228
    sobel_i_llvm_fpga_pop_i1_exitcond1132_pop17_0 thei_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_17(i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9(BITJOIN,1496)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_q = i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9(BITSELECT,1497)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_q[0:0]);

    // i_llvm_fpga_push_i1_exitcond1132_push17_sobel28(BLACKBOX,118)@228
    // in in_stall_in@20000000
    // out out_data_out@229
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@229
    sobel_i_llvm_fpga_push_i1_exitcond1132_push17_0 thei_llvm_fpga_push_i1_exitcond1132_push17_sobel28 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_feedback_stall_out_17),
        .in_keep_going(bubble_select_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9(STALLENABLE,1636)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_consumed0 = (~ (SE_out_redist38_i_masked_sobel47_q_113_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_wireValid = i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28(STALLENABLE,1653)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_backStall = i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_and0 = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_V1;
    assign SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_wireValid = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V0 & SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_and0;

    // SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo(STALLENABLE,2310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg0 <= '0;
            SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg1 <= '0;
            SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg2 <= '0;
            SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg0 <= SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg0;
            // Successor 1
            SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg1 <= SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg1;
            // Successor 2
            SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg2 <= SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg2;
            // Successor 3
            SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg3 <= SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_exitcond1132_push17_sobel28_backStall) & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid) | SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg0;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_backStall) & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid) | SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg1;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp2033_push18_sobel29_backStall) & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid) | SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg2;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed3 = (~ (i_llvm_fpga_push_i1_lastiniteration_sobel16_out_stall_out) & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid) | SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg3;
    // Consuming
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_StallValid = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_backStall & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg0 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_StallValid & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed0;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg1 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_StallValid & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed1;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg2 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_StallValid & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed2;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_toReg3 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_StallValid & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or0 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed0;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or1 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed1 & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or0;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or2 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed2 & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or1;
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireStall = ~ (SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_consumed3 & SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_or2);
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_backStall = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V0 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid & ~ (SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg0);
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V1 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid & ~ (SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg1);
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V2 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid & ~ (SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg2);
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V3 = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid & ~ (SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_wireValid = redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_valid_out;

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113(STALLENABLE,1659)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_backStall = i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_and0 = SE_out_i_llvm_fpga_mem_memdep_sobel112_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_wireValid = SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V1 & SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_and0;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg(STALLFIFO,2495)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_in = SE_out_redist38_i_masked_sobel47_q_113_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(114),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38(STALLENABLE,1674)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_wireValid = i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_valid_out;

    // c_i8_1120(CONSTANT,35)
    assign c_i8_1120_q = $unsigned(8'b11111111);

    // bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6(BITJOIN,1522)
    assign bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_q = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6(BITSELECT,1523)
    assign bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_q[7:0]);

    // i_fpga_indvars_iv_next_sobel22(ADD,74)@115
    assign i_fpga_indvars_iv_next_sobel22_a = {1'b0, bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_b};
    assign i_fpga_indvars_iv_next_sobel22_b = {1'b0, c_i8_1120_q};
    assign i_fpga_indvars_iv_next_sobel22_o = $unsigned(i_fpga_indvars_iv_next_sobel22_a) + $unsigned(i_fpga_indvars_iv_next_sobel22_b);
    assign i_fpga_indvars_iv_next_sobel22_q = i_fpga_indvars_iv_next_sobel22_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_sobel22_sel_x(BITSELECT,305)@115
    assign bgTrunc_i_fpga_indvars_iv_next_sobel22_sel_x_b = i_fpga_indvars_iv_next_sobel22_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38(BLACKBOX,128)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    sobel_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_sobel22_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_feedback_stall_out_11),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_V0),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_feedback_valid_out_11),
        .out_stall_out(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38(STALLENABLE,1673)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_V0 = SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_backStall = i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V3;
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V6 & SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_and0;

    // SE_in_redist38_i_masked_sobel47_q_113_fifo(STALLENABLE,2302)
    // Valid signal propagation
    assign SE_in_redist38_i_masked_sobel47_q_113_fifo_V0 = SE_in_redist38_i_masked_sobel47_q_113_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist38_i_masked_sobel47_q_113_fifo_backStall = redist38_i_masked_sobel47_q_113_fifo_stall_out | ~ (SE_in_redist38_i_masked_sobel47_q_113_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist38_i_masked_sobel47_q_113_fifo_wireValid = SE_i_masked_sobel47_V0;

    // SE_i_masked_sobel47(STALLENABLE,1675)
    // Valid signal propagation
    assign SE_i_masked_sobel47_V0 = SE_i_masked_sobel47_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_sobel47_s_tv_0 = SE_in_redist38_i_masked_sobel47_q_113_fifo_backStall & SE_i_masked_sobel47_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_sobel47_backEN = ~ (SE_i_masked_sobel47_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_sobel47_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V2 & SE_i_masked_sobel47_backEN;
    assign SE_i_masked_sobel47_v_s_0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V2 & SE_i_masked_sobel47_and0;
    // Backward Stall generation
    assign SE_i_masked_sobel47_backStall = ~ (SE_i_masked_sobel47_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_sobel47_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_sobel47_backEN == 1'b0)
            begin
                SE_i_masked_sobel47_R_v_0 <= SE_i_masked_sobel47_R_v_0 & SE_i_masked_sobel47_s_tv_0;
            end
            else
            begin
                SE_i_masked_sobel47_R_v_0 <= SE_i_masked_sobel47_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i2_cleanups_push14_sobel63(STALLENABLE,1666)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push14_sobel63_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push14_sobel63_wireValid = i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid1001_i_cleanups_shl_sobel0_shift_x(BITSELECT,1000)@115
    assign leftShiftStage0Idx1Rng1_uid1001_i_cleanups_shl_sobel0_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid1001_i_cleanups_shl_sobel0_shift_x_b = leftShiftStage0Idx1Rng1_uid1001_i_cleanups_shl_sobel0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid1002_i_cleanups_shl_sobel0_shift_x(BITJOIN,1001)@115
    assign leftShiftStage0Idx1_uid1002_i_cleanups_shl_sobel0_shift_x_q = {leftShiftStage0Idx1Rng1_uid1001_i_cleanups_shl_sobel0_shift_x_b, GND_q};

    // leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x(MUX,1003)@115
    assign leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_b or leftShiftStage0Idx1_uid1002_i_cleanups_shl_sobel0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_s)
            1'b0 : leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_b;
            1'b1 : leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_q = leftShiftStage0Idx1_uid1002_i_cleanups_shl_sobel0_shift_x_q;
            default : leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_sobel15_vt_select_1(BITSELECT,66)@115
    assign i_cleanups_shl_sobel15_vt_select_1_b = leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_q[1:1];

    // i_cleanups_shl_sobel15_vt_join(BITJOIN,65)@115
    assign i_cleanups_shl_sobel15_vt_join_q = {i_cleanups_shl_sobel15_vt_select_1_b, GND_q};

    // i_exitcond_sobel20_cmp_nsign(LOGICAL,642)@115
    assign i_exitcond_sobel20_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_b[7:7]));

    // i_notcmp_sobel36(LOGICAL,153)@115
    assign i_notcmp_sobel36_q = i_exitcond_sobel20_cmp_nsign_q ^ VCC_q;

    // i_or_sobel46(LOGICAL,171)@115
    assign i_or_sobel46_q = i_notcmp_sobel36_q | i_xor_sobel32_q;

    // i_next_cleanups_sobel56(MUX,152)@115
    assign i_next_cleanups_sobel56_s = i_or_sobel46_q;
    always @(i_next_cleanups_sobel56_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_b or i_cleanups_shl_sobel15_vt_join_q)
    begin
        unique case (i_next_cleanups_sobel56_s)
            1'b0 : i_next_cleanups_sobel56_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_b;
            1'b1 : i_next_cleanups_sobel56_q = i_cleanups_shl_sobel15_vt_join_q;
            default : i_next_cleanups_sobel56_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push14_sobel63(BLACKBOX,124)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    sobel_i_llvm_fpga_push_i2_cleanups_push14_0 thei_llvm_fpga_push_i2_cleanups_push14_sobel63 (
        .in_data_in(i_next_cleanups_sobel56_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_feedback_stall_out_14),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push14_sobel63_backStall),
        .in_valid_in(SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x(STALLENABLE,1975)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_V0 = SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_stall_out | ~ (SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_V1;
    assign SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V0 & SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_and0;
    assign SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V2 & SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_and1;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37(STALLENABLE,1663)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_sobel37_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_consumed1 = (~ (SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_and0;

    // SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6(STALLENABLE,1652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg0 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg1 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg2 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg3 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed2 = (~ (SE_i_masked_sobel47_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed3 = (~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_StallValid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_backStall & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_toReg3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed1 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed2 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireStall = ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_consumed3 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_or2);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_backStall = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_wireValid = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg(STALLFIFO,2496)
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_V0;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_in = SE_out_redist38_i_masked_sobel47_q_113_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(114),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_sobel47(LOGICAL,129)@115 + 1
    assign i_masked_sobel47_qi = i_notcmp_sobel36_q & i_first_cleanup_sobel14_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_sobel47_delay ( .xin(i_masked_sobel47_qi), .xout(i_masked_sobel47_q), .ena(SE_i_masked_sobel47_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist38_i_masked_sobel47_q_113_fifo(STALLFIFO,1444)
    assign redist38_i_masked_sobel47_q_113_fifo_valid_in = SE_in_redist38_i_masked_sobel47_q_113_fifo_V0;
    assign redist38_i_masked_sobel47_q_113_fifo_stall_in = SE_out_redist38_i_masked_sobel47_q_113_fifo_backStall;
    assign redist38_i_masked_sobel47_q_113_fifo_data_in = i_masked_sobel47_q;
    assign redist38_i_masked_sobel47_q_113_fifo_valid_in_bitsignaltemp = redist38_i_masked_sobel47_q_113_fifo_valid_in[0];
    assign redist38_i_masked_sobel47_q_113_fifo_stall_in_bitsignaltemp = redist38_i_masked_sobel47_q_113_fifo_stall_in[0];
    assign redist38_i_masked_sobel47_q_113_fifo_valid_out[0] = redist38_i_masked_sobel47_q_113_fifo_valid_out_bitsignaltemp;
    assign redist38_i_masked_sobel47_q_113_fifo_stall_out[0] = redist38_i_masked_sobel47_q_113_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(113),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist38_i_masked_sobel47_q_113_fifo (
        .valid_in(redist38_i_masked_sobel47_q_113_fifo_valid_in_bitsignaltemp),
        .stall_in(redist38_i_masked_sobel47_q_113_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_sobel47_q),
        .valid_out(redist38_i_masked_sobel47_q_113_fifo_valid_out_bitsignaltemp),
        .stall_out(redist38_i_masked_sobel47_q_113_fifo_stall_out_bitsignaltemp),
        .data_out(redist38_i_masked_sobel47_q_113_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist38_i_masked_sobel47_q_113_fifo(STALLENABLE,2303)
    // Valid signal propagation
    assign SE_out_redist38_i_masked_sobel47_q_113_fifo_V0 = SE_out_redist38_i_masked_sobel47_q_113_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist38_i_masked_sobel47_q_113_fifo_backStall = in_stall_in | ~ (SE_out_redist38_i_masked_sobel47_q_113_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist38_i_masked_sobel47_q_113_fifo_and0 = redist38_i_masked_sobel47_q_113_fifo_valid_out;
    assign SE_out_redist38_i_masked_sobel47_q_113_fifo_and1 = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_1_reg_valid_out & SE_out_redist38_i_masked_sobel47_q_113_fifo_and0;
    assign SE_out_redist38_i_masked_sobel47_q_113_fifo_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_valid_out & SE_out_redist38_i_masked_sobel47_q_113_fifo_and1;
    assign SE_out_redist38_i_masked_sobel47_q_113_fifo_and3 = SE_out_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_V0 & SE_out_redist38_i_masked_sobel47_q_113_fifo_and2;
    assign SE_out_redist38_i_masked_sobel47_q_113_fifo_and4 = SE_out_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_V0 & SE_out_redist38_i_masked_sobel47_q_113_fifo_and3;
    assign SE_out_redist38_i_masked_sobel47_q_113_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_sobel112_V0 & SE_out_redist38_i_masked_sobel47_q_113_fifo_and4;

    // SE_out_i_llvm_fpga_mem_memdep_sobel112(STALLENABLE,1616)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_sobel112_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_sobel112_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_consumed0 = (~ (SE_out_redist38_i_masked_sobel47_q_113_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_sobel112_wireValid) | SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_backStall) & SE_out_i_llvm_fpga_mem_memdep_sobel112_wireValid) | SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_StallValid = SE_out_i_llvm_fpga_mem_memdep_sobel112_backStall & SE_out_i_llvm_fpga_mem_memdep_sobel112_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_toReg0 = SE_out_i_llvm_fpga_mem_memdep_sobel112_StallValid & SE_out_i_llvm_fpga_mem_memdep_sobel112_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_toReg1 = SE_out_i_llvm_fpga_mem_memdep_sobel112_StallValid & SE_out_i_llvm_fpga_mem_memdep_sobel112_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_or0 = SE_out_i_llvm_fpga_mem_memdep_sobel112_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_sobel112_consumed1 & SE_out_i_llvm_fpga_mem_memdep_sobel112_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_backStall = SE_out_i_llvm_fpga_mem_memdep_sobel112_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_V0 = SE_out_i_llvm_fpga_mem_memdep_sobel112_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_V1 = SE_out_i_llvm_fpga_mem_memdep_sobel112_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_sobel112_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_sobel112_wireValid = i_llvm_fpga_mem_memdep_sobel112_out_o_valid;

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,1583)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,1584)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[64:0]);

    // sel_for_coalesced_delay_2(BITSELECT,1406)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_sobel112(BLACKBOX,99)@197
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_sobel_avm_address@20000000
    // out out_memdep_sobel_avm_burstcount@20000000
    // out out_memdep_sobel_avm_byteenable@20000000
    // out out_memdep_sobel_avm_enable@20000000
    // out out_memdep_sobel_avm_read@20000000
    // out out_memdep_sobel_avm_write@20000000
    // out out_memdep_sobel_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@228
    // out out_o_writeack@228
    sobel_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_sobel112 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_2_b),
        .in_i_predicate(sel_for_coalesced_delay_2_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_sobel112_backStall),
        .in_i_valid(SE_out_coalesced_delay_2_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_b),
        .in_memdep_sobel_avm_readdata(in_memdep_sobel_avm_readdata),
        .in_memdep_sobel_avm_readdatavalid(in_memdep_sobel_avm_readdatavalid),
        .in_memdep_sobel_avm_waitrequest(in_memdep_sobel_avm_waitrequest),
        .in_memdep_sobel_avm_writeack(in_memdep_sobel_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_sobel112_out_lsu_memdep_o_active),
        .out_memdep_sobel_avm_address(i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_address),
        .out_memdep_sobel_avm_burstcount(i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_burstcount),
        .out_memdep_sobel_avm_byteenable(i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_byteenable),
        .out_memdep_sobel_avm_enable(i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_enable),
        .out_memdep_sobel_avm_read(i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_read),
        .out_memdep_sobel_avm_write(i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_write),
        .out_memdep_sobel_avm_writedata(i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_sobel112_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_sobel112_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_sobel112_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_2106(CONSTANT,36)
    assign c_i8_2106_q = $unsigned(8'b00000010);

    // SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0(STALLENABLE,2295)
    // Valid signal propagation
    assign SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_V0 = SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_s_tv_0 = SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backStall & SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backEN = ~ (SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_v_s_0 = SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backEN & SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_V;
    // Backward Stall generation
    assign SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backStall = ~ (SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backEN == 1'b0)
            begin
                SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_R_v_0 <= SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_R_v_0 & SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_R_v_0 <= SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0(STALLENABLE,2293)
    // Valid signal propagation
    assign SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_V0 = SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_s_tv_0 = SE_i_sub108_sobel69_backStall & SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_backEN = ~ (SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_v_s_0 = SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_backEN & SE_i_add94_sobel64_V0;
    // Backward Stall generation
    assign SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_backStall = ~ (SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_R_v_0 <= SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_R_v_0 & SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_R_v_0 <= SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_add94_sobel64(STALLENABLE,1590)
    // Valid signal propagation
    assign SE_i_add94_sobel64_V0 = SE_i_add94_sobel64_wireValid;
    // Backward Stall generation
    assign SE_i_add94_sobel64_backStall = SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_backStall | ~ (SE_i_add94_sobel64_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add94_sobel64_and0 = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_V0;
    assign SE_i_add94_sobel64_and1 = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_V0 & SE_i_add94_sobel64_and0;
    assign SE_i_add94_sobel64_wireValid = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_V0 & SE_i_add94_sobel64_and1;

    // SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0(STALLENABLE,2296)
    // Valid signal propagation
    assign SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_V0 = SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_s_tv_0 = SE_i_sub108_sobel69_backStall & SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_backEN = ~ (SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_v_s_0 = SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_V0;
    // Backward Stall generation
    assign SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_backStall = ~ (SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_R_v_0 <= SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_R_v_0 & SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_R_v_0 <= SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59(STALLENABLE,1624)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_V0 = SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_backStall = SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_wireValid = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_valid;

    // i_llvm_fpga_mem_unnamed_sobel13_sobel59(BLACKBOX,103)@115
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_sobel13_sobel_avm_address@20000000
    // out out_unnamed_sobel13_sobel_avm_burstcount@20000000
    // out out_unnamed_sobel13_sobel_avm_byteenable@20000000
    // out out_unnamed_sobel13_sobel_avm_enable@20000000
    // out out_unnamed_sobel13_sobel_avm_read@20000000
    // out out_unnamed_sobel13_sobel_avm_write@20000000
    // out out_unnamed_sobel13_sobel_avm_writedata@20000000
    sobel_i_llvm_fpga_mem_unnamed_13_sobel0 thei_llvm_fpga_mem_unnamed_sobel13_sobel59 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D14),
        .in_i_dependence(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D3),
        .in_i_predicate(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D8),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_sobel13_sobel59_backStall),
        .in_i_valid(SE_i_arrayidx11_sobel0_dupName_0_add_x_V4),
        .in_unnamed_sobel13_sobel_avm_readdata(in_unnamed_sobel13_sobel_avm_readdata),
        .in_unnamed_sobel13_sobel_avm_readdatavalid(in_unnamed_sobel13_sobel_avm_readdatavalid),
        .in_unnamed_sobel13_sobel_avm_waitrequest(in_unnamed_sobel13_sobel_avm_waitrequest),
        .in_unnamed_sobel13_sobel_avm_writeack(in_unnamed_sobel13_sobel_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_valid),
        .out_unnamed_sobel13_sobel_avm_address(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_address),
        .out_unnamed_sobel13_sobel_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_burstcount),
        .out_unnamed_sobel13_sobel_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_byteenable),
        .out_unnamed_sobel13_sobel_avm_enable(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_enable),
        .out_unnamed_sobel13_sobel_avm_read(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_read),
        .out_unnamed_sobel13_sobel_avm_write(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_write),
        .out_unnamed_sobel13_sobel_avm_writedata(i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_sobel11_sobel57(BLACKBOX,101)@115
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_sobel11_sobel_avm_address@20000000
    // out out_unnamed_sobel11_sobel_avm_burstcount@20000000
    // out out_unnamed_sobel11_sobel_avm_byteenable@20000000
    // out out_unnamed_sobel11_sobel_avm_enable@20000000
    // out out_unnamed_sobel11_sobel_avm_read@20000000
    // out out_unnamed_sobel11_sobel_avm_write@20000000
    // out out_unnamed_sobel11_sobel_avm_writedata@20000000
    sobel_i_llvm_fpga_mem_unnamed_11_sobel0 thei_llvm_fpga_mem_unnamed_sobel11_sobel57 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D13),
        .in_i_dependence(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D1),
        .in_i_predicate(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D6),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_backStall),
        .in_i_valid(SE_i_arrayidx11_sobel0_dupName_0_add_x_V3),
        .in_unnamed_sobel11_sobel_avm_readdata(in_unnamed_sobel11_sobel_avm_readdata),
        .in_unnamed_sobel11_sobel_avm_readdatavalid(in_unnamed_sobel11_sobel_avm_readdatavalid),
        .in_unnamed_sobel11_sobel_avm_waitrequest(in_unnamed_sobel11_sobel_avm_waitrequest),
        .in_unnamed_sobel11_sobel_avm_writeack(in_unnamed_sobel11_sobel_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_valid),
        .out_unnamed_sobel11_sobel_avm_address(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_address),
        .out_unnamed_sobel11_sobel_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_burstcount),
        .out_unnamed_sobel11_sobel_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_byteenable),
        .out_unnamed_sobel11_sobel_avm_enable(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_enable),
        .out_unnamed_sobel11_sobel_avm_read(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_read),
        .out_unnamed_sobel11_sobel_avm_write(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_write),
        .out_unnamed_sobel11_sobel_avm_writedata(i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54(STALLENABLE,1632)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_V0 = SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_backStall = SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_wireValid = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_valid;

    // i_llvm_fpga_mem_unnamed_sobel9_sobel54(BLACKBOX,107)@115
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_sobel9_sobel_avm_address@20000000
    // out out_unnamed_sobel9_sobel_avm_burstcount@20000000
    // out out_unnamed_sobel9_sobel_avm_byteenable@20000000
    // out out_unnamed_sobel9_sobel_avm_enable@20000000
    // out out_unnamed_sobel9_sobel_avm_read@20000000
    // out out_unnamed_sobel9_sobel_avm_write@20000000
    // out out_unnamed_sobel9_sobel_avm_writedata@20000000
    sobel_i_llvm_fpga_mem_unnamed_9_sobel0 thei_llvm_fpga_mem_unnamed_sobel9_sobel54 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D11),
        .in_i_dependence(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D5),
        .in_i_predicate(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D10),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_backStall),
        .in_i_valid(SE_i_arrayidx11_sobel0_dupName_0_add_x_V1),
        .in_unnamed_sobel9_sobel_avm_readdata(in_unnamed_sobel9_sobel_avm_readdata),
        .in_unnamed_sobel9_sobel_avm_readdatavalid(in_unnamed_sobel9_sobel_avm_readdatavalid),
        .in_unnamed_sobel9_sobel_avm_waitrequest(in_unnamed_sobel9_sobel_avm_waitrequest),
        .in_unnamed_sobel9_sobel_avm_writeack(in_unnamed_sobel9_sobel_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_valid),
        .out_unnamed_sobel9_sobel_avm_address(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_address),
        .out_unnamed_sobel9_sobel_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_burstcount),
        .out_unnamed_sobel9_sobel_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_byteenable),
        .out_unnamed_sobel9_sobel_avm_enable(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_enable),
        .out_unnamed_sobel9_sobel_avm_read(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_read),
        .out_unnamed_sobel9_sobel_avm_write(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_write),
        .out_unnamed_sobel9_sobel_avm_writedata(i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_arrayidx11_sobel0_dupName_0_add_x(STALLENABLE,1769)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg0 <= '0;
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg1 <= '0;
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg2 <= '0;
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg3 <= '0;
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg0 <= SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg0;
            // Successor 1
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg1 <= SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg1;
            // Successor 2
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg2 <= SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg2;
            // Successor 3
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg3 <= SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg3;
            // Successor 4
            SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg4 <= SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_stall) & SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid) | SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg0;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_stall) & SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid) | SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg1;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed2 = (~ (i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_stall) & SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid) | SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg2;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed3 = (~ (i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_stall) & SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid) | SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg3;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed4 = (~ (i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_stall) & SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid) | SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg4;
    // Consuming
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_StallValid = SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall & SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg0 = SE_i_arrayidx11_sobel0_dupName_0_add_x_StallValid & SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed0;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg1 = SE_i_arrayidx11_sobel0_dupName_0_add_x_StallValid & SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed1;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg2 = SE_i_arrayidx11_sobel0_dupName_0_add_x_StallValid & SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed2;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg3 = SE_i_arrayidx11_sobel0_dupName_0_add_x_StallValid & SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed3;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_toReg4 = SE_i_arrayidx11_sobel0_dupName_0_add_x_StallValid & SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed4;
    // Backward Stall generation
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_or0 = SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed0;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_or1 = SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed1 & SE_i_arrayidx11_sobel0_dupName_0_add_x_or0;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_or2 = SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed2 & SE_i_arrayidx11_sobel0_dupName_0_add_x_or1;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_or3 = SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed3 & SE_i_arrayidx11_sobel0_dupName_0_add_x_or2;
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_wireStall = ~ (SE_i_arrayidx11_sobel0_dupName_0_add_x_consumed4 & SE_i_arrayidx11_sobel0_dupName_0_add_x_or3);
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall = SE_i_arrayidx11_sobel0_dupName_0_add_x_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_V0 = SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid & ~ (SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg0);
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_V1 = SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid & ~ (SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg1);
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_V2 = SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid & ~ (SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg2);
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_V3 = SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid & ~ (SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg3);
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_V4 = SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid & ~ (SE_i_arrayidx11_sobel0_dupName_0_add_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx11_sobel0_dupName_0_add_x_wireValid = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_V;

    // i_arrayidx92_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1331)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx92_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx92_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,994)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx92_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx92_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1333)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx92_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx92_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,993)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx92_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx92_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,995)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx92_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1332)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx92_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx92_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,991)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx92_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx92_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1334)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx92_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx92_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx92_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,992)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx92_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx92_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,996)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx92_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx92_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx92_sobel0_dupName_0_mult_extender_x(BITJOIN,517)@115
    assign i_arrayidx92_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx92_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx92_sobel0_dupName_1_trunc_sel_x(BITSELECT,520)@115
    assign i_arrayidx92_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx92_sobel0_dupName_0_mult_extender_x_q[63:0];

    // c_i32_1118(CONSTANT,27)
    assign c_i32_1118_q = $unsigned(32'b11111111111111111111111111111111);

    // i_sub_sobel25(ADD,214)@112
    assign i_sub_sobel25_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_b};
    assign i_sub_sobel25_b = {1'b0, c_i32_1118_q};
    assign i_sub_sobel25_o = $unsigned(i_sub_sobel25_a) + $unsigned(i_sub_sobel25_b);
    assign i_sub_sobel25_q = i_sub_sobel25_o[32:0];

    // bgTrunc_i_sub_sobel25_sel_x(BITSELECT,318)@112
    assign bgTrunc_i_sub_sobel25_sel_x_b = i_sub_sobel25_q[31:0];

    // redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0(REG,1431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub_sobel25_sel_x_b);
        end
    end

    // i_idxprom_sobel40_sel_x(BITSELECT,533)@113
    assign i_idxprom_sobel40_sel_x_b = $unsigned({{32{redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_q[31]}}, redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_q[31:0]});

    // i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select(BITSELECT,1349)@113
    assign i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b = i_idxprom_sobel40_sel_x_b[63:54];
    assign i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c = i_idxprom_sobel40_sel_x_b[53:36];
    assign i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d = i_idxprom_sobel40_sel_x_b[35:18];
    assign i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e = i_idxprom_sobel40_sel_x_b[17:0];

    // i_arrayidx92_sobel0_mult_x_im0_shift2(BITSHIFT,1313)@113
    assign i_arrayidx92_sobel0_mult_x_im0_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx92_sobel0_mult_x_im0_shift2_q = i_arrayidx92_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx92_sobel0_mult_x_im0_shift0(BITSHIFT,1311)@113
    assign i_arrayidx92_sobel0_mult_x_im0_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx92_sobel0_mult_x_im0_shift0_q = i_arrayidx92_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx92_sobel0_mult_x_im0_add_1(ADD,1312)@113
    assign i_arrayidx92_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx92_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx92_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx92_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx92_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx92_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx92_sobel0_mult_x_im0_add_1_q = i_arrayidx92_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx92_sobel0_mult_x_im0_add_3(ADD,1314)@113 + 1
    assign i_arrayidx92_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx92_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx92_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx92_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx92_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx92_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx92_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx92_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx92_sobel0_mult_x_im0_add_3_q = i_arrayidx92_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx92_sobel0_mult_x_im0_shift4(BITSHIFT,1315)@114
    assign i_arrayidx92_sobel0_mult_x_im0_shift4_qint = { i_arrayidx92_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx92_sobel0_mult_x_im0_shift4_q = i_arrayidx92_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx92_sobel0_mult_x_sums_align_3(BITSHIFT,976)@114
    assign i_arrayidx92_sobel0_mult_x_sums_align_3_qint = { i_arrayidx92_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx92_sobel0_mult_x_sums_align_3_q = i_arrayidx92_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx92_sobel0_mult_x_im6_shift2(BITSHIFT,1323)@113
    assign i_arrayidx92_sobel0_mult_x_im6_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx92_sobel0_mult_x_im6_shift2_q = i_arrayidx92_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx92_sobel0_mult_x_im6_shift0(BITSHIFT,1321)@113
    assign i_arrayidx92_sobel0_mult_x_im6_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx92_sobel0_mult_x_im6_shift0_q = i_arrayidx92_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx92_sobel0_mult_x_im6_add_1(ADD,1322)@113
    assign i_arrayidx92_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx92_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx92_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx92_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx92_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx92_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx92_sobel0_mult_x_im6_add_1_q = i_arrayidx92_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx92_sobel0_mult_x_im6_add_3(ADD,1324)@113 + 1
    assign i_arrayidx92_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx92_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx92_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx92_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx92_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx92_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx92_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx92_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx92_sobel0_mult_x_im6_add_3_q = i_arrayidx92_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx92_sobel0_mult_x_im6_shift4(BITSHIFT,1325)@114
    assign i_arrayidx92_sobel0_mult_x_im6_shift4_qint = { i_arrayidx92_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx92_sobel0_mult_x_im6_shift4_q = i_arrayidx92_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx92_sobel0_mult_x_sums_align_2(BITSHIFT,975)@114
    assign i_arrayidx92_sobel0_mult_x_sums_align_2_qint = { i_arrayidx92_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx92_sobel0_mult_x_sums_align_2_q = i_arrayidx92_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx92_sobel0_mult_x_sums_join_4(BITJOIN,977)@114
    assign i_arrayidx92_sobel0_mult_x_sums_join_4_q = {i_arrayidx92_sobel0_mult_x_sums_align_3_q, i_arrayidx92_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx92_sobel0_mult_x_im3_shift2(BITSHIFT,1318)@113
    assign i_arrayidx92_sobel0_mult_x_im3_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx92_sobel0_mult_x_im3_shift2_q = i_arrayidx92_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx92_sobel0_mult_x_im3_shift0(BITSHIFT,1316)@113
    assign i_arrayidx92_sobel0_mult_x_im3_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx92_sobel0_mult_x_im3_shift0_q = i_arrayidx92_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx92_sobel0_mult_x_im3_add_1(ADD,1317)@113
    assign i_arrayidx92_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx92_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx92_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx92_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx92_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx92_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx92_sobel0_mult_x_im3_add_1_q = i_arrayidx92_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx92_sobel0_mult_x_im3_add_3(ADD,1319)@113 + 1
    assign i_arrayidx92_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx92_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx92_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx92_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx92_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx92_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx92_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx92_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx92_sobel0_mult_x_im3_add_3_q = i_arrayidx92_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx92_sobel0_mult_x_im3_shift4(BITSHIFT,1320)@114
    assign i_arrayidx92_sobel0_mult_x_im3_shift4_qint = { i_arrayidx92_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx92_sobel0_mult_x_im3_shift4_q = i_arrayidx92_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx92_sobel0_mult_x_sums_align_0(BITSHIFT,973)@114
    assign i_arrayidx92_sobel0_mult_x_sums_align_0_qint = { i_arrayidx92_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx92_sobel0_mult_x_sums_align_0_q = i_arrayidx92_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx92_sobel0_mult_x_im9_shift2(BITSHIFT,1328)@113
    assign i_arrayidx92_sobel0_mult_x_im9_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx92_sobel0_mult_x_im9_shift2_q = i_arrayidx92_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx92_sobel0_mult_x_im9_shift0(BITSHIFT,1326)@113
    assign i_arrayidx92_sobel0_mult_x_im9_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx92_sobel0_mult_x_im9_shift0_q = i_arrayidx92_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx92_sobel0_mult_x_im9_add_1(ADD,1327)@113
    assign i_arrayidx92_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx92_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx92_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx92_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx92_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx92_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx92_sobel0_mult_x_im9_add_1_q = i_arrayidx92_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx92_sobel0_mult_x_im9_add_3(ADD,1329)@113 + 1
    assign i_arrayidx92_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx92_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx92_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx92_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx92_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx92_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx92_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx92_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx92_sobel0_mult_x_im9_add_3_q = i_arrayidx92_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx92_sobel0_mult_x_im9_shift4(BITSHIFT,1330)@114
    assign i_arrayidx92_sobel0_mult_x_im9_shift4_qint = { i_arrayidx92_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx92_sobel0_mult_x_im9_shift4_q = i_arrayidx92_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx92_sobel0_mult_x_sums_join_1(BITJOIN,974)@114
    assign i_arrayidx92_sobel0_mult_x_sums_join_1_q = {i_arrayidx92_sobel0_mult_x_sums_align_0_q, i_arrayidx92_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx92_sobel0_mult_x_sums_result_add_0_0(ADD,978)@114
    assign i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx92_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx92_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx92_sobel0_mult_extender_x(BITJOIN,514)@114
    assign i_arrayidx92_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx92_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx92_sobel0_trunc_sel_x(BITSELECT,516)@114
    assign i_arrayidx92_sobel0_trunc_sel_x_b = i_arrayidx92_sobel0_mult_extender_x_q[63:0];

    // SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2(STALLENABLE,2438)
    // Valid signal propagation
    assign SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_stall_out | ~ (SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_wireValid = bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_out;

    // i_idxprom23_sobel35_sel_x(BITSELECT,529)@115
    assign i_idxprom23_sobel35_sel_x_b = {32'b00000000000000000000000000000000, redist28_bgTrunc_i_add22_sobel18_sel_x_b_1_0_q[31:0]};

    // i_idxprom23_sobel35_vt_select_31(BITSELECT,82)@115
    assign i_idxprom23_sobel35_vt_select_31_b = i_idxprom23_sobel35_sel_x_b[31:0];

    // i_idxprom23_sobel35_vt_join(BITJOIN,81)@115
    assign i_idxprom23_sobel35_vt_join_q = {c_i32_0126_q, i_idxprom23_sobel35_vt_select_31_b};

    // i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,1343)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom23_sobel35_vt_join_q[63:54];
    assign i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom23_sobel35_vt_join_q[53:36];
    assign i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom23_sobel35_vt_join_q[35:18];
    assign i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom23_sobel35_vt_join_q[17:0];

    // i_arrayidx38_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1283)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx38_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx38_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,922)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx38_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx38_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1285)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx38_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx38_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,921)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx38_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx38_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,923)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx38_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1284)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx38_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx38_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,919)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx38_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx38_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1286)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx38_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx38_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx38_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,920)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx38_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx38_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,924)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx38_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx38_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx38_sobel0_dupName_0_mult_extender_x(BITJOIN,477)@115
    assign i_arrayidx38_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx38_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx38_sobel0_dupName_1_trunc_sel_x(BITSELECT,480)@115
    assign i_arrayidx38_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx38_sobel0_dupName_0_mult_extender_x_q[63:0];

    // SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo(STALLENABLE,2277)
    // Valid signal propagation
    assign SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_V0 = SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_backStall = i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_stall_out | ~ (SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_and0 = redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_out;
    assign SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_wireValid = SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_V0 & SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_and0;

    // SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8(STALLENABLE,1646)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_V0 = SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_backStall = SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_wireValid = i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_valid_out;

    // SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1(STALLENABLE,2308)
    // Valid signal propagation
    assign SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_V0 = SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_s_tv_0 = SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_backStall & SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_backEN = ~ (SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_v_s_0 = SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_backEN & SE_i_arrayidx113_sobel0_mult_x_im0_add_3_V1;
    // Backward Stall generation
    assign SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_backStall = ~ (SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_R_v_0 <= SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_R_v_0 & SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_R_v_0 <= SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26(STALLENABLE,1667)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_V0 = SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_backStall = i_llvm_fpga_push_i32_add1231_push16_sobel26_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_and0 = SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_V0;
    assign SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V3 & SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_and0;

    // SE_out_i_llvm_fpga_push_i32_add1231_push16_sobel26(STALLENABLE,1668)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_add1231_push16_sobel26_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_add1231_push16_sobel26_wireValid = i_llvm_fpga_push_i32_add1231_push16_sobel26_out_valid_out;

    // redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_0(REG,1448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_b);
        end
    end

    // redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1(REG,1449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_backEN == 1'b1)
        begin
            redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_q <= $unsigned(redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_0_q);
        end
    end

    // i_llvm_fpga_push_i32_add1231_push16_sobel26(BLACKBOX,125)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    sobel_i_llvm_fpga_push_i32_add1231_push16_0 thei_llvm_fpga_push_i32_add1231_push16_sobel26 (
        .in_data_in(redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_feedback_stall_out_16),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_add1231_push16_sobel26_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_add1231_push16_sobel26_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_add1231_push16_sobel26_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i32_add1231_push16_sobel26_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_add1231_push16_sobel26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo(BITJOIN,1565)
    assign bubble_join_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_q = redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_data_out;

    // bubble_select_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo(BITSELECT,1566)
    assign bubble_select_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_b = $unsigned(bubble_join_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_q[31:0]);

    // i_llvm_fpga_pop_i32_add1231_pop16_sobel8(BLACKBOX,114)@112
    // in in_stall_in@20000000
    // out out_data_out@113
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@113
    sobel_i_llvm_fpga_pop_i32_add1231_pop16_0 thei_llvm_fpga_pop_i32_add1231_pop16_sobel8 (
        .in_data_in(bubble_select_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_b),
        .in_dir(redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_add1231_push16_sobel26_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_add1231_push16_sobel26_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_backStall),
        .in_valid_in(SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_add1231_pop16_sobel8(BITJOIN,1513)
    assign bubble_join_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_q = i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_add1231_pop16_sobel8(BITSELECT,1514)
    assign bubble_select_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_q[31:0]);

    // i_idxprom13_sobel27_sel_x(BITSELECT,528)@113
    assign i_idxprom13_sobel27_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_b[31:0]};

    // i_idxprom13_sobel27_vt_select_31(BITSELECT,78)@113
    assign i_idxprom13_sobel27_vt_select_31_b = i_idxprom13_sobel27_sel_x_b[31:0];

    // i_idxprom13_sobel27_vt_join(BITJOIN,77)@113
    assign i_idxprom13_sobel27_vt_join_q = {c_i32_0126_q, i_idxprom13_sobel27_vt_select_31_b};

    // i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select(BITSELECT,1342)@113
    assign i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b = i_idxprom13_sobel27_vt_join_q[63:54];
    assign i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c = i_idxprom13_sobel27_vt_join_q[53:36];
    assign i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d = i_idxprom13_sobel27_vt_join_q[35:18];
    assign i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e = i_idxprom13_sobel27_vt_join_q[17:0];

    // i_arrayidx38_sobel0_mult_x_im0_shift2(BITSHIFT,1265)@113
    assign i_arrayidx38_sobel0_mult_x_im0_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx38_sobel0_mult_x_im0_shift2_q = i_arrayidx38_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx38_sobel0_mult_x_im0_shift0(BITSHIFT,1263)@113
    assign i_arrayidx38_sobel0_mult_x_im0_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx38_sobel0_mult_x_im0_shift0_q = i_arrayidx38_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx38_sobel0_mult_x_im0_add_1(ADD,1264)@113
    assign i_arrayidx38_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx38_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx38_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx38_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx38_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx38_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx38_sobel0_mult_x_im0_add_1_q = i_arrayidx38_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx38_sobel0_mult_x_im0_add_3(ADD,1266)@113 + 1
    assign i_arrayidx38_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx38_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx38_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx38_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx38_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx38_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx38_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx38_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx38_sobel0_mult_x_im0_add_3_q = i_arrayidx38_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx38_sobel0_mult_x_im0_shift4(BITSHIFT,1267)@114
    assign i_arrayidx38_sobel0_mult_x_im0_shift4_qint = { i_arrayidx38_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx38_sobel0_mult_x_im0_shift4_q = i_arrayidx38_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx38_sobel0_mult_x_sums_align_3(BITSHIFT,904)@114
    assign i_arrayidx38_sobel0_mult_x_sums_align_3_qint = { i_arrayidx38_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx38_sobel0_mult_x_sums_align_3_q = i_arrayidx38_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx38_sobel0_mult_x_im6_shift2(BITSHIFT,1275)@113
    assign i_arrayidx38_sobel0_mult_x_im6_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx38_sobel0_mult_x_im6_shift2_q = i_arrayidx38_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx38_sobel0_mult_x_im6_shift0(BITSHIFT,1273)@113
    assign i_arrayidx38_sobel0_mult_x_im6_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx38_sobel0_mult_x_im6_shift0_q = i_arrayidx38_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx38_sobel0_mult_x_im6_add_1(ADD,1274)@113
    assign i_arrayidx38_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx38_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx38_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx38_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx38_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx38_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx38_sobel0_mult_x_im6_add_1_q = i_arrayidx38_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx38_sobel0_mult_x_im6_add_3(ADD,1276)@113 + 1
    assign i_arrayidx38_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx38_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx38_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx38_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx38_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx38_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx38_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx38_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx38_sobel0_mult_x_im6_add_3_q = i_arrayidx38_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx38_sobel0_mult_x_im6_shift4(BITSHIFT,1277)@114
    assign i_arrayidx38_sobel0_mult_x_im6_shift4_qint = { i_arrayidx38_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx38_sobel0_mult_x_im6_shift4_q = i_arrayidx38_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx38_sobel0_mult_x_sums_align_2(BITSHIFT,903)@114
    assign i_arrayidx38_sobel0_mult_x_sums_align_2_qint = { i_arrayidx38_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx38_sobel0_mult_x_sums_align_2_q = i_arrayidx38_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx38_sobel0_mult_x_sums_join_4(BITJOIN,905)@114
    assign i_arrayidx38_sobel0_mult_x_sums_join_4_q = {i_arrayidx38_sobel0_mult_x_sums_align_3_q, i_arrayidx38_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx38_sobel0_mult_x_im3_shift2(BITSHIFT,1270)@113
    assign i_arrayidx38_sobel0_mult_x_im3_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx38_sobel0_mult_x_im3_shift2_q = i_arrayidx38_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx38_sobel0_mult_x_im3_shift0(BITSHIFT,1268)@113
    assign i_arrayidx38_sobel0_mult_x_im3_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx38_sobel0_mult_x_im3_shift0_q = i_arrayidx38_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx38_sobel0_mult_x_im3_add_1(ADD,1269)@113
    assign i_arrayidx38_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx38_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx38_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx38_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx38_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx38_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx38_sobel0_mult_x_im3_add_1_q = i_arrayidx38_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx38_sobel0_mult_x_im3_add_3(ADD,1271)@113 + 1
    assign i_arrayidx38_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx38_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx38_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx38_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx38_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx38_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx38_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx38_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx38_sobel0_mult_x_im3_add_3_q = i_arrayidx38_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx38_sobel0_mult_x_im3_shift4(BITSHIFT,1272)@114
    assign i_arrayidx38_sobel0_mult_x_im3_shift4_qint = { i_arrayidx38_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx38_sobel0_mult_x_im3_shift4_q = i_arrayidx38_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx38_sobel0_mult_x_sums_align_0(BITSHIFT,901)@114
    assign i_arrayidx38_sobel0_mult_x_sums_align_0_qint = { i_arrayidx38_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx38_sobel0_mult_x_sums_align_0_q = i_arrayidx38_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx38_sobel0_mult_x_im9_shift2(BITSHIFT,1280)@113
    assign i_arrayidx38_sobel0_mult_x_im9_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx38_sobel0_mult_x_im9_shift2_q = i_arrayidx38_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx38_sobel0_mult_x_im9_shift0(BITSHIFT,1278)@113
    assign i_arrayidx38_sobel0_mult_x_im9_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx38_sobel0_mult_x_im9_shift0_q = i_arrayidx38_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx38_sobel0_mult_x_im9_add_1(ADD,1279)@113
    assign i_arrayidx38_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx38_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx38_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx38_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx38_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx38_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx38_sobel0_mult_x_im9_add_1_q = i_arrayidx38_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx38_sobel0_mult_x_im9_add_3(ADD,1281)@113 + 1
    assign i_arrayidx38_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx38_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx38_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx38_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx38_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx38_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx38_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx38_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx38_sobel0_mult_x_im9_add_3_q = i_arrayidx38_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx38_sobel0_mult_x_im9_shift4(BITSHIFT,1282)@114
    assign i_arrayidx38_sobel0_mult_x_im9_shift4_qint = { i_arrayidx38_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx38_sobel0_mult_x_im9_shift4_q = i_arrayidx38_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx38_sobel0_mult_x_sums_join_1(BITJOIN,902)@114
    assign i_arrayidx38_sobel0_mult_x_sums_join_1_q = {i_arrayidx38_sobel0_mult_x_sums_align_0_q, i_arrayidx38_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx38_sobel0_mult_x_sums_result_add_0_0(ADD,906)@114
    assign i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx38_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx38_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx38_sobel0_mult_extender_x(BITJOIN,474)@114
    assign i_arrayidx38_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx38_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx38_sobel0_trunc_sel_x(BITSELECT,476)@114
    assign i_arrayidx38_sobel0_trunc_sel_x_b = i_arrayidx38_sobel0_mult_extender_x_q[63:0];

    // i_arrayidx38_sobel0_add_x(ADD,462)@114
    assign i_arrayidx38_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b};
    assign i_arrayidx38_sobel0_add_x_b = {1'b0, i_arrayidx38_sobel0_trunc_sel_x_b};
    assign i_arrayidx38_sobel0_add_x_o = $unsigned(i_arrayidx38_sobel0_add_x_a) + $unsigned(i_arrayidx38_sobel0_add_x_b);
    assign i_arrayidx38_sobel0_add_x_q = i_arrayidx38_sobel0_add_x_o[64:0];

    // i_arrayidx38_sobel0_dupName_0_trunc_sel_x(BITSELECT,479)@114
    assign i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx38_sobel0_add_x_q[63:0];

    // redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx38_sobel0_dupName_0_add_x(ADD,469)@115
    assign i_arrayidx38_sobel0_dupName_0_add_x_a = {1'b0, redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx38_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx38_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx38_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx38_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx38_sobel0_dupName_0_add_x_b);
    assign i_arrayidx38_sobel0_dupName_0_add_x_q = i_arrayidx38_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx38_sobel0_dupName_2_trunc_sel_x(BITSELECT,481)@115
    assign i_arrayidx38_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx38_sobel0_dupName_0_add_x_q[63:0];

    // i_sub4_sobel17(ADD,209)@114
    assign i_sub4_sobel17_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_b};
    assign i_sub4_sobel17_b = {1'b0, c_i32_1118_q};
    assign i_sub4_sobel17_o = $unsigned(i_sub4_sobel17_a) + $unsigned(i_sub4_sobel17_b);
    assign i_sub4_sobel17_q = i_sub4_sobel17_o[32:0];

    // bgTrunc_i_sub4_sobel17_sel_x(BITSELECT,316)@114
    assign bgTrunc_i_sub4_sobel17_sel_x_b = i_sub4_sobel17_q[31:0];

    // redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0(REG,1432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub4_sobel17_sel_x_b);
        end
    end

    // i_idxprom5_sobel33_sel_x(BITSELECT,530)@115
    assign i_idxprom5_sobel33_sel_x_b = $unsigned({{32{redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_q[31]}}, redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_q[31:0]});

    // i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,1348)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom5_sobel33_sel_x_b[63:54];
    assign i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom5_sobel33_sel_x_b[53:36];
    assign i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom5_sobel33_sel_x_b[35:18];
    assign i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom5_sobel33_sel_x_b[17:0];

    // i_arrayidx17_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1211)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx17_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx17_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,814)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx17_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx17_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1213)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx17_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx17_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,813)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx17_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx17_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,815)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx17_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1212)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx17_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx17_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,811)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx17_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx17_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1214)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx17_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx17_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx17_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,812)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx17_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx17_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,816)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx17_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx17_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx17_sobel0_dupName_0_mult_extender_x(BITJOIN,417)@115
    assign i_arrayidx17_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx17_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx17_sobel0_dupName_1_trunc_sel_x(BITSELECT,420)@115
    assign i_arrayidx17_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx17_sobel0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx17_sobel0_mult_x_im0_shift2(BITSHIFT,1193)@113
    assign i_arrayidx17_sobel0_mult_x_im0_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx17_sobel0_mult_x_im0_shift2_q = i_arrayidx17_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx17_sobel0_mult_x_im0_shift0(BITSHIFT,1191)@113
    assign i_arrayidx17_sobel0_mult_x_im0_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx17_sobel0_mult_x_im0_shift0_q = i_arrayidx17_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx17_sobel0_mult_x_im0_add_1(ADD,1192)@113
    assign i_arrayidx17_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx17_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx17_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx17_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx17_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx17_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx17_sobel0_mult_x_im0_add_1_q = i_arrayidx17_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx17_sobel0_mult_x_im0_add_3(ADD,1194)@113 + 1
    assign i_arrayidx17_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx17_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx17_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx17_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx17_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx17_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx17_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx17_sobel0_mult_x_im0_add_3_q = i_arrayidx17_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx17_sobel0_mult_x_im0_shift4(BITSHIFT,1195)@114
    assign i_arrayidx17_sobel0_mult_x_im0_shift4_qint = { i_arrayidx17_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx17_sobel0_mult_x_im0_shift4_q = i_arrayidx17_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx17_sobel0_mult_x_sums_align_3(BITSHIFT,796)@114
    assign i_arrayidx17_sobel0_mult_x_sums_align_3_qint = { i_arrayidx17_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx17_sobel0_mult_x_sums_align_3_q = i_arrayidx17_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx17_sobel0_mult_x_im6_shift2(BITSHIFT,1203)@113
    assign i_arrayidx17_sobel0_mult_x_im6_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx17_sobel0_mult_x_im6_shift2_q = i_arrayidx17_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx17_sobel0_mult_x_im6_shift0(BITSHIFT,1201)@113
    assign i_arrayidx17_sobel0_mult_x_im6_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx17_sobel0_mult_x_im6_shift0_q = i_arrayidx17_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx17_sobel0_mult_x_im6_add_1(ADD,1202)@113
    assign i_arrayidx17_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx17_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx17_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx17_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx17_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx17_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx17_sobel0_mult_x_im6_add_1_q = i_arrayidx17_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx17_sobel0_mult_x_im6_add_3(ADD,1204)@113 + 1
    assign i_arrayidx17_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx17_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx17_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx17_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx17_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx17_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx17_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx17_sobel0_mult_x_im6_add_3_q = i_arrayidx17_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx17_sobel0_mult_x_im6_shift4(BITSHIFT,1205)@114
    assign i_arrayidx17_sobel0_mult_x_im6_shift4_qint = { i_arrayidx17_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx17_sobel0_mult_x_im6_shift4_q = i_arrayidx17_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx17_sobel0_mult_x_sums_align_2(BITSHIFT,795)@114
    assign i_arrayidx17_sobel0_mult_x_sums_align_2_qint = { i_arrayidx17_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx17_sobel0_mult_x_sums_align_2_q = i_arrayidx17_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx17_sobel0_mult_x_sums_join_4(BITJOIN,797)@114
    assign i_arrayidx17_sobel0_mult_x_sums_join_4_q = {i_arrayidx17_sobel0_mult_x_sums_align_3_q, i_arrayidx17_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx17_sobel0_mult_x_im3_shift2(BITSHIFT,1198)@113
    assign i_arrayidx17_sobel0_mult_x_im3_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx17_sobel0_mult_x_im3_shift2_q = i_arrayidx17_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx17_sobel0_mult_x_im3_shift0(BITSHIFT,1196)@113
    assign i_arrayidx17_sobel0_mult_x_im3_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx17_sobel0_mult_x_im3_shift0_q = i_arrayidx17_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx17_sobel0_mult_x_im3_add_1(ADD,1197)@113
    assign i_arrayidx17_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx17_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx17_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx17_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx17_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx17_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx17_sobel0_mult_x_im3_add_1_q = i_arrayidx17_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx17_sobel0_mult_x_im3_add_3(ADD,1199)@113 + 1
    assign i_arrayidx17_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx17_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx17_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx17_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx17_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx17_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx17_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx17_sobel0_mult_x_im3_add_3_q = i_arrayidx17_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx17_sobel0_mult_x_im3_shift4(BITSHIFT,1200)@114
    assign i_arrayidx17_sobel0_mult_x_im3_shift4_qint = { i_arrayidx17_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx17_sobel0_mult_x_im3_shift4_q = i_arrayidx17_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx17_sobel0_mult_x_sums_align_0(BITSHIFT,793)@114
    assign i_arrayidx17_sobel0_mult_x_sums_align_0_qint = { i_arrayidx17_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx17_sobel0_mult_x_sums_align_0_q = i_arrayidx17_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx17_sobel0_mult_x_im9_shift2(BITSHIFT,1208)@113
    assign i_arrayidx17_sobel0_mult_x_im9_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx17_sobel0_mult_x_im9_shift2_q = i_arrayidx17_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx17_sobel0_mult_x_im9_shift0(BITSHIFT,1206)@113
    assign i_arrayidx17_sobel0_mult_x_im9_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx17_sobel0_mult_x_im9_shift0_q = i_arrayidx17_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx17_sobel0_mult_x_im9_add_1(ADD,1207)@113
    assign i_arrayidx17_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx17_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx17_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx17_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx17_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx17_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx17_sobel0_mult_x_im9_add_1_q = i_arrayidx17_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx17_sobel0_mult_x_im9_add_3(ADD,1209)@113 + 1
    assign i_arrayidx17_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx17_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx17_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx17_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx17_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx17_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx17_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx17_sobel0_mult_x_im9_add_3_q = i_arrayidx17_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx17_sobel0_mult_x_im9_shift4(BITSHIFT,1210)@114
    assign i_arrayidx17_sobel0_mult_x_im9_shift4_qint = { i_arrayidx17_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx17_sobel0_mult_x_im9_shift4_q = i_arrayidx17_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx17_sobel0_mult_x_sums_join_1(BITJOIN,794)@114
    assign i_arrayidx17_sobel0_mult_x_sums_join_1_q = {i_arrayidx17_sobel0_mult_x_sums_align_0_q, i_arrayidx17_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx17_sobel0_mult_x_sums_result_add_0_0(ADD,798)@114
    assign i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx17_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx17_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx17_sobel0_mult_extender_x(BITJOIN,414)@114
    assign i_arrayidx17_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx17_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx17_sobel0_trunc_sel_x(BITSELECT,416)@114
    assign i_arrayidx17_sobel0_trunc_sel_x_b = i_arrayidx17_sobel0_mult_extender_x_q[63:0];

    // i_arrayidx17_sobel0_add_x(ADD,402)@114
    assign i_arrayidx17_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b};
    assign i_arrayidx17_sobel0_add_x_b = {1'b0, i_arrayidx17_sobel0_trunc_sel_x_b};
    assign i_arrayidx17_sobel0_add_x_o = $unsigned(i_arrayidx17_sobel0_add_x_a) + $unsigned(i_arrayidx17_sobel0_add_x_b);
    assign i_arrayidx17_sobel0_add_x_q = i_arrayidx17_sobel0_add_x_o[64:0];

    // i_arrayidx17_sobel0_dupName_0_trunc_sel_x(BITSELECT,419)@114
    assign i_arrayidx17_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx17_sobel0_add_x_q[63:0];

    // redist18_i_arrayidx17_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_arrayidx17_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist18_i_arrayidx17_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx17_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx17_sobel0_dupName_0_add_x(ADD,409)@115
    assign i_arrayidx17_sobel0_dupName_0_add_x_a = {1'b0, redist18_i_arrayidx17_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx17_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx17_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx17_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx17_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx17_sobel0_dupName_0_add_x_b);
    assign i_arrayidx17_sobel0_dupName_0_add_x_q = i_arrayidx17_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx17_sobel0_dupName_2_trunc_sel_x(BITSELECT,421)@115
    assign i_arrayidx17_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx17_sobel0_dupName_0_add_x_q[63:0];

    // i_arrayidx113_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1139)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx113_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx113_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,706)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx113_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx113_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1141)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx113_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx113_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,705)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx113_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx113_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,707)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx113_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1140)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx113_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx113_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,703)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx113_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx113_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1142)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx113_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx113_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx113_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx113_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,704)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx113_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx113_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,708)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx113_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx113_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx113_sobel0_dupName_0_mult_extender_x(BITJOIN,357)@115
    assign i_arrayidx113_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx113_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx113_sobel0_dupName_1_trunc_sel_x(BITSELECT,360)@115
    assign i_arrayidx113_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx113_sobel0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx113_sobel0_mult_x_im0_shift2(BITSHIFT,1121)@113
    assign i_arrayidx113_sobel0_mult_x_im0_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx113_sobel0_mult_x_im0_shift2_q = i_arrayidx113_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx113_sobel0_mult_x_im0_shift0(BITSHIFT,1119)@113
    assign i_arrayidx113_sobel0_mult_x_im0_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx113_sobel0_mult_x_im0_shift0_q = i_arrayidx113_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx113_sobel0_mult_x_im0_add_1(ADD,1120)@113
    assign i_arrayidx113_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx113_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx113_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx113_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx113_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx113_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx113_sobel0_mult_x_im0_add_1_q = i_arrayidx113_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx113_sobel0_mult_x_im0_add_3(ADD,1122)@113 + 1
    assign i_arrayidx113_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx113_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx113_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx113_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx113_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx113_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx113_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx113_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx113_sobel0_mult_x_im0_add_3_q = i_arrayidx113_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx113_sobel0_mult_x_im0_shift4(BITSHIFT,1123)@114
    assign i_arrayidx113_sobel0_mult_x_im0_shift4_qint = { i_arrayidx113_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx113_sobel0_mult_x_im0_shift4_q = i_arrayidx113_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx113_sobel0_mult_x_sums_align_3(BITSHIFT,688)@114
    assign i_arrayidx113_sobel0_mult_x_sums_align_3_qint = { i_arrayidx113_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx113_sobel0_mult_x_sums_align_3_q = i_arrayidx113_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx113_sobel0_mult_x_im6_shift2(BITSHIFT,1131)@113
    assign i_arrayidx113_sobel0_mult_x_im6_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx113_sobel0_mult_x_im6_shift2_q = i_arrayidx113_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx113_sobel0_mult_x_im6_shift0(BITSHIFT,1129)@113
    assign i_arrayidx113_sobel0_mult_x_im6_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx113_sobel0_mult_x_im6_shift0_q = i_arrayidx113_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx113_sobel0_mult_x_im6_add_1(ADD,1130)@113
    assign i_arrayidx113_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx113_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx113_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx113_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx113_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx113_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx113_sobel0_mult_x_im6_add_1_q = i_arrayidx113_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx113_sobel0_mult_x_im6_add_3(ADD,1132)@113 + 1
    assign i_arrayidx113_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx113_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx113_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx113_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx113_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx113_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx113_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx113_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx113_sobel0_mult_x_im6_add_3_q = i_arrayidx113_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx113_sobel0_mult_x_im6_shift4(BITSHIFT,1133)@114
    assign i_arrayidx113_sobel0_mult_x_im6_shift4_qint = { i_arrayidx113_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx113_sobel0_mult_x_im6_shift4_q = i_arrayidx113_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx113_sobel0_mult_x_sums_align_2(BITSHIFT,687)@114
    assign i_arrayidx113_sobel0_mult_x_sums_align_2_qint = { i_arrayidx113_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx113_sobel0_mult_x_sums_align_2_q = i_arrayidx113_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx113_sobel0_mult_x_sums_join_4(BITJOIN,689)@114
    assign i_arrayidx113_sobel0_mult_x_sums_join_4_q = {i_arrayidx113_sobel0_mult_x_sums_align_3_q, i_arrayidx113_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx113_sobel0_mult_x_im3_shift2(BITSHIFT,1126)@113
    assign i_arrayidx113_sobel0_mult_x_im3_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx113_sobel0_mult_x_im3_shift2_q = i_arrayidx113_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx113_sobel0_mult_x_im3_shift0(BITSHIFT,1124)@113
    assign i_arrayidx113_sobel0_mult_x_im3_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx113_sobel0_mult_x_im3_shift0_q = i_arrayidx113_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx113_sobel0_mult_x_im3_add_1(ADD,1125)@113
    assign i_arrayidx113_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx113_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx113_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx113_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx113_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx113_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx113_sobel0_mult_x_im3_add_1_q = i_arrayidx113_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx113_sobel0_mult_x_im3_add_3(ADD,1127)@113 + 1
    assign i_arrayidx113_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx113_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx113_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx113_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx113_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx113_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx113_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx113_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx113_sobel0_mult_x_im3_add_3_q = i_arrayidx113_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx113_sobel0_mult_x_im3_shift4(BITSHIFT,1128)@114
    assign i_arrayidx113_sobel0_mult_x_im3_shift4_qint = { i_arrayidx113_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx113_sobel0_mult_x_im3_shift4_q = i_arrayidx113_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx113_sobel0_mult_x_sums_align_0(BITSHIFT,685)@114
    assign i_arrayidx113_sobel0_mult_x_sums_align_0_qint = { i_arrayidx113_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx113_sobel0_mult_x_sums_align_0_q = i_arrayidx113_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx113_sobel0_mult_x_im9_shift2(BITSHIFT,1136)@113
    assign i_arrayidx113_sobel0_mult_x_im9_shift2_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx113_sobel0_mult_x_im9_shift2_q = i_arrayidx113_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx113_sobel0_mult_x_im9_shift0(BITSHIFT,1134)@113
    assign i_arrayidx113_sobel0_mult_x_im9_shift0_qint = { i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx113_sobel0_mult_x_im9_shift0_q = i_arrayidx113_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx113_sobel0_mult_x_im9_add_1(ADD,1135)@113
    assign i_arrayidx113_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx113_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx113_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx113_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx113_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx113_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx113_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx113_sobel0_mult_x_im9_add_1_q = i_arrayidx113_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx113_sobel0_mult_x_im9_add_3(ADD,1137)@113 + 1
    assign i_arrayidx113_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx113_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx113_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx113_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx113_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx113_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx113_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx113_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx113_sobel0_mult_x_im9_add_3_q = i_arrayidx113_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx113_sobel0_mult_x_im9_shift4(BITSHIFT,1138)@114
    assign i_arrayidx113_sobel0_mult_x_im9_shift4_qint = { i_arrayidx113_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx113_sobel0_mult_x_im9_shift4_q = i_arrayidx113_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx113_sobel0_mult_x_sums_join_1(BITJOIN,686)@114
    assign i_arrayidx113_sobel0_mult_x_sums_join_1_q = {i_arrayidx113_sobel0_mult_x_sums_align_0_q, i_arrayidx113_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx113_sobel0_mult_x_sums_result_add_0_0(ADD,690)@114
    assign i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx113_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx113_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx113_sobel0_mult_extender_x(BITJOIN,354)@114
    assign i_arrayidx113_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx113_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx113_sobel0_trunc_sel_x(BITSELECT,356)@114
    assign i_arrayidx113_sobel0_trunc_sel_x_b = i_arrayidx113_sobel0_mult_extender_x_q[63:0];

    // i_arrayidx113_sobel0_add_x(ADD,342)@114
    assign i_arrayidx113_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b};
    assign i_arrayidx113_sobel0_add_x_b = {1'b0, i_arrayidx113_sobel0_trunc_sel_x_b};
    assign i_arrayidx113_sobel0_add_x_o = $unsigned(i_arrayidx113_sobel0_add_x_a) + $unsigned(i_arrayidx113_sobel0_add_x_b);
    assign i_arrayidx113_sobel0_add_x_q = i_arrayidx113_sobel0_add_x_o[64:0];

    // i_arrayidx113_sobel0_dupName_0_trunc_sel_x(BITSELECT,359)@114
    assign i_arrayidx113_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx113_sobel0_add_x_q[63:0];

    // redist22_i_arrayidx113_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx113_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist22_i_arrayidx113_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx113_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx113_sobel0_dupName_0_add_x(ADD,349)@115
    assign i_arrayidx113_sobel0_dupName_0_add_x_a = {1'b0, redist22_i_arrayidx113_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx113_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx113_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx113_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx113_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx113_sobel0_dupName_0_add_x_b);
    assign i_arrayidx113_sobel0_dupName_0_add_x_q = i_arrayidx113_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx113_sobel0_dupName_2_trunc_sel_x(BITSELECT,361)@115
    assign i_arrayidx113_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx113_sobel0_dupName_0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_sobel10_sobel55(BLACKBOX,100)@115
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_sobel10_sobel_avm_address@20000000
    // out out_unnamed_sobel10_sobel_avm_burstcount@20000000
    // out out_unnamed_sobel10_sobel_avm_byteenable@20000000
    // out out_unnamed_sobel10_sobel_avm_enable@20000000
    // out out_unnamed_sobel10_sobel_avm_read@20000000
    // out out_unnamed_sobel10_sobel_avm_write@20000000
    // out out_unnamed_sobel10_sobel_avm_writedata@20000000
    sobel_i_llvm_fpga_mem_unnamed_10_sobel0 thei_llvm_fpga_mem_unnamed_sobel10_sobel55 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D8),
        .in_i_dependence(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D1),
        .in_i_predicate(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D4),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_backStall),
        .in_i_valid(SE_i_arrayidx113_sobel0_dupName_0_add_x_V2),
        .in_unnamed_sobel10_sobel_avm_readdata(in_unnamed_sobel10_sobel_avm_readdata),
        .in_unnamed_sobel10_sobel_avm_readdatavalid(in_unnamed_sobel10_sobel_avm_readdatavalid),
        .in_unnamed_sobel10_sobel_avm_waitrequest(in_unnamed_sobel10_sobel_avm_waitrequest),
        .in_unnamed_sobel10_sobel_avm_writeack(in_unnamed_sobel10_sobel_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_valid),
        .out_unnamed_sobel10_sobel_avm_address(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_address),
        .out_unnamed_sobel10_sobel_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_burstcount),
        .out_unnamed_sobel10_sobel_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_byteenable),
        .out_unnamed_sobel10_sobel_avm_enable(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_enable),
        .out_unnamed_sobel10_sobel_avm_read(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_read),
        .out_unnamed_sobel10_sobel_avm_write(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_write),
        .out_unnamed_sobel10_sobel_avm_writedata(i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_sobel8_sobel53(BLACKBOX,106)@115
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_sobel8_sobel_avm_address@20000000
    // out out_unnamed_sobel8_sobel_avm_burstcount@20000000
    // out out_unnamed_sobel8_sobel_avm_byteenable@20000000
    // out out_unnamed_sobel8_sobel_avm_enable@20000000
    // out out_unnamed_sobel8_sobel_avm_read@20000000
    // out out_unnamed_sobel8_sobel_avm_write@20000000
    // out out_unnamed_sobel8_sobel_avm_writedata@20000000
    sobel_i_llvm_fpga_mem_unnamed_8_sobel0 thei_llvm_fpga_mem_unnamed_sobel8_sobel53 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D7),
        .in_i_dependence(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D3),
        .in_i_predicate(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D6),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_backStall),
        .in_i_valid(SE_i_arrayidx113_sobel0_dupName_0_add_x_V1),
        .in_unnamed_sobel8_sobel_avm_readdata(in_unnamed_sobel8_sobel_avm_readdata),
        .in_unnamed_sobel8_sobel_avm_readdatavalid(in_unnamed_sobel8_sobel_avm_readdatavalid),
        .in_unnamed_sobel8_sobel_avm_waitrequest(in_unnamed_sobel8_sobel_avm_waitrequest),
        .in_unnamed_sobel8_sobel_avm_writeack(in_unnamed_sobel8_sobel_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_valid),
        .out_unnamed_sobel8_sobel_avm_address(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_address),
        .out_unnamed_sobel8_sobel_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_burstcount),
        .out_unnamed_sobel8_sobel_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_byteenable),
        .out_unnamed_sobel8_sobel_avm_enable(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_enable),
        .out_unnamed_sobel8_sobel_avm_read(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_read),
        .out_unnamed_sobel8_sobel_avm_write(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_write),
        .out_unnamed_sobel8_sobel_avm_writedata(i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid1009_i_mul114_sobel0_shift_x(BITSELECT,1008)@147
    assign leftShiftStage0Idx1Rng1_uid1009_i_mul114_sobel0_shift_x_in = bubble_select_i_llvm_fpga_mem_unnamed_sobel6_sobel51_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid1009_i_mul114_sobel0_shift_x_b = leftShiftStage0Idx1Rng1_uid1009_i_mul114_sobel0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid1010_i_mul114_sobel0_shift_x(BITJOIN,1009)@147
    assign leftShiftStage0Idx1_uid1010_i_mul114_sobel0_shift_x_q = {leftShiftStage0Idx1Rng1_uid1009_i_mul114_sobel0_shift_x_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_unnamed_sobel6_sobel51(BITJOIN,1480)
    assign bubble_join_i_llvm_fpga_mem_unnamed_sobel6_sobel51_q = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_sobel6_sobel51(BITSELECT,1481)
    assign bubble_select_i_llvm_fpga_mem_unnamed_sobel6_sobel51_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_sobel6_sobel51_q[31:0]);

    // leftShiftStage0_uid1012_i_mul114_sobel0_shift_x(MUX,1011)@147
    assign leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_s or bubble_select_i_llvm_fpga_mem_unnamed_sobel6_sobel51_b or leftShiftStage0Idx1_uid1010_i_mul114_sobel0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_s)
            1'b0 : leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_q = bubble_select_i_llvm_fpga_mem_unnamed_sobel6_sobel51_b;
            1'b1 : leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_q = leftShiftStage0Idx1_uid1010_i_mul114_sobel0_shift_x_q;
            default : leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul114_sobel60_vt_select_31(BITSELECT,133)@147
    assign i_mul114_sobel60_vt_select_31_b = leftShiftStage0_uid1012_i_mul114_sobel0_shift_x_q[31:1];

    // redist37_i_mul114_sobel60_vt_select_31_b_2_0(REG,1442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_mul114_sobel60_vt_select_31_b_2_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_backEN == 1'b1)
        begin
            redist37_i_mul114_sobel60_vt_select_31_b_2_0_q <= $unsigned(i_mul114_sobel60_vt_select_31_b);
        end
    end

    // redist37_i_mul114_sobel60_vt_select_31_b_2_1(REG,1443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_mul114_sobel60_vt_select_31_b_2_1_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_backEN == 1'b1)
        begin
            redist37_i_mul114_sobel60_vt_select_31_b_2_1_q <= $unsigned(redist37_i_mul114_sobel60_vt_select_31_b_2_0_q);
        end
    end

    // i_mul114_sobel60_vt_join(BITJOIN,132)@149
    assign i_mul114_sobel60_vt_join_q = {redist37_i_mul114_sobel60_vt_select_31_b_2_1_q, GND_q};

    // leftShiftStage0Idx1Rng1_uid1025_i_mul93_sobel0_shift_x(BITSELECT,1024)@147
    assign leftShiftStage0Idx1Rng1_uid1025_i_mul93_sobel0_shift_x_in = bubble_select_i_llvm_fpga_mem_unnamed_sobel13_sobel59_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid1025_i_mul93_sobel0_shift_x_b = leftShiftStage0Idx1Rng1_uid1025_i_mul93_sobel0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid1026_i_mul93_sobel0_shift_x(BITJOIN,1025)@147
    assign leftShiftStage0Idx1_uid1026_i_mul93_sobel0_shift_x_q = {leftShiftStage0Idx1Rng1_uid1025_i_mul93_sobel0_shift_x_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_unnamed_sobel13_sobel59(BITJOIN,1477)
    assign bubble_join_i_llvm_fpga_mem_unnamed_sobel13_sobel59_q = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_sobel13_sobel59(BITSELECT,1478)
    assign bubble_select_i_llvm_fpga_mem_unnamed_sobel13_sobel59_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_sobel13_sobel59_q[31:0]);

    // leftShiftStage0_uid1028_i_mul93_sobel0_shift_x(MUX,1027)@147
    assign leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_s or bubble_select_i_llvm_fpga_mem_unnamed_sobel13_sobel59_b or leftShiftStage0Idx1_uid1026_i_mul93_sobel0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_s)
            1'b0 : leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_q = bubble_select_i_llvm_fpga_mem_unnamed_sobel13_sobel59_b;
            1'b1 : leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_q = leftShiftStage0Idx1_uid1026_i_mul93_sobel0_shift_x_q;
            default : leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul93_sobel65_vt_select_31(BITSELECT,147)@147
    assign i_mul93_sobel65_vt_select_31_b = leftShiftStage0_uid1028_i_mul93_sobel0_shift_x_q[31:1];

    // redist33_i_mul93_sobel65_vt_select_31_b_1_0(REG,1438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_mul93_sobel65_vt_select_31_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist33_i_mul93_sobel65_vt_select_31_b_1_0_q <= $unsigned(i_mul93_sobel65_vt_select_31_b);
        end
    end

    // i_mul93_sobel65_vt_join(BITJOIN,146)@148
    assign i_mul93_sobel65_vt_join_q = {redist33_i_mul93_sobel65_vt_select_31_b_1_0_q, GND_q};

    // bubble_join_i_llvm_fpga_mem_unnamed_sobel12_sobel58(BITJOIN,1474)
    assign bubble_join_i_llvm_fpga_mem_unnamed_sobel12_sobel58_q = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_sobel12_sobel58(BITSELECT,1475)
    assign bubble_select_i_llvm_fpga_mem_unnamed_sobel12_sobel58_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_sobel12_sobel58_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_sobel8_sobel53(BITJOIN,1486)
    assign bubble_join_i_llvm_fpga_mem_unnamed_sobel8_sobel53_q = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_sobel8_sobel53(BITSELECT,1487)
    assign bubble_select_i_llvm_fpga_mem_unnamed_sobel8_sobel53_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_sobel8_sobel53_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_sobel11_sobel57(BITJOIN,1471)
    assign bubble_join_i_llvm_fpga_mem_unnamed_sobel11_sobel57_q = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_sobel11_sobel57(BITSELECT,1472)
    assign bubble_select_i_llvm_fpga_mem_unnamed_sobel11_sobel57_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_sobel11_sobel57_q[31:0]);

    // i_add94_sobel64(SUB,48)@147
    assign i_add94_sobel64_a = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_sobel11_sobel57_b};
    assign i_add94_sobel64_b = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_sobel8_sobel53_b};
    assign i_add94_sobel64_o = $unsigned(i_add94_sobel64_a) - $unsigned(i_add94_sobel64_b);
    assign i_add94_sobel64_q = i_add94_sobel64_o[32:0];

    // bgTrunc_i_add94_sobel64_sel_x(BITSELECT,303)@147
    assign bgTrunc_i_add94_sobel64_sel_x_b = $unsigned(i_add94_sobel64_q[31:0]);

    // i_add101_sobel67(ADD,42)@147
    assign i_add101_sobel67_a = {1'b0, bgTrunc_i_add94_sobel64_sel_x_b};
    assign i_add101_sobel67_b = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_sobel12_sobel58_b};
    assign i_add101_sobel67_o = $unsigned(i_add101_sobel67_a) + $unsigned(i_add101_sobel67_b);
    assign i_add101_sobel67_q = i_add101_sobel67_o[32:0];

    // bgTrunc_i_add101_sobel67_sel_x(BITSELECT,300)@147
    assign bgTrunc_i_add101_sobel67_sel_x_b = i_add101_sobel67_q[31:0];

    // redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0(REG,1435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add101_sobel67_sel_x_b);
        end
    end

    // i_sub108_sobel69(SUB,203)@148
    assign i_sub108_sobel69_a = {1'b0, redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_q};
    assign i_sub108_sobel69_b = {1'b0, redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_q};
    assign i_sub108_sobel69_o = $unsigned(i_sub108_sobel69_a) - $unsigned(i_sub108_sobel69_b);
    assign i_sub108_sobel69_q = i_sub108_sobel69_o[32:0];

    // bgTrunc_i_sub108_sobel69_sel_x(BITSELECT,310)@148
    assign bgTrunc_i_sub108_sobel69_sel_x_b = $unsigned(i_sub108_sobel69_q[31:0]);

    // i_sub115_sobel71(ADD,204)@148
    assign i_sub115_sobel71_a = {1'b0, bgTrunc_i_sub108_sobel69_sel_x_b};
    assign i_sub115_sobel71_b = {1'b0, i_mul93_sobel65_vt_join_q};
    assign i_sub115_sobel71_o = $unsigned(i_sub115_sobel71_a) + $unsigned(i_sub115_sobel71_b);
    assign i_sub115_sobel71_q = i_sub115_sobel71_o[32:0];

    // bgTrunc_i_sub115_sobel71_sel_x(BITSELECT,311)@148
    assign bgTrunc_i_sub115_sobel71_sel_x_b = i_sub115_sobel71_q[31:0];

    // redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0(REG,1433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub115_sobel71_sel_x_b);
        end
    end

    // i_sub122_sobel73(SUB,205)@149
    assign i_sub122_sobel73_a = {1'b0, redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_q};
    assign i_sub122_sobel73_b = {1'b0, i_mul114_sobel60_vt_join_q};
    assign i_sub122_sobel73_o = $unsigned(i_sub122_sobel73_a) - $unsigned(i_sub122_sobel73_b);
    assign i_sub122_sobel73_q = i_sub122_sobel73_o[32:0];

    // bgTrunc_i_sub122_sobel73_sel_x(BITSELECT,312)@149
    assign bgTrunc_i_sub122_sobel73_sel_x_b = $unsigned(i_sub122_sobel73_q[31:0]);

    // i_mul164_sobel75_bs1_merged_bit_select(BITSELECT,1346)@149
    assign i_mul164_sobel75_bs1_merged_bit_select_b = bgTrunc_i_sub122_sobel73_sel_x_b[31:18];
    assign i_mul164_sobel75_bs1_merged_bit_select_c = bgTrunc_i_sub122_sobel73_sel_x_b[17:0];

    // i_mul164_sobel75_ma3_cma(CHAINMULTADD,1339)@149 + 3
    assign i_mul164_sobel75_ma3_cma_reset = ~ (resetn);
    assign i_mul164_sobel75_ma3_cma_ena0 = SE_i_mul164_sobel75_im0_cma_backEN[0];
    assign i_mul164_sobel75_ma3_cma_ena1 = i_mul164_sobel75_ma3_cma_ena0;
    assign i_mul164_sobel75_ma3_cma_ena2 = i_mul164_sobel75_ma3_cma_ena0;

    assign i_mul164_sobel75_ma3_cma_a0 = SR_SE_i_mul164_sobel75_im0_cma_D2;
    assign i_mul164_sobel75_ma3_cma_c0 = SR_SE_i_mul164_sobel75_im0_cma_D6;
    assign i_mul164_sobel75_ma3_cma_a1 = SR_SE_i_mul164_sobel75_im0_cma_D3;
    assign i_mul164_sobel75_ma3_cma_c1 = SR_SE_i_mul164_sobel75_im0_cma_D7;
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
    ) i_mul164_sobel75_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul164_sobel75_ma3_cma_ena2, i_mul164_sobel75_ma3_cma_ena1, i_mul164_sobel75_ma3_cma_ena0 }),
        .aclr({ i_mul164_sobel75_ma3_cma_reset, i_mul164_sobel75_ma3_cma_reset }),
        .ay(i_mul164_sobel75_ma3_cma_a1),
        .by(i_mul164_sobel75_ma3_cma_a0),
        .ax(i_mul164_sobel75_ma3_cma_c1),
        .bx(i_mul164_sobel75_ma3_cma_c0),
        .resulta(i_mul164_sobel75_ma3_cma_s0),
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
    i_mul164_sobel75_ma3_cma_delay ( .xin(i_mul164_sobel75_ma3_cma_s0), .xout(i_mul164_sobel75_ma3_cma_qq), .ena(SE_i_mul164_sobel75_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul164_sobel75_ma3_cma_q = $unsigned(i_mul164_sobel75_ma3_cma_qq[32:0]);

    // bubble_join_i_mul164_sobel75_ma3_cma(BITJOIN,1556)
    assign bubble_join_i_mul164_sobel75_ma3_cma_q = i_mul164_sobel75_ma3_cma_q;

    // SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0(STALLENABLE,2299)
    // Valid signal propagation
    assign SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_V0 = SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_s_tv_0 = SE_i_add165_sobel77_backStall & SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_backEN = ~ (SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_v_s_0 = SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_backEN & SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_V0;
    // Backward Stall generation
    assign SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_backStall = ~ (SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_backEN == 1'b0)
            begin
                SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_R_v_0 <= SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_R_v_0 & SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_R_v_0 <= SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data(STALLENABLE,2456)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_V0 = SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_backStall = SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_backStall | ~ (SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_and0 = bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_out;
    assign SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_and1 = bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_out & SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_and0;
    assign SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_wireValid = bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_out & SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_and1;

    // bubble_out_i_mul164_sobel75_ma3_cma_data_reg(STALLFIFO,2503)
    assign bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_in = SE_i_mul164_sobel75_im0_cma_V2;
    assign bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_backStall;
    assign bubble_out_i_mul164_sobel75_ma3_cma_data_reg_data_in = bubble_join_i_mul164_sobel75_ma3_cma_q;
    assign bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul164_sobel75_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul164_sobel75_ma3_cma_q),
        .valid_out(bubble_out_i_mul164_sobel75_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul164_sobel75_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul164_sobel75_im8_cma(CHAINMULTADD,1336)@149 + 3
    assign i_mul164_sobel75_im8_cma_reset = ~ (resetn);
    assign i_mul164_sobel75_im8_cma_ena0 = SE_i_mul164_sobel75_im0_cma_backEN[0];
    assign i_mul164_sobel75_im8_cma_ena1 = i_mul164_sobel75_im8_cma_ena0;
    assign i_mul164_sobel75_im8_cma_ena2 = i_mul164_sobel75_im8_cma_ena0;

    assign i_mul164_sobel75_im8_cma_a0 = SR_SE_i_mul164_sobel75_im0_cma_D4;
    assign i_mul164_sobel75_im8_cma_c0 = SR_SE_i_mul164_sobel75_im0_cma_D5;
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
    ) i_mul164_sobel75_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul164_sobel75_im8_cma_ena2, i_mul164_sobel75_im8_cma_ena1, i_mul164_sobel75_im8_cma_ena0 }),
        .aclr({ i_mul164_sobel75_im8_cma_reset, i_mul164_sobel75_im8_cma_reset }),
        .ay(i_mul164_sobel75_im8_cma_a0),
        .ax(i_mul164_sobel75_im8_cma_c0),
        .resulta(i_mul164_sobel75_im8_cma_s0),
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
    i_mul164_sobel75_im8_cma_delay ( .xin(i_mul164_sobel75_im8_cma_s0), .xout(i_mul164_sobel75_im8_cma_qq), .ena(SE_i_mul164_sobel75_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul164_sobel75_im8_cma_q = $unsigned(i_mul164_sobel75_im8_cma_qq[35:0]);

    // bubble_join_i_mul164_sobel75_im8_cma(BITJOIN,1547)
    assign bubble_join_i_mul164_sobel75_im8_cma_q = i_mul164_sobel75_im8_cma_q;

    // bubble_out_i_mul164_sobel75_im8_cma_data_reg(STALLFIFO,2500)
    assign bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_in = SE_i_mul164_sobel75_im0_cma_V1;
    assign bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_backStall;
    assign bubble_out_i_mul164_sobel75_im8_cma_data_reg_data_in = bubble_join_i_mul164_sobel75_im8_cma_q;
    assign bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul164_sobel75_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul164_sobel75_im8_cma_q),
        .valid_out(bubble_out_i_mul164_sobel75_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul164_sobel75_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul164_sobel75_im0_cma(CHAINMULTADD,1335)@149 + 3
    assign i_mul164_sobel75_im0_cma_reset = ~ (resetn);
    assign i_mul164_sobel75_im0_cma_ena0 = SE_i_mul164_sobel75_im0_cma_backEN[0];
    assign i_mul164_sobel75_im0_cma_ena1 = i_mul164_sobel75_im0_cma_ena0;
    assign i_mul164_sobel75_im0_cma_ena2 = i_mul164_sobel75_im0_cma_ena0;

    assign i_mul164_sobel75_im0_cma_a0 = SR_SE_i_mul164_sobel75_im0_cma_D0;
    assign i_mul164_sobel75_im0_cma_c0 = SR_SE_i_mul164_sobel75_im0_cma_D1;
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
    ) i_mul164_sobel75_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul164_sobel75_im0_cma_ena2, i_mul164_sobel75_im0_cma_ena1, i_mul164_sobel75_im0_cma_ena0 }),
        .aclr({ i_mul164_sobel75_im0_cma_reset, i_mul164_sobel75_im0_cma_reset }),
        .ay(i_mul164_sobel75_im0_cma_a0),
        .ax(i_mul164_sobel75_im0_cma_c0),
        .resulta(i_mul164_sobel75_im0_cma_s0),
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
    i_mul164_sobel75_im0_cma_delay ( .xin(i_mul164_sobel75_im0_cma_s0), .xout(i_mul164_sobel75_im0_cma_qq), .ena(SE_i_mul164_sobel75_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul164_sobel75_im0_cma_q = $unsigned(i_mul164_sobel75_im0_cma_qq[27:0]);

    // bubble_join_i_mul164_sobel75_im0_cma(BITJOIN,1544)
    assign bubble_join_i_mul164_sobel75_im0_cma_q = i_mul164_sobel75_im0_cma_q;

    // bubble_out_i_mul164_sobel75_im0_cma_data_reg(STALLFIFO,2499)
    assign bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_in = SE_i_mul164_sobel75_im0_cma_V0;
    assign bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul164_sobel75_ma3_cma_data_backStall;
    assign bubble_out_i_mul164_sobel75_im0_cma_data_reg_data_in = bubble_join_i_mul164_sobel75_im0_cma_q;
    assign bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul164_sobel75_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul164_sobel75_im0_cma_q),
        .valid_out(bubble_out_i_mul164_sobel75_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul164_sobel75_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mul164_sobel75_im0_cma(STALLENABLE,2243)
    // Valid signal propagation
    assign SE_i_mul164_sobel75_im0_cma_V0 = SE_i_mul164_sobel75_im0_cma_R_v_0;
    assign SE_i_mul164_sobel75_im0_cma_V1 = SE_i_mul164_sobel75_im0_cma_R_v_1;
    assign SE_i_mul164_sobel75_im0_cma_V2 = SE_i_mul164_sobel75_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul164_sobel75_im0_cma_s_tv_0 = bubble_out_i_mul164_sobel75_im0_cma_data_reg_stall_out & SE_i_mul164_sobel75_im0_cma_R_v_0;
    assign SE_i_mul164_sobel75_im0_cma_s_tv_1 = bubble_out_i_mul164_sobel75_im8_cma_data_reg_stall_out & SE_i_mul164_sobel75_im0_cma_R_v_1;
    assign SE_i_mul164_sobel75_im0_cma_s_tv_2 = bubble_out_i_mul164_sobel75_ma3_cma_data_reg_stall_out & SE_i_mul164_sobel75_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul164_sobel75_im0_cma_or0 = SE_i_mul164_sobel75_im0_cma_s_tv_0;
    assign SE_i_mul164_sobel75_im0_cma_or1 = SE_i_mul164_sobel75_im0_cma_s_tv_1 | SE_i_mul164_sobel75_im0_cma_or0;
    assign SE_i_mul164_sobel75_im0_cma_backEN = ~ (SE_i_mul164_sobel75_im0_cma_s_tv_2 | SE_i_mul164_sobel75_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul164_sobel75_im0_cma_v_s_0 = SE_i_mul164_sobel75_im0_cma_backEN & SR_SE_i_mul164_sobel75_im0_cma_V;
    // Backward Stall generation
    assign SE_i_mul164_sobel75_im0_cma_backStall = ~ (SE_i_mul164_sobel75_im0_cma_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul164_sobel75_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul164_sobel75_im0_cma_R_s_1 <= 1'b0;
            SE_i_mul164_sobel75_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul164_sobel75_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul164_sobel75_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul164_sobel75_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul164_sobel75_im0_cma_R_s_0 <= SE_i_mul164_sobel75_im0_cma_v_s_0;
            end

            if (SE_i_mul164_sobel75_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul164_sobel75_im0_cma_R_s_1 <= SE_i_mul164_sobel75_im0_cma_R_s_0;
            end

            if (SE_i_mul164_sobel75_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul164_sobel75_im0_cma_R_v_0 <= SE_i_mul164_sobel75_im0_cma_R_v_0 & SE_i_mul164_sobel75_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul164_sobel75_im0_cma_R_v_0 <= SE_i_mul164_sobel75_im0_cma_R_s_1;
            end

            if (SE_i_mul164_sobel75_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul164_sobel75_im0_cma_R_v_1 <= SE_i_mul164_sobel75_im0_cma_R_v_1 & SE_i_mul164_sobel75_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul164_sobel75_im0_cma_R_v_1 <= SE_i_mul164_sobel75_im0_cma_R_s_1;
            end

            if (SE_i_mul164_sobel75_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul164_sobel75_im0_cma_R_v_2 <= SE_i_mul164_sobel75_im0_cma_R_v_2 & SE_i_mul164_sobel75_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul164_sobel75_im0_cma_R_v_2 <= SE_i_mul164_sobel75_im0_cma_R_s_1;
            end

        end
    end

    // SR_SE_i_mul164_sobel75_im0_cma(STALLREG,2509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul164_sobel75_im0_cma_r_valid <= 1'b0;
            SR_SE_i_mul164_sobel75_im0_cma_r_data0 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul164_sobel75_im0_cma_r_data1 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul164_sobel75_im0_cma_r_data2 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul164_sobel75_im0_cma_r_data3 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul164_sobel75_im0_cma_r_data4 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul164_sobel75_im0_cma_r_data5 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul164_sobel75_im0_cma_r_data6 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul164_sobel75_im0_cma_r_data7 <= 18'bxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul164_sobel75_im0_cma_r_valid <= SE_i_mul164_sobel75_im0_cma_backStall & (SR_SE_i_mul164_sobel75_im0_cma_r_valid | SR_SE_i_mul164_sobel75_im0_cma_i_valid);

            if (SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul164_sobel75_im0_cma_r_data0 <= $unsigned(i_mul164_sobel75_bs1_merged_bit_select_b);
                SR_SE_i_mul164_sobel75_im0_cma_r_data1 <= $unsigned(i_mul164_sobel75_bs1_merged_bit_select_b);
                SR_SE_i_mul164_sobel75_im0_cma_r_data2 <= $unsigned(i_mul164_sobel75_bs1_merged_bit_select_b);
                SR_SE_i_mul164_sobel75_im0_cma_r_data3 <= $unsigned(i_mul164_sobel75_bs1_merged_bit_select_b);
                SR_SE_i_mul164_sobel75_im0_cma_r_data4 <= $unsigned(i_mul164_sobel75_bs1_merged_bit_select_c);
                SR_SE_i_mul164_sobel75_im0_cma_r_data5 <= $unsigned(i_mul164_sobel75_bs1_merged_bit_select_c);
                SR_SE_i_mul164_sobel75_im0_cma_r_data6 <= $unsigned(i_mul164_sobel75_bs1_merged_bit_select_c);
                SR_SE_i_mul164_sobel75_im0_cma_r_data7 <= $unsigned(i_mul164_sobel75_bs1_merged_bit_select_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul164_sobel75_im0_cma_i_valid = SE_i_mul114_sobel60_vt_join_V0;
    // Stall signal propagation
    assign SR_SE_i_mul164_sobel75_im0_cma_backStall = SR_SE_i_mul164_sobel75_im0_cma_r_valid | ~ (SR_SE_i_mul164_sobel75_im0_cma_i_valid);

    // Valid
    assign SR_SE_i_mul164_sobel75_im0_cma_V = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_valid : SR_SE_i_mul164_sobel75_im0_cma_i_valid;

    // Data0
    assign SR_SE_i_mul164_sobel75_im0_cma_D0 = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_data0 : i_mul164_sobel75_bs1_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mul164_sobel75_im0_cma_D1 = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_data1 : i_mul164_sobel75_bs1_merged_bit_select_b;
    // Data2
    assign SR_SE_i_mul164_sobel75_im0_cma_D2 = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_data2 : i_mul164_sobel75_bs1_merged_bit_select_b;
    // Data3
    assign SR_SE_i_mul164_sobel75_im0_cma_D3 = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_data3 : i_mul164_sobel75_bs1_merged_bit_select_b;
    // Data4
    assign SR_SE_i_mul164_sobel75_im0_cma_D4 = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_data4 : i_mul164_sobel75_bs1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_mul164_sobel75_im0_cma_D5 = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_data5 : i_mul164_sobel75_bs1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_mul164_sobel75_im0_cma_D6 = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_data6 : i_mul164_sobel75_bs1_merged_bit_select_c;
    // Data7
    assign SR_SE_i_mul164_sobel75_im0_cma_D7 = SR_SE_i_mul164_sobel75_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul164_sobel75_im0_cma_r_data7 : i_mul164_sobel75_bs1_merged_bit_select_c;

    // SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0(STALLENABLE,2291)
    // Valid signal propagation
    assign SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_V0 = SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_s_tv_0 = SE_i_mul114_sobel60_vt_join_backStall & SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_backEN = ~ (SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_v_s_0 = SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_backEN & SE_i_sub108_sobel69_V0;
    // Backward Stall generation
    assign SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_backStall = ~ (SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_R_v_0 <= SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_R_v_0 & SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_R_v_0 <= SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul114_sobel60_vt_join(STALLENABLE,1677)
    // Valid signal propagation
    assign SE_i_mul114_sobel60_vt_join_V0 = SE_i_mul114_sobel60_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_mul114_sobel60_vt_join_backStall = SR_SE_i_mul164_sobel75_im0_cma_backStall | ~ (SE_i_mul114_sobel60_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul114_sobel60_vt_join_and0 = SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_V0;
    assign SE_i_mul114_sobel60_vt_join_wireValid = SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_V0 & SE_i_mul114_sobel60_vt_join_and0;

    // SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1(STALLENABLE,2301)
    // Valid signal propagation
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_V0 = SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_s_tv_0 = SE_i_mul114_sobel60_vt_join_backStall & SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_backEN = ~ (SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_v_s_0 = SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_backEN & SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_V0;
    // Backward Stall generation
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_backStall = ~ (SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_backEN == 1'b0)
            begin
                SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_R_v_0 <= SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_R_v_0 & SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_s_tv_0;
            end
            else
            begin
                SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_R_v_0 <= SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_v_s_0;
            end

        end
    end

    // SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0(STALLENABLE,2300)
    // Valid signal propagation
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_V0 = SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_s_tv_0 = SE_redist37_i_mul114_sobel60_vt_select_31_b_2_1_backStall & SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_backEN = ~ (SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_v_s_0 = SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_V0;
    // Backward Stall generation
    assign SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_backStall = ~ (SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_backEN == 1'b0)
            begin
                SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_R_v_0 <= SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_R_v_0 & SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_s_tv_0;
            end
            else
            begin
                SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_R_v_0 <= SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51(STALLENABLE,1626)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_V0 = SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_backStall = SE_redist37_i_mul114_sobel60_vt_select_31_b_2_0_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_wireValid = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_valid;

    // i_llvm_fpga_mem_unnamed_sobel6_sobel51(BLACKBOX,104)@115
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_sobel6_sobel_avm_address@20000000
    // out out_unnamed_sobel6_sobel_avm_burstcount@20000000
    // out out_unnamed_sobel6_sobel_avm_byteenable@20000000
    // out out_unnamed_sobel6_sobel_avm_enable@20000000
    // out out_unnamed_sobel6_sobel_avm_read@20000000
    // out out_unnamed_sobel6_sobel_avm_write@20000000
    // out out_unnamed_sobel6_sobel_avm_writedata@20000000
    sobel_i_llvm_fpga_mem_unnamed_6_sobel0 thei_llvm_fpga_mem_unnamed_sobel6_sobel51 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D0),
        .in_i_dependence(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D2),
        .in_i_predicate(SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D5),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_sobel6_sobel51_backStall),
        .in_i_valid(SE_i_arrayidx113_sobel0_dupName_0_add_x_V0),
        .in_unnamed_sobel6_sobel_avm_readdata(in_unnamed_sobel6_sobel_avm_readdata),
        .in_unnamed_sobel6_sobel_avm_readdatavalid(in_unnamed_sobel6_sobel_avm_readdatavalid),
        .in_unnamed_sobel6_sobel_avm_waitrequest(in_unnamed_sobel6_sobel_avm_waitrequest),
        .in_unnamed_sobel6_sobel_avm_writeack(in_unnamed_sobel6_sobel_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_valid),
        .out_unnamed_sobel6_sobel_avm_address(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_address),
        .out_unnamed_sobel6_sobel_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_burstcount),
        .out_unnamed_sobel6_sobel_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_byteenable),
        .out_unnamed_sobel6_sobel_avm_enable(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_enable),
        .out_unnamed_sobel6_sobel_avm_read(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_read),
        .out_unnamed_sobel6_sobel_avm_write(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_write),
        .out_unnamed_sobel6_sobel_avm_writedata(i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_arrayidx113_sobel0_dupName_0_add_x(STALLENABLE,1761)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg0 <= '0;
            SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg1 <= '0;
            SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg0 <= SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg0;
            // Successor 1
            SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg1 <= SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg1;
            // Successor 2
            SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg2 <= SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_o_stall) & SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid) | SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg0;
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_stall) & SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid) | SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg1;
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed2 = (~ (i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_stall) & SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid) | SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg2;
    // Consuming
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_StallValid = SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall & SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid;
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg0 = SE_i_arrayidx113_sobel0_dupName_0_add_x_StallValid & SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed0;
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg1 = SE_i_arrayidx113_sobel0_dupName_0_add_x_StallValid & SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed1;
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_toReg2 = SE_i_arrayidx113_sobel0_dupName_0_add_x_StallValid & SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed2;
    // Backward Stall generation
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_or0 = SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed0;
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_or1 = SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed1 & SE_i_arrayidx113_sobel0_dupName_0_add_x_or0;
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_wireStall = ~ (SE_i_arrayidx113_sobel0_dupName_0_add_x_consumed2 & SE_i_arrayidx113_sobel0_dupName_0_add_x_or1);
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall = SE_i_arrayidx113_sobel0_dupName_0_add_x_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_V0 = SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid & ~ (SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg0);
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_V1 = SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid & ~ (SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg1);
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_V2 = SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid & ~ (SE_i_arrayidx113_sobel0_dupName_0_add_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx113_sobel0_dupName_0_add_x_wireValid = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_V;

    // SR_SE_i_arrayidx113_sobel0_dupName_0_add_x(STALLREG,2507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid <= 1'b0;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data1 <= 1'bx;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data2 <= 1'bx;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data3 <= 1'bx;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data4 <= 1'bx;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data5 <= 1'bx;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data6 <= 1'bx;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data7 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data8 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid <= SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall & (SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid | SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_i_valid);

            if (SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data0 <= i_arrayidx113_sobel0_dupName_2_trunc_sel_x_b;
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data1 <= i_memdep_phi1_or_sobel31_q;
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data2 <= i_memdep_phi1_or_sobel31_q;
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data3 <= i_memdep_phi1_or_sobel31_q;
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data4 <= i_xor_sobel32_q;
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data5 <= i_xor_sobel32_q;
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data6 <= i_xor_sobel32_q;
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data7 <= i_arrayidx17_sobel0_dupName_2_trunc_sel_x_b;
                SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data8 <= i_arrayidx38_sobel0_dupName_2_trunc_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and0 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V1;
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and1 = SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_V0 & SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and0;
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_V0 & SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and1;
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_i_valid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V3 & SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_and2;
    // Stall signal propagation
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid | ~ (SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_i_valid);

    // Valid
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_V = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid : SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_i_valid;

    // Data0
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D0 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data0 : i_arrayidx113_sobel0_dupName_2_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D1 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data1 : i_memdep_phi1_or_sobel31_q;
    // Data2
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D2 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data2 : i_memdep_phi1_or_sobel31_q;
    // Data3
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D3 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data3 : i_memdep_phi1_or_sobel31_q;
    // Data4
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D4 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data4 : i_xor_sobel32_q;
    // Data5
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D5 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data5 : i_xor_sobel32_q;
    // Data6
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D6 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data6 : i_xor_sobel32_q;
    // Data7
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D7 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data7 : i_arrayidx17_sobel0_dupName_2_trunc_sel_x_b;
    // Data8
    assign SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_D8 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_r_data8 : i_arrayidx38_sobel0_dupName_2_trunc_sel_x_b;

    // SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,2282)
    // Valid signal propagation
    assign SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall & SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_i_arrayidx113_sobel0_mult_x_sums_align_0_V0;
    // Backward Stall generation
    assign SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx113_sobel0_mult_x_im0_add_3(STALLENABLE,2030)
    // Valid signal propagation
    assign SE_i_arrayidx113_sobel0_mult_x_im0_add_3_V0 = SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_0;
    assign SE_i_arrayidx113_sobel0_mult_x_im0_add_3_V1 = SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx113_sobel0_mult_x_im0_add_3_s_tv_0 = SE_i_arrayidx113_sobel0_mult_x_sums_align_0_backStall & SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_0;
    assign SE_i_arrayidx113_sobel0_mult_x_im0_add_3_s_tv_1 = SE_redist41_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_out_data_out_2_1_backStall & SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx113_sobel0_mult_x_im0_add_3_or0 = SE_i_arrayidx113_sobel0_mult_x_im0_add_3_s_tv_0;
    assign SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN = ~ (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_s_tv_1 | SE_i_arrayidx113_sobel0_mult_x_im0_add_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx113_sobel0_mult_x_im0_add_3_v_s_0 = SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN & SE_out_i_llvm_fpga_pop_i32_add1231_pop16_sobel8_V0;
    // Backward Stall generation
    assign SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backStall = ~ (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_0 <= 1'b0;
            SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b0)
            begin
                SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_0 <= SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_0 & SE_i_arrayidx113_sobel0_mult_x_im0_add_3_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_0 <= SE_i_arrayidx113_sobel0_mult_x_im0_add_3_v_s_0;
            end

            if (SE_i_arrayidx113_sobel0_mult_x_im0_add_3_backEN == 1'b0)
            begin
                SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_1 <= SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_1 & SE_i_arrayidx113_sobel0_mult_x_im0_add_3_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx113_sobel0_mult_x_im0_add_3_R_v_1 <= SE_i_arrayidx113_sobel0_mult_x_im0_add_3_v_s_0;
            end

        end
    end

    // SE_i_arrayidx113_sobel0_mult_x_sums_align_0(STALLENABLE,1865)
    // Valid signal propagation
    assign SE_i_arrayidx113_sobel0_mult_x_sums_align_0_V0 = SE_i_arrayidx113_sobel0_mult_x_sums_align_0_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx113_sobel0_mult_x_sums_align_0_backStall = SE_redist15_i_arrayidx38_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_i_arrayidx113_sobel0_mult_x_sums_align_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx113_sobel0_mult_x_sums_align_0_and0 = SE_i_arrayidx113_sobel0_mult_x_im0_add_3_V0;
    assign SE_i_arrayidx113_sobel0_mult_x_sums_align_0_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_V0 & SE_i_arrayidx113_sobel0_mult_x_sums_align_0_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x(STALLENABLE,1845)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_consumed0 = (~ (SE_i_arrayidx113_sobel0_mult_x_sums_align_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_consumed1 = (~ (SE_i_arrayidx11_sobel0_mult_x_sums_align_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x(BLACKBOX,538)@114
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    sobel_i_llvm_fpga_ffwd_dest_s_struct_z5pA000000Znnamed_sobel5_sobel0 thei_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x (
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_backStall),
        .in_valid_in(SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_V0),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_valid_out),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x(BITJOIN,1533)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_out_dest_data_out_0_0_0_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x(BITSELECT,1534)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_q[63:0]);

    // i_arrayidx92_sobel0_add_x(ADD,502)@114
    assign i_arrayidx92_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b};
    assign i_arrayidx92_sobel0_add_x_b = {1'b0, i_arrayidx92_sobel0_trunc_sel_x_b};
    assign i_arrayidx92_sobel0_add_x_o = $unsigned(i_arrayidx92_sobel0_add_x_a) + $unsigned(i_arrayidx92_sobel0_add_x_b);
    assign i_arrayidx92_sobel0_add_x_q = i_arrayidx92_sobel0_add_x_o[64:0];

    // i_arrayidx92_sobel0_dupName_0_trunc_sel_x(BITSELECT,519)@114
    assign i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx92_sobel0_add_x_q[63:0];

    // redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx92_sobel0_dupName_0_add_x(ADD,509)@115
    assign i_arrayidx92_sobel0_dupName_0_add_x_a = {1'b0, redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx92_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx92_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx92_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx92_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx92_sobel0_dupName_0_add_x_b);
    assign i_arrayidx92_sobel0_dupName_0_add_x_q = i_arrayidx92_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx92_sobel0_dupName_2_trunc_sel_x(BITSELECT,521)@115
    assign i_arrayidx92_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx92_sobel0_dupName_0_add_x_q[63:0];

    // i_arrayidx6_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1307)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx6_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx6_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,958)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx6_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx6_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1309)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx6_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx6_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,957)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx6_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx6_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,959)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx6_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1308)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx6_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx6_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,955)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx6_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx6_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1310)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx6_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx6_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx6_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,956)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx6_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx6_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,960)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx6_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx6_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx6_sobel0_dupName_0_mult_extender_x(BITJOIN,497)@115
    assign i_arrayidx6_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx6_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx6_sobel0_dupName_1_trunc_sel_x(BITSELECT,500)@115
    assign i_arrayidx6_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx6_sobel0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx6_sobel0_mult_x_im0_shift2(BITSHIFT,1289)@113
    assign i_arrayidx6_sobel0_mult_x_im0_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx6_sobel0_mult_x_im0_shift2_q = i_arrayidx6_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx6_sobel0_mult_x_im0_shift0(BITSHIFT,1287)@113
    assign i_arrayidx6_sobel0_mult_x_im0_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx6_sobel0_mult_x_im0_shift0_q = i_arrayidx6_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx6_sobel0_mult_x_im0_add_1(ADD,1288)@113
    assign i_arrayidx6_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx6_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx6_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx6_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx6_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx6_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx6_sobel0_mult_x_im0_add_1_q = i_arrayidx6_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx6_sobel0_mult_x_im0_add_3(ADD,1290)@113 + 1
    assign i_arrayidx6_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx6_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx6_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx6_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx6_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx6_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx6_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx6_sobel0_mult_x_im0_add_3_q = i_arrayidx6_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx6_sobel0_mult_x_im0_shift4(BITSHIFT,1291)@114
    assign i_arrayidx6_sobel0_mult_x_im0_shift4_qint = { i_arrayidx6_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx6_sobel0_mult_x_im0_shift4_q = i_arrayidx6_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx6_sobel0_mult_x_sums_align_3(BITSHIFT,940)@114
    assign i_arrayidx6_sobel0_mult_x_sums_align_3_qint = { i_arrayidx6_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx6_sobel0_mult_x_sums_align_3_q = i_arrayidx6_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx6_sobel0_mult_x_im6_shift2(BITSHIFT,1299)@113
    assign i_arrayidx6_sobel0_mult_x_im6_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx6_sobel0_mult_x_im6_shift2_q = i_arrayidx6_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx6_sobel0_mult_x_im6_shift0(BITSHIFT,1297)@113
    assign i_arrayidx6_sobel0_mult_x_im6_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx6_sobel0_mult_x_im6_shift0_q = i_arrayidx6_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx6_sobel0_mult_x_im6_add_1(ADD,1298)@113
    assign i_arrayidx6_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx6_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx6_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx6_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx6_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx6_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx6_sobel0_mult_x_im6_add_1_q = i_arrayidx6_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx6_sobel0_mult_x_im6_add_3(ADD,1300)@113 + 1
    assign i_arrayidx6_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx6_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx6_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx6_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx6_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx6_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx6_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx6_sobel0_mult_x_im6_add_3_q = i_arrayidx6_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx6_sobel0_mult_x_im6_shift4(BITSHIFT,1301)@114
    assign i_arrayidx6_sobel0_mult_x_im6_shift4_qint = { i_arrayidx6_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx6_sobel0_mult_x_im6_shift4_q = i_arrayidx6_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx6_sobel0_mult_x_sums_align_2(BITSHIFT,939)@114
    assign i_arrayidx6_sobel0_mult_x_sums_align_2_qint = { i_arrayidx6_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx6_sobel0_mult_x_sums_align_2_q = i_arrayidx6_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx6_sobel0_mult_x_sums_join_4(BITJOIN,941)@114
    assign i_arrayidx6_sobel0_mult_x_sums_join_4_q = {i_arrayidx6_sobel0_mult_x_sums_align_3_q, i_arrayidx6_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx6_sobel0_mult_x_im3_shift2(BITSHIFT,1294)@113
    assign i_arrayidx6_sobel0_mult_x_im3_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx6_sobel0_mult_x_im3_shift2_q = i_arrayidx6_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx6_sobel0_mult_x_im3_shift0(BITSHIFT,1292)@113
    assign i_arrayidx6_sobel0_mult_x_im3_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx6_sobel0_mult_x_im3_shift0_q = i_arrayidx6_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx6_sobel0_mult_x_im3_add_1(ADD,1293)@113
    assign i_arrayidx6_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx6_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx6_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx6_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx6_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx6_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx6_sobel0_mult_x_im3_add_1_q = i_arrayidx6_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx6_sobel0_mult_x_im3_add_3(ADD,1295)@113 + 1
    assign i_arrayidx6_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx6_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx6_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx6_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx6_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx6_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx6_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx6_sobel0_mult_x_im3_add_3_q = i_arrayidx6_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx6_sobel0_mult_x_im3_shift4(BITSHIFT,1296)@114
    assign i_arrayidx6_sobel0_mult_x_im3_shift4_qint = { i_arrayidx6_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx6_sobel0_mult_x_im3_shift4_q = i_arrayidx6_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx6_sobel0_mult_x_sums_align_0(BITSHIFT,937)@114
    assign i_arrayidx6_sobel0_mult_x_sums_align_0_qint = { i_arrayidx6_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx6_sobel0_mult_x_sums_align_0_q = i_arrayidx6_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx6_sobel0_mult_x_im9_shift2(BITSHIFT,1304)@113
    assign i_arrayidx6_sobel0_mult_x_im9_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx6_sobel0_mult_x_im9_shift2_q = i_arrayidx6_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx6_sobel0_mult_x_im9_shift0(BITSHIFT,1302)@113
    assign i_arrayidx6_sobel0_mult_x_im9_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx6_sobel0_mult_x_im9_shift0_q = i_arrayidx6_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx6_sobel0_mult_x_im9_add_1(ADD,1303)@113
    assign i_arrayidx6_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx6_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx6_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx6_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx6_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx6_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx6_sobel0_mult_x_im9_add_1_q = i_arrayidx6_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx6_sobel0_mult_x_im9_add_3(ADD,1305)@113 + 1
    assign i_arrayidx6_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx6_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx6_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx6_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx6_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx6_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx6_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx6_sobel0_mult_x_im9_add_3_q = i_arrayidx6_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx6_sobel0_mult_x_im9_shift4(BITSHIFT,1306)@114
    assign i_arrayidx6_sobel0_mult_x_im9_shift4_qint = { i_arrayidx6_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx6_sobel0_mult_x_im9_shift4_q = i_arrayidx6_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx6_sobel0_mult_x_sums_join_1(BITJOIN,938)@114
    assign i_arrayidx6_sobel0_mult_x_sums_join_1_q = {i_arrayidx6_sobel0_mult_x_sums_align_0_q, i_arrayidx6_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx6_sobel0_mult_x_sums_result_add_0_0(ADD,942)@114
    assign i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx6_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx6_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx6_sobel0_mult_extender_x(BITJOIN,494)@114
    assign i_arrayidx6_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx6_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx6_sobel0_trunc_sel_x(BITSELECT,496)@114
    assign i_arrayidx6_sobel0_trunc_sel_x_b = i_arrayidx6_sobel0_mult_extender_x_q[63:0];

    // i_arrayidx6_sobel0_add_x(ADD,482)@114
    assign i_arrayidx6_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b};
    assign i_arrayidx6_sobel0_add_x_b = {1'b0, i_arrayidx6_sobel0_trunc_sel_x_b};
    assign i_arrayidx6_sobel0_add_x_o = $unsigned(i_arrayidx6_sobel0_add_x_a) + $unsigned(i_arrayidx6_sobel0_add_x_b);
    assign i_arrayidx6_sobel0_add_x_q = i_arrayidx6_sobel0_add_x_o[64:0];

    // i_arrayidx6_sobel0_dupName_0_trunc_sel_x(BITSELECT,499)@114
    assign i_arrayidx6_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx6_sobel0_add_x_q[63:0];

    // redist14_i_arrayidx6_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx6_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist14_i_arrayidx6_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx6_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx6_sobel0_dupName_0_add_x(ADD,489)@115
    assign i_arrayidx6_sobel0_dupName_0_add_x_a = {1'b0, redist14_i_arrayidx6_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx6_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx6_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx6_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx6_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx6_sobel0_dupName_0_add_x_b);
    assign i_arrayidx6_sobel0_dupName_0_add_x_q = i_arrayidx6_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx6_sobel0_dupName_2_trunc_sel_x(BITSELECT,501)@115
    assign i_arrayidx6_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx6_sobel0_dupName_0_add_x_q[63:0];

    // i_arrayidx24_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1235)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx24_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx24_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,850)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx24_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx24_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1237)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx24_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx24_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,849)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx24_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx24_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,851)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx24_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1236)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx24_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx24_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,847)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx24_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx24_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1238)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx24_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx24_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx24_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,848)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx24_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx24_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,852)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx24_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx24_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx24_sobel0_dupName_0_mult_extender_x(BITJOIN,437)@115
    assign i_arrayidx24_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx24_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx24_sobel0_dupName_1_trunc_sel_x(BITSELECT,440)@115
    assign i_arrayidx24_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx24_sobel0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx24_sobel0_mult_x_im0_shift2(BITSHIFT,1217)@113
    assign i_arrayidx24_sobel0_mult_x_im0_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx24_sobel0_mult_x_im0_shift2_q = i_arrayidx24_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx24_sobel0_mult_x_im0_shift0(BITSHIFT,1215)@113
    assign i_arrayidx24_sobel0_mult_x_im0_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx24_sobel0_mult_x_im0_shift0_q = i_arrayidx24_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx24_sobel0_mult_x_im0_add_1(ADD,1216)@113
    assign i_arrayidx24_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx24_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx24_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx24_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx24_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx24_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx24_sobel0_mult_x_im0_add_1_q = i_arrayidx24_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx24_sobel0_mult_x_im0_add_3(ADD,1218)@113 + 1
    assign i_arrayidx24_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx24_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx24_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx24_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx24_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx24_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx24_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx24_sobel0_mult_x_im0_add_3_q = i_arrayidx24_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx24_sobel0_mult_x_im0_shift4(BITSHIFT,1219)@114
    assign i_arrayidx24_sobel0_mult_x_im0_shift4_qint = { i_arrayidx24_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx24_sobel0_mult_x_im0_shift4_q = i_arrayidx24_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx24_sobel0_mult_x_sums_align_3(BITSHIFT,832)@114
    assign i_arrayidx24_sobel0_mult_x_sums_align_3_qint = { i_arrayidx24_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx24_sobel0_mult_x_sums_align_3_q = i_arrayidx24_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx24_sobel0_mult_x_im6_shift2(BITSHIFT,1227)@113
    assign i_arrayidx24_sobel0_mult_x_im6_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx24_sobel0_mult_x_im6_shift2_q = i_arrayidx24_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx24_sobel0_mult_x_im6_shift0(BITSHIFT,1225)@113
    assign i_arrayidx24_sobel0_mult_x_im6_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx24_sobel0_mult_x_im6_shift0_q = i_arrayidx24_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx24_sobel0_mult_x_im6_add_1(ADD,1226)@113
    assign i_arrayidx24_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx24_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx24_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx24_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx24_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx24_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx24_sobel0_mult_x_im6_add_1_q = i_arrayidx24_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx24_sobel0_mult_x_im6_add_3(ADD,1228)@113 + 1
    assign i_arrayidx24_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx24_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx24_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx24_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx24_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx24_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx24_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx24_sobel0_mult_x_im6_add_3_q = i_arrayidx24_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx24_sobel0_mult_x_im6_shift4(BITSHIFT,1229)@114
    assign i_arrayidx24_sobel0_mult_x_im6_shift4_qint = { i_arrayidx24_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx24_sobel0_mult_x_im6_shift4_q = i_arrayidx24_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx24_sobel0_mult_x_sums_align_2(BITSHIFT,831)@114
    assign i_arrayidx24_sobel0_mult_x_sums_align_2_qint = { i_arrayidx24_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx24_sobel0_mult_x_sums_align_2_q = i_arrayidx24_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx24_sobel0_mult_x_sums_join_4(BITJOIN,833)@114
    assign i_arrayidx24_sobel0_mult_x_sums_join_4_q = {i_arrayidx24_sobel0_mult_x_sums_align_3_q, i_arrayidx24_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx24_sobel0_mult_x_im3_shift2(BITSHIFT,1222)@113
    assign i_arrayidx24_sobel0_mult_x_im3_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx24_sobel0_mult_x_im3_shift2_q = i_arrayidx24_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx24_sobel0_mult_x_im3_shift0(BITSHIFT,1220)@113
    assign i_arrayidx24_sobel0_mult_x_im3_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx24_sobel0_mult_x_im3_shift0_q = i_arrayidx24_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx24_sobel0_mult_x_im3_add_1(ADD,1221)@113
    assign i_arrayidx24_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx24_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx24_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx24_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx24_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx24_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx24_sobel0_mult_x_im3_add_1_q = i_arrayidx24_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx24_sobel0_mult_x_im3_add_3(ADD,1223)@113 + 1
    assign i_arrayidx24_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx24_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx24_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx24_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx24_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx24_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx24_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx24_sobel0_mult_x_im3_add_3_q = i_arrayidx24_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx24_sobel0_mult_x_im3_shift4(BITSHIFT,1224)@114
    assign i_arrayidx24_sobel0_mult_x_im3_shift4_qint = { i_arrayidx24_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx24_sobel0_mult_x_im3_shift4_q = i_arrayidx24_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx24_sobel0_mult_x_sums_align_0(BITSHIFT,829)@114
    assign i_arrayidx24_sobel0_mult_x_sums_align_0_qint = { i_arrayidx24_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx24_sobel0_mult_x_sums_align_0_q = i_arrayidx24_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx24_sobel0_mult_x_im9_shift2(BITSHIFT,1232)@113
    assign i_arrayidx24_sobel0_mult_x_im9_shift2_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx24_sobel0_mult_x_im9_shift2_q = i_arrayidx24_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx24_sobel0_mult_x_im9_shift0(BITSHIFT,1230)@113
    assign i_arrayidx24_sobel0_mult_x_im9_shift0_qint = { i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx24_sobel0_mult_x_im9_shift0_q = i_arrayidx24_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx24_sobel0_mult_x_im9_add_1(ADD,1231)@113
    assign i_arrayidx24_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx24_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx24_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx24_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx24_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx24_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx24_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx24_sobel0_mult_x_im9_add_1_q = i_arrayidx24_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx24_sobel0_mult_x_im9_add_3(ADD,1233)@113 + 1
    assign i_arrayidx24_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx24_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx24_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx24_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx24_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx24_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx24_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx24_sobel0_mult_x_im9_add_3_q = i_arrayidx24_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx24_sobel0_mult_x_im9_shift4(BITSHIFT,1234)@114
    assign i_arrayidx24_sobel0_mult_x_im9_shift4_qint = { i_arrayidx24_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx24_sobel0_mult_x_im9_shift4_q = i_arrayidx24_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx24_sobel0_mult_x_sums_join_1(BITJOIN,830)@114
    assign i_arrayidx24_sobel0_mult_x_sums_join_1_q = {i_arrayidx24_sobel0_mult_x_sums_align_0_q, i_arrayidx24_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx24_sobel0_mult_x_sums_result_add_0_0(ADD,834)@114
    assign i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx24_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx24_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx24_sobel0_mult_extender_x(BITJOIN,434)@114
    assign i_arrayidx24_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx24_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx24_sobel0_trunc_sel_x(BITSELECT,436)@114
    assign i_arrayidx24_sobel0_trunc_sel_x_b = i_arrayidx24_sobel0_mult_extender_x_q[63:0];

    // i_arrayidx24_sobel0_add_x(ADD,422)@114
    assign i_arrayidx24_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b};
    assign i_arrayidx24_sobel0_add_x_b = {1'b0, i_arrayidx24_sobel0_trunc_sel_x_b};
    assign i_arrayidx24_sobel0_add_x_o = $unsigned(i_arrayidx24_sobel0_add_x_a) + $unsigned(i_arrayidx24_sobel0_add_x_b);
    assign i_arrayidx24_sobel0_add_x_q = i_arrayidx24_sobel0_add_x_o[64:0];

    // i_arrayidx24_sobel0_dupName_0_trunc_sel_x(BITSELECT,439)@114
    assign i_arrayidx24_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx24_sobel0_add_x_q[63:0];

    // redist17_i_arrayidx24_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx24_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist17_i_arrayidx24_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx24_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx24_sobel0_dupName_0_add_x(ADD,429)@115
    assign i_arrayidx24_sobel0_dupName_0_add_x_a = {1'b0, redist17_i_arrayidx24_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx24_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx24_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx24_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx24_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx24_sobel0_dupName_0_add_x_b);
    assign i_arrayidx24_sobel0_dupName_0_add_x_q = i_arrayidx24_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx24_sobel0_dupName_2_trunc_sel_x(BITSELECT,441)@115
    assign i_arrayidx24_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx24_sobel0_dupName_0_add_x_q[63:0];

    // i_arrayidx30_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1259)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx30_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx30_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,886)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx30_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx30_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1261)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx30_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx30_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,885)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx30_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx30_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,887)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx30_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1260)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx30_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx30_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,883)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx30_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx30_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1262)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx24_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx30_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx30_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx30_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,884)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx30_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx30_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,888)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx30_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx30_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx30_sobel0_dupName_0_mult_extender_x(BITJOIN,457)@115
    assign i_arrayidx30_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx30_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx30_sobel0_dupName_1_trunc_sel_x(BITSELECT,460)@115
    assign i_arrayidx30_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx30_sobel0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx30_sobel0_mult_x_im0_shift2(BITSHIFT,1241)@113
    assign i_arrayidx30_sobel0_mult_x_im0_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx30_sobel0_mult_x_im0_shift2_q = i_arrayidx30_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx30_sobel0_mult_x_im0_shift0(BITSHIFT,1239)@113
    assign i_arrayidx30_sobel0_mult_x_im0_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx30_sobel0_mult_x_im0_shift0_q = i_arrayidx30_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx30_sobel0_mult_x_im0_add_1(ADD,1240)@113
    assign i_arrayidx30_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx30_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx30_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx30_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx30_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx30_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx30_sobel0_mult_x_im0_add_1_q = i_arrayidx30_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx30_sobel0_mult_x_im0_add_3(ADD,1242)@113 + 1
    assign i_arrayidx30_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx30_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx30_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx30_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx30_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx30_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx30_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx30_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx30_sobel0_mult_x_im0_add_3_q = i_arrayidx30_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx30_sobel0_mult_x_im0_shift4(BITSHIFT,1243)@114
    assign i_arrayidx30_sobel0_mult_x_im0_shift4_qint = { i_arrayidx30_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx30_sobel0_mult_x_im0_shift4_q = i_arrayidx30_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx30_sobel0_mult_x_sums_align_3(BITSHIFT,868)@114
    assign i_arrayidx30_sobel0_mult_x_sums_align_3_qint = { i_arrayidx30_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx30_sobel0_mult_x_sums_align_3_q = i_arrayidx30_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx30_sobel0_mult_x_im6_shift2(BITSHIFT,1251)@113
    assign i_arrayidx30_sobel0_mult_x_im6_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx30_sobel0_mult_x_im6_shift2_q = i_arrayidx30_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx30_sobel0_mult_x_im6_shift0(BITSHIFT,1249)@113
    assign i_arrayidx30_sobel0_mult_x_im6_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx30_sobel0_mult_x_im6_shift0_q = i_arrayidx30_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx30_sobel0_mult_x_im6_add_1(ADD,1250)@113
    assign i_arrayidx30_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx30_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx30_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx30_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx30_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx30_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx30_sobel0_mult_x_im6_add_1_q = i_arrayidx30_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx30_sobel0_mult_x_im6_add_3(ADD,1252)@113 + 1
    assign i_arrayidx30_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx30_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx30_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx30_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx30_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx30_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx30_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx30_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx30_sobel0_mult_x_im6_add_3_q = i_arrayidx30_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx30_sobel0_mult_x_im6_shift4(BITSHIFT,1253)@114
    assign i_arrayidx30_sobel0_mult_x_im6_shift4_qint = { i_arrayidx30_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx30_sobel0_mult_x_im6_shift4_q = i_arrayidx30_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx30_sobel0_mult_x_sums_align_2(BITSHIFT,867)@114
    assign i_arrayidx30_sobel0_mult_x_sums_align_2_qint = { i_arrayidx30_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx30_sobel0_mult_x_sums_align_2_q = i_arrayidx30_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx30_sobel0_mult_x_sums_join_4(BITJOIN,869)@114
    assign i_arrayidx30_sobel0_mult_x_sums_join_4_q = {i_arrayidx30_sobel0_mult_x_sums_align_3_q, i_arrayidx30_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx30_sobel0_mult_x_im3_shift2(BITSHIFT,1246)@113
    assign i_arrayidx30_sobel0_mult_x_im3_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx30_sobel0_mult_x_im3_shift2_q = i_arrayidx30_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx30_sobel0_mult_x_im3_shift0(BITSHIFT,1244)@113
    assign i_arrayidx30_sobel0_mult_x_im3_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx30_sobel0_mult_x_im3_shift0_q = i_arrayidx30_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx30_sobel0_mult_x_im3_add_1(ADD,1245)@113
    assign i_arrayidx30_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx30_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx30_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx30_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx30_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx30_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx30_sobel0_mult_x_im3_add_1_q = i_arrayidx30_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx30_sobel0_mult_x_im3_add_3(ADD,1247)@113 + 1
    assign i_arrayidx30_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx30_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx30_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx30_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx30_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx30_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx30_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx30_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx30_sobel0_mult_x_im3_add_3_q = i_arrayidx30_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx30_sobel0_mult_x_im3_shift4(BITSHIFT,1248)@114
    assign i_arrayidx30_sobel0_mult_x_im3_shift4_qint = { i_arrayidx30_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx30_sobel0_mult_x_im3_shift4_q = i_arrayidx30_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx30_sobel0_mult_x_sums_align_0(BITSHIFT,865)@114
    assign i_arrayidx30_sobel0_mult_x_sums_align_0_qint = { i_arrayidx30_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx30_sobel0_mult_x_sums_align_0_q = i_arrayidx30_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx30_sobel0_mult_x_im9_shift2(BITSHIFT,1256)@113
    assign i_arrayidx30_sobel0_mult_x_im9_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx30_sobel0_mult_x_im9_shift2_q = i_arrayidx30_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx30_sobel0_mult_x_im9_shift0(BITSHIFT,1254)@113
    assign i_arrayidx30_sobel0_mult_x_im9_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx30_sobel0_mult_x_im9_shift0_q = i_arrayidx30_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx30_sobel0_mult_x_im9_add_1(ADD,1255)@113
    assign i_arrayidx30_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx30_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx30_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx30_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx30_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx30_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx30_sobel0_mult_x_im9_add_1_q = i_arrayidx30_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx30_sobel0_mult_x_im9_add_3(ADD,1257)@113 + 1
    assign i_arrayidx30_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx30_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx30_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx30_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx30_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx30_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx30_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx30_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx30_sobel0_mult_x_im9_add_3_q = i_arrayidx30_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx30_sobel0_mult_x_im9_shift4(BITSHIFT,1258)@114
    assign i_arrayidx30_sobel0_mult_x_im9_shift4_qint = { i_arrayidx30_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx30_sobel0_mult_x_im9_shift4_q = i_arrayidx30_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx30_sobel0_mult_x_sums_join_1(BITJOIN,866)@114
    assign i_arrayidx30_sobel0_mult_x_sums_join_1_q = {i_arrayidx30_sobel0_mult_x_sums_align_0_q, i_arrayidx30_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx30_sobel0_mult_x_sums_result_add_0_0(ADD,870)@114
    assign i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx30_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx30_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx30_sobel0_mult_extender_x(BITJOIN,454)@114
    assign i_arrayidx30_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx30_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx30_sobel0_trunc_sel_x(BITSELECT,456)@114
    assign i_arrayidx30_sobel0_trunc_sel_x_b = i_arrayidx30_sobel0_mult_extender_x_q[63:0];

    // i_arrayidx30_sobel0_add_x(ADD,442)@114
    assign i_arrayidx30_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b};
    assign i_arrayidx30_sobel0_add_x_b = {1'b0, i_arrayidx30_sobel0_trunc_sel_x_b};
    assign i_arrayidx30_sobel0_add_x_o = $unsigned(i_arrayidx30_sobel0_add_x_a) + $unsigned(i_arrayidx30_sobel0_add_x_b);
    assign i_arrayidx30_sobel0_add_x_q = i_arrayidx30_sobel0_add_x_o[64:0];

    // i_arrayidx30_sobel0_dupName_0_trunc_sel_x(BITSELECT,459)@114
    assign i_arrayidx30_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx30_sobel0_add_x_q[63:0];

    // redist16_i_arrayidx30_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx30_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist16_i_arrayidx30_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx30_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx30_sobel0_dupName_0_add_x(ADD,449)@115
    assign i_arrayidx30_sobel0_dupName_0_add_x_a = {1'b0, redist16_i_arrayidx30_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx30_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx30_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx30_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx30_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx30_sobel0_dupName_0_add_x_b);
    assign i_arrayidx30_sobel0_dupName_0_add_x_q = i_arrayidx30_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx30_sobel0_dupName_2_trunc_sel_x(BITSELECT,461)@115
    assign i_arrayidx30_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx30_sobel0_dupName_0_add_x_q[63:0];

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30(STALLENABLE,1657)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_backStall = i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11(STALLENABLE,1638)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_consumed1 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_wireValid = i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30(STALLENABLE,1658)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_wireValid = i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30(BLACKBOX,120)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    sobel_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_feedback_stall_out_19),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo(BITJOIN,1568)
    assign bubble_join_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_q = redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_data_out;

    // bubble_select_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo(BITSELECT,1569)
    assign bubble_select_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_b = $unsigned(bubble_join_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11(BLACKBOX,110)@114
    // in in_stall_in@20000000
    // out out_data_out@115
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@115
    sobel_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11 (
        .in_data_in(bubble_select_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_b),
        .in_dir(redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_backStall),
        .in_valid_in(SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11(BITJOIN,1500)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_q = i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11(BITSELECT,1501)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5(BITJOIN,1503)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_q = i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5(BITSELECT,1504)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_q[0:0]);

    // i_memdep_phi1_or_sobel31(LOGICAL,130)@115
    assign i_memdep_phi1_or_sobel31_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_b;

    // i_arrayidx11_sobel0_dupName_0_mult_x_im0_shift0(BITSHIFT,1163)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx11_sobel0_dupName_0_mult_x_im0_shift0_q = i_arrayidx11_sobel0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_3(BITSHIFT,742)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx11_sobel0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_3_q = i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx11_sobel0_dupName_0_mult_x_im6_shift0(BITSHIFT,1165)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx11_sobel0_dupName_0_mult_x_im6_shift0_q = i_arrayidx11_sobel0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_2(BITSHIFT,741)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx11_sobel0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_2_q = i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx11_sobel0_dupName_0_mult_x_sums_join_4(BITJOIN,743)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_3_q, i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx11_sobel0_dupName_0_mult_x_im3_shift0(BITSHIFT,1164)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx11_sobel0_dupName_0_mult_x_im3_shift0_q = i_arrayidx11_sobel0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_0(BITSHIFT,739)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx11_sobel0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_0_q = i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx11_sobel0_dupName_0_mult_x_im9_shift0(BITSHIFT,1166)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx11_sobel0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx11_sobel0_dupName_0_mult_x_im9_shift0_q = i_arrayidx11_sobel0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx11_sobel0_dupName_0_mult_x_sums_join_1(BITJOIN,740)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx11_sobel0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx11_sobel0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0(ADD,744)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx11_sobel0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx11_sobel0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx11_sobel0_dupName_0_mult_extender_x(BITJOIN,377)@115
    assign i_arrayidx11_sobel0_dupName_0_mult_extender_x_q = {i_arrayidx113_sobel0_dupName_0_mult_multconst_x_q, i_arrayidx11_sobel0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx11_sobel0_dupName_1_trunc_sel_x(BITSELECT,380)@115
    assign i_arrayidx11_sobel0_dupName_1_trunc_sel_x_b = i_arrayidx11_sobel0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx11_sobel0_mult_x_im0_shift2(BITSHIFT,1145)@113
    assign i_arrayidx11_sobel0_mult_x_im0_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx11_sobel0_mult_x_im0_shift2_q = i_arrayidx11_sobel0_mult_x_im0_shift2_qint[13:0];

    // i_arrayidx11_sobel0_mult_x_im0_shift0(BITSHIFT,1143)@113
    assign i_arrayidx11_sobel0_mult_x_im0_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx11_sobel0_mult_x_im0_shift0_q = i_arrayidx11_sobel0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx11_sobel0_mult_x_im0_add_1(ADD,1144)@113
    assign i_arrayidx11_sobel0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx11_sobel0_mult_x_im0_add_1_b = {1'b0, i_arrayidx11_sobel0_mult_x_im0_shift0_q};
    assign i_arrayidx11_sobel0_mult_x_im0_add_1_o = $unsigned(i_arrayidx11_sobel0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx11_sobel0_mult_x_im0_add_1_b);
    assign i_arrayidx11_sobel0_mult_x_im0_add_1_q = i_arrayidx11_sobel0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx11_sobel0_mult_x_im0_add_3(ADD,1146)@113 + 1
    assign i_arrayidx11_sobel0_mult_x_im0_add_3_a = {1'b0, i_arrayidx11_sobel0_mult_x_im0_add_1_q};
    assign i_arrayidx11_sobel0_mult_x_im0_add_3_b = {1'b0, i_arrayidx11_sobel0_mult_x_im0_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx11_sobel0_mult_x_im0_add_3_o <= 15'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx11_sobel0_mult_x_im0_add_3_o <= $unsigned(i_arrayidx11_sobel0_mult_x_im0_add_3_a) + $unsigned(i_arrayidx11_sobel0_mult_x_im0_add_3_b);
        end
    end
    assign i_arrayidx11_sobel0_mult_x_im0_add_3_q = i_arrayidx11_sobel0_mult_x_im0_add_3_o[14:0];

    // i_arrayidx11_sobel0_mult_x_im0_shift4(BITSHIFT,1147)@114
    assign i_arrayidx11_sobel0_mult_x_im0_shift4_qint = { i_arrayidx11_sobel0_mult_x_im0_add_3_q, 4'b0000 };
    assign i_arrayidx11_sobel0_mult_x_im0_shift4_q = i_arrayidx11_sobel0_mult_x_im0_shift4_qint[18:0];

    // i_arrayidx11_sobel0_mult_x_sums_align_3(BITSHIFT,724)@114
    assign i_arrayidx11_sobel0_mult_x_sums_align_3_qint = { i_arrayidx11_sobel0_mult_x_im0_shift4_q, 9'b000000000 };
    assign i_arrayidx11_sobel0_mult_x_sums_align_3_q = i_arrayidx11_sobel0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx11_sobel0_mult_x_im6_shift2(BITSHIFT,1155)@113
    assign i_arrayidx11_sobel0_mult_x_im6_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx11_sobel0_mult_x_im6_shift2_q = i_arrayidx11_sobel0_mult_x_im6_shift2_qint[21:0];

    // i_arrayidx11_sobel0_mult_x_im6_shift0(BITSHIFT,1153)@113
    assign i_arrayidx11_sobel0_mult_x_im6_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx11_sobel0_mult_x_im6_shift0_q = i_arrayidx11_sobel0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx11_sobel0_mult_x_im6_add_1(ADD,1154)@113
    assign i_arrayidx11_sobel0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx11_sobel0_mult_x_im6_add_1_b = {1'b0, i_arrayidx11_sobel0_mult_x_im6_shift0_q};
    assign i_arrayidx11_sobel0_mult_x_im6_add_1_o = $unsigned(i_arrayidx11_sobel0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx11_sobel0_mult_x_im6_add_1_b);
    assign i_arrayidx11_sobel0_mult_x_im6_add_1_q = i_arrayidx11_sobel0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx11_sobel0_mult_x_im6_add_3(ADD,1156)@113 + 1
    assign i_arrayidx11_sobel0_mult_x_im6_add_3_a = {1'b0, i_arrayidx11_sobel0_mult_x_im6_add_1_q};
    assign i_arrayidx11_sobel0_mult_x_im6_add_3_b = {1'b0, i_arrayidx11_sobel0_mult_x_im6_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx11_sobel0_mult_x_im6_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx11_sobel0_mult_x_im6_add_3_o <= $unsigned(i_arrayidx11_sobel0_mult_x_im6_add_3_a) + $unsigned(i_arrayidx11_sobel0_mult_x_im6_add_3_b);
        end
    end
    assign i_arrayidx11_sobel0_mult_x_im6_add_3_q = i_arrayidx11_sobel0_mult_x_im6_add_3_o[22:0];

    // i_arrayidx11_sobel0_mult_x_im6_shift4(BITSHIFT,1157)@114
    assign i_arrayidx11_sobel0_mult_x_im6_shift4_qint = { i_arrayidx11_sobel0_mult_x_im6_add_3_q, 4'b0000 };
    assign i_arrayidx11_sobel0_mult_x_im6_shift4_q = i_arrayidx11_sobel0_mult_x_im6_shift4_qint[26:0];

    // i_arrayidx11_sobel0_mult_x_sums_align_2(BITSHIFT,723)@114
    assign i_arrayidx11_sobel0_mult_x_sums_align_2_qint = { i_arrayidx11_sobel0_mult_x_im6_shift4_q, 18'b000000000000000000 };
    assign i_arrayidx11_sobel0_mult_x_sums_align_2_q = i_arrayidx11_sobel0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx11_sobel0_mult_x_sums_join_4(BITJOIN,725)@114
    assign i_arrayidx11_sobel0_mult_x_sums_join_4_q = {i_arrayidx11_sobel0_mult_x_sums_align_3_q, i_arrayidx11_sobel0_mult_x_sums_align_2_q};

    // i_arrayidx11_sobel0_mult_x_im3_shift2(BITSHIFT,1150)@113
    assign i_arrayidx11_sobel0_mult_x_im3_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx11_sobel0_mult_x_im3_shift2_q = i_arrayidx11_sobel0_mult_x_im3_shift2_qint[21:0];

    // i_arrayidx11_sobel0_mult_x_im3_shift0(BITSHIFT,1148)@113
    assign i_arrayidx11_sobel0_mult_x_im3_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx11_sobel0_mult_x_im3_shift0_q = i_arrayidx11_sobel0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx11_sobel0_mult_x_im3_add_1(ADD,1149)@113
    assign i_arrayidx11_sobel0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx11_sobel0_mult_x_im3_add_1_b = {1'b0, i_arrayidx11_sobel0_mult_x_im3_shift0_q};
    assign i_arrayidx11_sobel0_mult_x_im3_add_1_o = $unsigned(i_arrayidx11_sobel0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx11_sobel0_mult_x_im3_add_1_b);
    assign i_arrayidx11_sobel0_mult_x_im3_add_1_q = i_arrayidx11_sobel0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx11_sobel0_mult_x_im3_add_3(ADD,1151)@113 + 1
    assign i_arrayidx11_sobel0_mult_x_im3_add_3_a = {1'b0, i_arrayidx11_sobel0_mult_x_im3_add_1_q};
    assign i_arrayidx11_sobel0_mult_x_im3_add_3_b = {1'b0, i_arrayidx11_sobel0_mult_x_im3_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx11_sobel0_mult_x_im3_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx11_sobel0_mult_x_im3_add_3_o <= $unsigned(i_arrayidx11_sobel0_mult_x_im3_add_3_a) + $unsigned(i_arrayidx11_sobel0_mult_x_im3_add_3_b);
        end
    end
    assign i_arrayidx11_sobel0_mult_x_im3_add_3_q = i_arrayidx11_sobel0_mult_x_im3_add_3_o[22:0];

    // i_arrayidx11_sobel0_mult_x_im3_shift4(BITSHIFT,1152)@114
    assign i_arrayidx11_sobel0_mult_x_im3_shift4_qint = { i_arrayidx11_sobel0_mult_x_im3_add_3_q, 4'b0000 };
    assign i_arrayidx11_sobel0_mult_x_im3_shift4_q = i_arrayidx11_sobel0_mult_x_im3_shift4_qint[26:0];

    // i_arrayidx11_sobel0_mult_x_sums_align_0(BITSHIFT,721)@114
    assign i_arrayidx11_sobel0_mult_x_sums_align_0_qint = { i_arrayidx11_sobel0_mult_x_im3_shift4_q, 9'b000000000 };
    assign i_arrayidx11_sobel0_mult_x_sums_align_0_q = i_arrayidx11_sobel0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx11_sobel0_mult_x_im9_shift2(BITSHIFT,1160)@113
    assign i_arrayidx11_sobel0_mult_x_im9_shift2_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx11_sobel0_mult_x_im9_shift2_q = i_arrayidx11_sobel0_mult_x_im9_shift2_qint[21:0];

    // i_arrayidx11_sobel0_mult_x_im9_shift0(BITSHIFT,1158)@113
    assign i_arrayidx11_sobel0_mult_x_im9_shift0_qint = { i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx11_sobel0_mult_x_im9_shift0_q = i_arrayidx11_sobel0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx11_sobel0_mult_x_im9_add_1(ADD,1159)@113
    assign i_arrayidx11_sobel0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx11_sobel0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx11_sobel0_mult_x_im9_add_1_b = {1'b0, i_arrayidx11_sobel0_mult_x_im9_shift0_q};
    assign i_arrayidx11_sobel0_mult_x_im9_add_1_o = $unsigned(i_arrayidx11_sobel0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx11_sobel0_mult_x_im9_add_1_b);
    assign i_arrayidx11_sobel0_mult_x_im9_add_1_q = i_arrayidx11_sobel0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx11_sobel0_mult_x_im9_add_3(ADD,1161)@113 + 1
    assign i_arrayidx11_sobel0_mult_x_im9_add_3_a = {1'b0, i_arrayidx11_sobel0_mult_x_im9_add_1_q};
    assign i_arrayidx11_sobel0_mult_x_im9_add_3_b = {1'b0, i_arrayidx11_sobel0_mult_x_im9_shift2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx11_sobel0_mult_x_im9_add_3_o <= 23'b0;
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            i_arrayidx11_sobel0_mult_x_im9_add_3_o <= $unsigned(i_arrayidx11_sobel0_mult_x_im9_add_3_a) + $unsigned(i_arrayidx11_sobel0_mult_x_im9_add_3_b);
        end
    end
    assign i_arrayidx11_sobel0_mult_x_im9_add_3_q = i_arrayidx11_sobel0_mult_x_im9_add_3_o[22:0];

    // i_arrayidx11_sobel0_mult_x_im9_shift4(BITSHIFT,1162)@114
    assign i_arrayidx11_sobel0_mult_x_im9_shift4_qint = { i_arrayidx11_sobel0_mult_x_im9_add_3_q, 4'b0000 };
    assign i_arrayidx11_sobel0_mult_x_im9_shift4_q = i_arrayidx11_sobel0_mult_x_im9_shift4_qint[26:0];

    // i_arrayidx11_sobel0_mult_x_sums_join_1(BITJOIN,722)@114
    assign i_arrayidx11_sobel0_mult_x_sums_join_1_q = {i_arrayidx11_sobel0_mult_x_sums_align_0_q, i_arrayidx11_sobel0_mult_x_im9_shift4_q};

    // i_arrayidx11_sobel0_mult_x_sums_result_add_0_0(ADD,726)@114
    assign i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx11_sobel0_mult_x_sums_join_1_q};
    assign i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx11_sobel0_mult_x_sums_join_4_q};
    assign i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_q = i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx11_sobel0_mult_extender_x(BITJOIN,374)@114
    assign i_arrayidx11_sobel0_mult_extender_x_q = {i_arrayidx113_sobel0_mult_multconst_x_q, i_arrayidx11_sobel0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx11_sobel0_trunc_sel_x(BITSELECT,376)@114
    assign i_arrayidx11_sobel0_trunc_sel_x_b = i_arrayidx11_sobel0_mult_extender_x_q[63:0];

    // i_arrayidx11_sobel0_add_x(ADD,362)@114
    assign i_arrayidx11_sobel0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_b};
    assign i_arrayidx11_sobel0_add_x_b = {1'b0, i_arrayidx11_sobel0_trunc_sel_x_b};
    assign i_arrayidx11_sobel0_add_x_o = $unsigned(i_arrayidx11_sobel0_add_x_a) + $unsigned(i_arrayidx11_sobel0_add_x_b);
    assign i_arrayidx11_sobel0_add_x_q = i_arrayidx11_sobel0_add_x_o[64:0];

    // i_arrayidx11_sobel0_dupName_0_trunc_sel_x(BITSELECT,379)@114
    assign i_arrayidx11_sobel0_dupName_0_trunc_sel_x_b = i_arrayidx11_sobel0_add_x_q[63:0];

    // redist21_i_arrayidx11_sobel0_dupName_0_trunc_sel_x_b_1_0(REG,1429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx11_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist21_i_arrayidx11_sobel0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx11_sobel0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx11_sobel0_dupName_0_add_x(ADD,369)@115
    assign i_arrayidx11_sobel0_dupName_0_add_x_a = {1'b0, redist21_i_arrayidx11_sobel0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx11_sobel0_dupName_0_add_x_b = {1'b0, i_arrayidx11_sobel0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx11_sobel0_dupName_0_add_x_o = $unsigned(i_arrayidx11_sobel0_dupName_0_add_x_a) + $unsigned(i_arrayidx11_sobel0_dupName_0_add_x_b);
    assign i_arrayidx11_sobel0_dupName_0_add_x_q = i_arrayidx11_sobel0_dupName_0_add_x_o[64:0];

    // i_arrayidx11_sobel0_dupName_2_trunc_sel_x(BITSELECT,381)@115
    assign i_arrayidx11_sobel0_dupName_2_trunc_sel_x_b = i_arrayidx11_sobel0_dupName_0_add_x_q[63:0];

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5(STALLENABLE,1640)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_consumed0 = (~ (SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_consumed1 = (~ (SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_V1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_and0;

    // SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,2280)
    // Valid signal propagation
    assign SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall & SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_i_arrayidx11_sobel0_mult_x_sums_align_0_V0;
    // Backward Stall generation
    assign SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx11_sobel0_dupName_0_add_x(STALLREG,2508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid <= 1'b0;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data1 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data2 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data3 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data4 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data5 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data6 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data7 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data8 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data9 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data10 <= 1'bx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data11 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data12 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data13 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data14 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid <= SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall & (SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid | SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_i_valid);

            if (SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data0 <= i_arrayidx11_sobel0_dupName_2_trunc_sel_x_b;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data1 <= i_memdep_phi1_or_sobel31_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data2 <= i_memdep_phi1_or_sobel31_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data3 <= i_memdep_phi1_or_sobel31_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data4 <= i_memdep_phi1_or_sobel31_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data5 <= i_memdep_phi1_or_sobel31_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data6 <= i_xor_sobel32_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data7 <= i_xor_sobel32_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data8 <= i_xor_sobel32_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data9 <= i_xor_sobel32_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data10 <= i_xor_sobel32_q;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data11 <= i_arrayidx30_sobel0_dupName_2_trunc_sel_x_b;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data12 <= i_arrayidx24_sobel0_dupName_2_trunc_sel_x_b;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data13 <= i_arrayidx6_sobel0_dupName_2_trunc_sel_x_b;
                SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data14 <= i_arrayidx92_sobel0_dupName_2_trunc_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and0 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V2;
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and1 = SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_V0 & SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and0;
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_V1 & SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and1;
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_i_valid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V4 & SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_and2;
    // Stall signal propagation
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid | ~ (SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_i_valid);

    // Valid
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_V = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid : SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_i_valid;

    // Data0
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D0 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data0 : i_arrayidx11_sobel0_dupName_2_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D1 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data1 : i_memdep_phi1_or_sobel31_q;
    // Data2
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D2 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data2 : i_memdep_phi1_or_sobel31_q;
    // Data3
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D3 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data3 : i_memdep_phi1_or_sobel31_q;
    // Data4
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D4 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data4 : i_memdep_phi1_or_sobel31_q;
    // Data5
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D5 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data5 : i_memdep_phi1_or_sobel31_q;
    // Data6
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D6 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data6 : i_xor_sobel32_q;
    // Data7
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D7 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data7 : i_xor_sobel32_q;
    // Data8
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D8 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data8 : i_xor_sobel32_q;
    // Data9
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D9 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data9 : i_xor_sobel32_q;
    // Data10
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D10 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data10 : i_xor_sobel32_q;
    // Data11
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D11 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data11 : i_arrayidx30_sobel0_dupName_2_trunc_sel_x_b;
    // Data12
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D12 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data12 : i_arrayidx24_sobel0_dupName_2_trunc_sel_x_b;
    // Data13
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D13 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data13 : i_arrayidx6_sobel0_dupName_2_trunc_sel_x_b;
    // Data14
    assign SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D14 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_valid == 1'b1 ? SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_r_data14 : i_arrayidx92_sobel0_dupName_2_trunc_sel_x_b;

    // i_llvm_fpga_mem_unnamed_sobel12_sobel58(BLACKBOX,102)@115
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_sobel12_sobel_avm_address@20000000
    // out out_unnamed_sobel12_sobel_avm_burstcount@20000000
    // out out_unnamed_sobel12_sobel_avm_byteenable@20000000
    // out out_unnamed_sobel12_sobel_avm_enable@20000000
    // out out_unnamed_sobel12_sobel_avm_read@20000000
    // out out_unnamed_sobel12_sobel_avm_write@20000000
    // out out_unnamed_sobel12_sobel_avm_writedata@20000000
    sobel_i_llvm_fpga_mem_unnamed_12_sobel0 thei_llvm_fpga_mem_unnamed_sobel12_sobel58 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D12),
        .in_i_dependence(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D2),
        .in_i_predicate(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D7),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_backStall),
        .in_i_valid(SE_i_arrayidx11_sobel0_dupName_0_add_x_V2),
        .in_unnamed_sobel12_sobel_avm_readdata(in_unnamed_sobel12_sobel_avm_readdata),
        .in_unnamed_sobel12_sobel_avm_readdatavalid(in_unnamed_sobel12_sobel_avm_readdatavalid),
        .in_unnamed_sobel12_sobel_avm_waitrequest(in_unnamed_sobel12_sobel_avm_waitrequest),
        .in_unnamed_sobel12_sobel_avm_writeack(in_unnamed_sobel12_sobel_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_valid),
        .out_unnamed_sobel12_sobel_avm_address(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_address),
        .out_unnamed_sobel12_sobel_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_burstcount),
        .out_unnamed_sobel12_sobel_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_byteenable),
        .out_unnamed_sobel12_sobel_avm_enable(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_enable),
        .out_unnamed_sobel12_sobel_avm_read(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_read),
        .out_unnamed_sobel12_sobel_avm_write(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_write),
        .out_unnamed_sobel12_sobel_avm_writedata(i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58(STALLENABLE,1622)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_consumed0 = (~ (SE_i_add94_sobel64_backStall) & SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_backStall) & SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_StallValid = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_backStall & SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_StallValid & SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_StallValid & SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_or0 = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_backStall = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_V0 = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_V1 = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_wireValid = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_o_valid;

    // SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53(STALLENABLE,1630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_consumed0 = (~ (SE_i_add94_sobel64_backStall) & SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_backStall) & SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_StallValid = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_backStall & SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_StallValid & SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_StallValid & SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_or0 = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_backStall = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_V0 = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_V1 = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_wireValid = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_o_valid;

    // SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57(STALLENABLE,1620)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_consumed0 = (~ (SE_i_add94_sobel64_backStall) & SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_backStall) & SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_StallValid = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_backStall & SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_StallValid & SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_StallValid & SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_or0 = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_backStall = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_V0 = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_V1 = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_wireValid = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_o_valid;

    // i_llvm_fpga_mem_unnamed_sobel7_sobel52(BLACKBOX,105)@115
    // in in_i_stall@20000000
    // out out_o_readdata@147
    // out out_o_stall@20000000
    // out out_o_valid@147
    // out out_unnamed_sobel7_sobel_avm_address@20000000
    // out out_unnamed_sobel7_sobel_avm_burstcount@20000000
    // out out_unnamed_sobel7_sobel_avm_byteenable@20000000
    // out out_unnamed_sobel7_sobel_avm_enable@20000000
    // out out_unnamed_sobel7_sobel_avm_read@20000000
    // out out_unnamed_sobel7_sobel_avm_write@20000000
    // out out_unnamed_sobel7_sobel_avm_writedata@20000000
    sobel_i_llvm_fpga_mem_unnamed_7_sobel0 thei_llvm_fpga_mem_unnamed_sobel7_sobel52 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D0),
        .in_i_dependence(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D4),
        .in_i_predicate(SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_D9),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_backStall),
        .in_i_valid(SE_i_arrayidx11_sobel0_dupName_0_add_x_V0),
        .in_unnamed_sobel7_sobel_avm_readdata(in_unnamed_sobel7_sobel_avm_readdata),
        .in_unnamed_sobel7_sobel_avm_readdatavalid(in_unnamed_sobel7_sobel_avm_readdatavalid),
        .in_unnamed_sobel7_sobel_avm_waitrequest(in_unnamed_sobel7_sobel_avm_waitrequest),
        .in_unnamed_sobel7_sobel_avm_writeack(in_unnamed_sobel7_sobel_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_valid),
        .out_unnamed_sobel7_sobel_avm_address(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_address),
        .out_unnamed_sobel7_sobel_avm_burstcount(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_burstcount),
        .out_unnamed_sobel7_sobel_avm_byteenable(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_byteenable),
        .out_unnamed_sobel7_sobel_avm_enable(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_enable),
        .out_unnamed_sobel7_sobel_avm_read(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_read),
        .out_unnamed_sobel7_sobel_avm_write(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_write),
        .out_unnamed_sobel7_sobel_avm_writedata(i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52(STALLENABLE,1628)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_V0 = SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_backStall = SE_coalesced_delay_3_0_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and0 = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and1 = SE_out_i_llvm_fpga_mem_unnamed_sobel11_sobel57_V1 & SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and2 = SE_out_i_llvm_fpga_mem_unnamed_sobel8_sobel53_V1 & SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and1;
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_wireValid = SE_out_i_llvm_fpga_mem_unnamed_sobel12_sobel58_V1 & SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_and2;

    // SE_coalesced_delay_3_0(STALLENABLE,2321)
    // Valid signal propagation
    assign SE_coalesced_delay_3_0_V0 = SE_coalesced_delay_3_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_0_s_tv_0 = SE_i_mul31_sobel62_vt_join_backStall & SE_coalesced_delay_3_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_0_backEN = ~ (SE_coalesced_delay_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_0_v_s_0 = SE_coalesced_delay_3_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_sobel7_sobel52_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_3_0_backStall = ~ (SE_coalesced_delay_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_0_R_v_0 <= SE_coalesced_delay_3_0_R_v_0 & SE_coalesced_delay_3_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_0_R_v_0 <= SE_coalesced_delay_3_0_v_s_0;
            end

        end
    end

    // SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0(STALLENABLE,2298)
    // Valid signal propagation
    assign SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_V0 = SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_s_tv_0 = SE_i_mul31_sobel62_vt_join_backStall & SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_backEN = ~ (SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_v_s_0 = SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_sobel9_sobel54_V0;
    // Backward Stall generation
    assign SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_backStall = ~ (SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_R_v_0 <= SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_R_v_0 & SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_R_v_0 <= SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul31_sobel62_vt_join(STALLENABLE,1681)
    // Valid signal propagation
    assign SE_i_mul31_sobel62_vt_join_V0 = SE_i_mul31_sobel62_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_mul31_sobel62_vt_join_backStall = SE_coalesced_delay_4_0_backStall | ~ (SE_i_mul31_sobel62_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul31_sobel62_vt_join_and0 = SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_V0;
    assign SE_i_mul31_sobel62_vt_join_and1 = SE_coalesced_delay_3_0_V0 & SE_i_mul31_sobel62_vt_join_and0;
    assign SE_i_mul31_sobel62_vt_join_wireValid = SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_V1 & SE_i_mul31_sobel62_vt_join_and1;

    // SE_i_sub108_sobel69(STALLENABLE,1724)
    // Valid signal propagation
    assign SE_i_sub108_sobel69_V0 = SE_i_sub108_sobel69_wireValid;
    // Backward Stall generation
    assign SE_i_sub108_sobel69_backStall = SE_redist26_bgTrunc_i_sub115_sobel71_sel_x_b_1_0_backStall | ~ (SE_i_sub108_sobel69_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_sub108_sobel69_and0 = SE_redist29_bgTrunc_i_add101_sobel67_sel_x_b_1_0_V0;
    assign SE_i_sub108_sobel69_and1 = SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_V0 & SE_i_sub108_sobel69_and0;
    assign SE_i_sub108_sobel69_wireValid = SE_redist33_i_mul93_sobel65_vt_select_31_b_1_0_V0 & SE_i_sub108_sobel69_and1;

    // SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55(STALLENABLE,1618)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_V0 = SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_backStall = SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_wireValid = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_valid;

    // SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0(STALLENABLE,2311)
    // Valid signal propagation
    assign SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_V0 = SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_0;
    assign SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_V1 = SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_s_tv_0 = SE_i_sub108_sobel69_backStall & SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_0;
    assign SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_s_tv_1 = SE_i_mul31_sobel62_vt_join_backStall & SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_or0 = SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_s_tv_0;
    assign SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backEN = ~ (SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_s_tv_1 | SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_v_s_0 = SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_sobel10_sobel55_V0;
    // Backward Stall generation
    assign SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backStall = ~ (SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_0 <= 1'b0;
            SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backEN == 1'b0)
            begin
                SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_0 <= SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_0 & SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_s_tv_0;
            end
            else
            begin
                SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_0 <= SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_v_s_0;
            end

            if (SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backEN == 1'b0)
            begin
                SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_1 <= SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_1 & SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_s_tv_1;
            end
            else
            begin
                SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_R_v_1 <= SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_mem_unnamed_sobel10_sobel55(BITJOIN,1468)
    assign bubble_join_i_llvm_fpga_mem_unnamed_sobel10_sobel55_q = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_sobel10_sobel55(BITSELECT,1469)
    assign bubble_select_i_llvm_fpga_mem_unnamed_sobel10_sobel55_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_sobel10_sobel55_q[31:0]);

    // redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0(REG,1451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_backEN == 1'b1)
        begin
            redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_mem_unnamed_sobel10_sobel55_b);
        end
    end

    // leftShiftStage0Idx1Rng1_uid1017_i_mul31_sobel0_shift_x(BITSELECT,1016)@147
    assign leftShiftStage0Idx1Rng1_uid1017_i_mul31_sobel0_shift_x_in = bubble_select_i_llvm_fpga_mem_unnamed_sobel9_sobel54_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid1017_i_mul31_sobel0_shift_x_b = leftShiftStage0Idx1Rng1_uid1017_i_mul31_sobel0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid1018_i_mul31_sobel0_shift_x(BITJOIN,1017)@147
    assign leftShiftStage0Idx1_uid1018_i_mul31_sobel0_shift_x_q = {leftShiftStage0Idx1Rng1_uid1017_i_mul31_sobel0_shift_x_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_unnamed_sobel9_sobel54(BITJOIN,1489)
    assign bubble_join_i_llvm_fpga_mem_unnamed_sobel9_sobel54_q = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_sobel9_sobel54(BITSELECT,1490)
    assign bubble_select_i_llvm_fpga_mem_unnamed_sobel9_sobel54_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_sobel9_sobel54_q[31:0]);

    // leftShiftStage0_uid1020_i_mul31_sobel0_shift_x(MUX,1019)@147
    assign leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_s or bubble_select_i_llvm_fpga_mem_unnamed_sobel9_sobel54_b or leftShiftStage0Idx1_uid1018_i_mul31_sobel0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_s)
            1'b0 : leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_q = bubble_select_i_llvm_fpga_mem_unnamed_sobel9_sobel54_b;
            1'b1 : leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_q = leftShiftStage0Idx1_uid1018_i_mul31_sobel0_shift_x_q;
            default : leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul31_sobel62_vt_select_31(BITSELECT,140)@147
    assign i_mul31_sobel62_vt_select_31_b = leftShiftStage0_uid1020_i_mul31_sobel0_shift_x_q[31:1];

    // redist35_i_mul31_sobel62_vt_select_31_b_1_0(REG,1440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_mul31_sobel62_vt_select_31_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist35_i_mul31_sobel62_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist35_i_mul31_sobel62_vt_select_31_b_1_0_q <= $unsigned(i_mul31_sobel62_vt_select_31_b);
        end
    end

    // i_mul31_sobel62_vt_join(BITJOIN,139)@148
    assign i_mul31_sobel62_vt_join_q = {redist35_i_mul31_sobel62_vt_select_31_b_1_0_q, GND_q};

    // leftShiftStage0Idx1Rng1_uid1033_i_mul_sobel0_shift_x(BITSELECT,1032)@147
    assign leftShiftStage0Idx1Rng1_uid1033_i_mul_sobel0_shift_x_in = bubble_select_i_llvm_fpga_mem_unnamed_sobel7_sobel52_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid1033_i_mul_sobel0_shift_x_b = leftShiftStage0Idx1Rng1_uid1033_i_mul_sobel0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid1034_i_mul_sobel0_shift_x(BITJOIN,1033)@147
    assign leftShiftStage0Idx1_uid1034_i_mul_sobel0_shift_x_q = {leftShiftStage0Idx1Rng1_uid1033_i_mul_sobel0_shift_x_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_unnamed_sobel7_sobel52(BITJOIN,1483)
    assign bubble_join_i_llvm_fpga_mem_unnamed_sobel7_sobel52_q = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_sobel7_sobel52(BITSELECT,1484)
    assign bubble_select_i_llvm_fpga_mem_unnamed_sobel7_sobel52_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_sobel7_sobel52_q[31:0]);

    // leftShiftStage0_uid1036_i_mul_sobel0_shift_x(MUX,1035)@147
    assign leftShiftStage0_uid1036_i_mul_sobel0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid1036_i_mul_sobel0_shift_x_s or bubble_select_i_llvm_fpga_mem_unnamed_sobel7_sobel52_b or leftShiftStage0Idx1_uid1034_i_mul_sobel0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1036_i_mul_sobel0_shift_x_s)
            1'b0 : leftShiftStage0_uid1036_i_mul_sobel0_shift_x_q = bubble_select_i_llvm_fpga_mem_unnamed_sobel7_sobel52_b;
            1'b1 : leftShiftStage0_uid1036_i_mul_sobel0_shift_x_q = leftShiftStage0Idx1_uid1034_i_mul_sobel0_shift_x_q;
            default : leftShiftStage0_uid1036_i_mul_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_sobel61_vt_select_31(BITSELECT,150)@147
    assign i_mul_sobel61_vt_select_31_b = leftShiftStage0_uid1036_i_mul_sobel0_shift_x_q[31:1];

    // i_mul_sobel61_vt_join(BITJOIN,149)@147
    assign i_mul_sobel61_vt_join_q = {i_mul_sobel61_vt_select_31_b, GND_q};

    // i_reduction_sobel_0_sobel66(ADD,172)@147
    assign i_reduction_sobel_0_sobel66_a = {1'b0, i_mul_sobel61_vt_join_q};
    assign i_reduction_sobel_0_sobel66_b = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_sobel11_sobel57_b};
    assign i_reduction_sobel_0_sobel66_o = $unsigned(i_reduction_sobel_0_sobel66_a) + $unsigned(i_reduction_sobel_0_sobel66_b);
    assign i_reduction_sobel_0_sobel66_q = i_reduction_sobel_0_sobel66_o[32:0];

    // bgTrunc_i_reduction_sobel_0_sobel66_sel_x(BITSELECT,308)@147
    assign bgTrunc_i_reduction_sobel_0_sobel66_sel_x_b = i_reduction_sobel_0_sobel66_q[31:0];

    // i_reduction_sobel_1_sobel68(ADD,173)@147
    assign i_reduction_sobel_1_sobel68_a = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_sobel8_sobel53_b};
    assign i_reduction_sobel_1_sobel68_b = {1'b0, bgTrunc_i_reduction_sobel_0_sobel66_sel_x_b};
    assign i_reduction_sobel_1_sobel68_o = $unsigned(i_reduction_sobel_1_sobel68_a) + $unsigned(i_reduction_sobel_1_sobel68_b);
    assign i_reduction_sobel_1_sobel68_q = i_reduction_sobel_1_sobel68_o[32:0];

    // bgTrunc_i_reduction_sobel_1_sobel68_sel_x(BITSELECT,309)@147
    assign bgTrunc_i_reduction_sobel_1_sobel68_sel_x_b = i_reduction_sobel_1_sobel68_q[31:0];

    // join_for_coalesced_delay_3(BITJOIN,1408)
    assign join_for_coalesced_delay_3_q = {bubble_select_i_llvm_fpga_mem_unnamed_sobel12_sobel58_b, bgTrunc_i_reduction_sobel_1_sobel68_sel_x_b};

    // coalesced_delay_3_0(REG,1458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_3_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_3_0_backEN == 1'b1)
        begin
            coalesced_delay_3_0_q <= $unsigned(join_for_coalesced_delay_3_q);
        end
    end

    // sel_for_coalesced_delay_3(BITSELECT,1409)
    assign sel_for_coalesced_delay_3_b = $unsigned(coalesced_delay_3_0_q[31:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(coalesced_delay_3_0_q[63:32]);

    // i_sub25_sobel70(SUB,206)@148
    assign i_sub25_sobel70_a = {1'b0, sel_for_coalesced_delay_3_b};
    assign i_sub25_sobel70_b = {1'b0, sel_for_coalesced_delay_3_c};
    assign i_sub25_sobel70_o = $unsigned(i_sub25_sobel70_a) - $unsigned(i_sub25_sobel70_b);
    assign i_sub25_sobel70_q = i_sub25_sobel70_o[32:0];

    // bgTrunc_i_sub25_sobel70_sel_x(BITSELECT,313)@148
    assign bgTrunc_i_sub25_sobel70_sel_x_b = $unsigned(i_sub25_sobel70_q[31:0]);

    // i_sub32_sobel72(SUB,207)@148
    assign i_sub32_sobel72_a = {1'b0, bgTrunc_i_sub25_sobel70_sel_x_b};
    assign i_sub32_sobel72_b = {1'b0, i_mul31_sobel62_vt_join_q};
    assign i_sub32_sobel72_o = $unsigned(i_sub32_sobel72_a) - $unsigned(i_sub32_sobel72_b);
    assign i_sub32_sobel72_q = i_sub32_sobel72_o[32:0];

    // bgTrunc_i_sub32_sobel72_sel_x(BITSELECT,314)@148
    assign bgTrunc_i_sub32_sobel72_sel_x_b = $unsigned(i_sub32_sobel72_q[31:0]);

    // join_for_coalesced_delay_4(BITJOIN,1411)
    assign join_for_coalesced_delay_4_q = {redist44_i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_o_readdata_1_0_q, bgTrunc_i_sub32_sobel72_sel_x_b};

    // coalesced_delay_4_0(REG,1459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_4_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_4_0_backEN == 1'b1)
        begin
            coalesced_delay_4_0_q <= $unsigned(join_for_coalesced_delay_4_q);
        end
    end

    // sel_for_coalesced_delay_4(BITSELECT,1412)
    assign sel_for_coalesced_delay_4_b = $unsigned(coalesced_delay_4_0_q[31:0]);
    assign sel_for_coalesced_delay_4_c = $unsigned(coalesced_delay_4_0_q[63:32]);

    // i_sub39_sobel74(SUB,208)@149
    assign i_sub39_sobel74_a = {1'b0, sel_for_coalesced_delay_4_b};
    assign i_sub39_sobel74_b = {1'b0, sel_for_coalesced_delay_4_c};
    assign i_sub39_sobel74_o = $unsigned(i_sub39_sobel74_a) - $unsigned(i_sub39_sobel74_b);
    assign i_sub39_sobel74_q = i_sub39_sobel74_o[32:0];

    // bgTrunc_i_sub39_sobel74_sel_x(BITSELECT,315)@149
    assign bgTrunc_i_sub39_sobel74_sel_x_b = $unsigned(i_sub39_sobel74_q[31:0]);

    // i_mul81_sobel76_bs1_merged_bit_select(BITSELECT,1347)@149
    assign i_mul81_sobel76_bs1_merged_bit_select_b = bgTrunc_i_sub39_sobel74_sel_x_b[31:18];
    assign i_mul81_sobel76_bs1_merged_bit_select_c = bgTrunc_i_sub39_sobel74_sel_x_b[17:0];

    // SE_coalesced_delay_4_0(STALLENABLE,2322)
    // Valid signal propagation
    assign SE_coalesced_delay_4_0_V0 = SE_coalesced_delay_4_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_4_0_s_tv_0 = SR_SE_i_mul81_sobel76_im0_cma_backStall & SE_coalesced_delay_4_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_4_0_backEN = ~ (SE_coalesced_delay_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_4_0_v_s_0 = SE_coalesced_delay_4_0_backEN & SE_i_mul31_sobel62_vt_join_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_4_0_backStall = ~ (SE_coalesced_delay_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_4_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_4_0_R_v_0 <= SE_coalesced_delay_4_0_R_v_0 & SE_coalesced_delay_4_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_4_0_R_v_0 <= SE_coalesced_delay_4_0_v_s_0;
            end

        end
    end

    // SR_SE_i_mul81_sobel76_im0_cma(STALLREG,2510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul81_sobel76_im0_cma_r_valid <= 1'b0;
            SR_SE_i_mul81_sobel76_im0_cma_r_data0 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul81_sobel76_im0_cma_r_data1 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul81_sobel76_im0_cma_r_data2 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul81_sobel76_im0_cma_r_data3 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul81_sobel76_im0_cma_r_data4 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul81_sobel76_im0_cma_r_data5 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul81_sobel76_im0_cma_r_data6 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul81_sobel76_im0_cma_r_data7 <= 18'bxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul81_sobel76_im0_cma_r_valid <= SE_i_mul81_sobel76_im0_cma_backStall & (SR_SE_i_mul81_sobel76_im0_cma_r_valid | SR_SE_i_mul81_sobel76_im0_cma_i_valid);

            if (SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul81_sobel76_im0_cma_r_data0 <= $unsigned(i_mul81_sobel76_bs1_merged_bit_select_b);
                SR_SE_i_mul81_sobel76_im0_cma_r_data1 <= $unsigned(i_mul81_sobel76_bs1_merged_bit_select_b);
                SR_SE_i_mul81_sobel76_im0_cma_r_data2 <= $unsigned(i_mul81_sobel76_bs1_merged_bit_select_b);
                SR_SE_i_mul81_sobel76_im0_cma_r_data3 <= $unsigned(i_mul81_sobel76_bs1_merged_bit_select_b);
                SR_SE_i_mul81_sobel76_im0_cma_r_data4 <= $unsigned(i_mul81_sobel76_bs1_merged_bit_select_c);
                SR_SE_i_mul81_sobel76_im0_cma_r_data5 <= $unsigned(i_mul81_sobel76_bs1_merged_bit_select_c);
                SR_SE_i_mul81_sobel76_im0_cma_r_data6 <= $unsigned(i_mul81_sobel76_bs1_merged_bit_select_c);
                SR_SE_i_mul81_sobel76_im0_cma_r_data7 <= $unsigned(i_mul81_sobel76_bs1_merged_bit_select_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul81_sobel76_im0_cma_i_valid = SE_coalesced_delay_4_0_V0;
    // Stall signal propagation
    assign SR_SE_i_mul81_sobel76_im0_cma_backStall = SR_SE_i_mul81_sobel76_im0_cma_r_valid | ~ (SR_SE_i_mul81_sobel76_im0_cma_i_valid);

    // Valid
    assign SR_SE_i_mul81_sobel76_im0_cma_V = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_valid : SR_SE_i_mul81_sobel76_im0_cma_i_valid;

    // Data0
    assign SR_SE_i_mul81_sobel76_im0_cma_D0 = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_data0 : i_mul81_sobel76_bs1_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mul81_sobel76_im0_cma_D1 = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_data1 : i_mul81_sobel76_bs1_merged_bit_select_b;
    // Data2
    assign SR_SE_i_mul81_sobel76_im0_cma_D2 = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_data2 : i_mul81_sobel76_bs1_merged_bit_select_b;
    // Data3
    assign SR_SE_i_mul81_sobel76_im0_cma_D3 = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_data3 : i_mul81_sobel76_bs1_merged_bit_select_b;
    // Data4
    assign SR_SE_i_mul81_sobel76_im0_cma_D4 = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_data4 : i_mul81_sobel76_bs1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_mul81_sobel76_im0_cma_D5 = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_data5 : i_mul81_sobel76_bs1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_mul81_sobel76_im0_cma_D6 = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_data6 : i_mul81_sobel76_bs1_merged_bit_select_c;
    // Data7
    assign SR_SE_i_mul81_sobel76_im0_cma_D7 = SR_SE_i_mul81_sobel76_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul81_sobel76_im0_cma_r_data7 : i_mul81_sobel76_bs1_merged_bit_select_c;

    // i_mul81_sobel76_im0_cma(CHAINMULTADD,1337)@149 + 3
    assign i_mul81_sobel76_im0_cma_reset = ~ (resetn);
    assign i_mul81_sobel76_im0_cma_ena0 = SE_i_mul81_sobel76_im0_cma_backEN[0];
    assign i_mul81_sobel76_im0_cma_ena1 = i_mul81_sobel76_im0_cma_ena0;
    assign i_mul81_sobel76_im0_cma_ena2 = i_mul81_sobel76_im0_cma_ena0;

    assign i_mul81_sobel76_im0_cma_a0 = SR_SE_i_mul81_sobel76_im0_cma_D0;
    assign i_mul81_sobel76_im0_cma_c0 = SR_SE_i_mul81_sobel76_im0_cma_D1;
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
    ) i_mul81_sobel76_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul81_sobel76_im0_cma_ena2, i_mul81_sobel76_im0_cma_ena1, i_mul81_sobel76_im0_cma_ena0 }),
        .aclr({ i_mul81_sobel76_im0_cma_reset, i_mul81_sobel76_im0_cma_reset }),
        .ay(i_mul81_sobel76_im0_cma_a0),
        .ax(i_mul81_sobel76_im0_cma_c0),
        .resulta(i_mul81_sobel76_im0_cma_s0),
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
    i_mul81_sobel76_im0_cma_delay ( .xin(i_mul81_sobel76_im0_cma_s0), .xout(i_mul81_sobel76_im0_cma_qq), .ena(SE_i_mul81_sobel76_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul81_sobel76_im0_cma_q = $unsigned(i_mul81_sobel76_im0_cma_qq[27:0]);

    // bubble_join_i_mul81_sobel76_im0_cma(BITJOIN,1550)
    assign bubble_join_i_mul81_sobel76_im0_cma_q = i_mul81_sobel76_im0_cma_q;

    // SE_i_mul81_sobel76_im0_cma(STALLENABLE,2245)
    // Valid signal propagation
    assign SE_i_mul81_sobel76_im0_cma_V0 = SE_i_mul81_sobel76_im0_cma_R_v_0;
    assign SE_i_mul81_sobel76_im0_cma_V1 = SE_i_mul81_sobel76_im0_cma_R_v_1;
    assign SE_i_mul81_sobel76_im0_cma_V2 = SE_i_mul81_sobel76_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul81_sobel76_im0_cma_s_tv_0 = bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_out & SE_i_mul81_sobel76_im0_cma_R_v_0;
    assign SE_i_mul81_sobel76_im0_cma_s_tv_1 = bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_out & SE_i_mul81_sobel76_im0_cma_R_v_1;
    assign SE_i_mul81_sobel76_im0_cma_s_tv_2 = bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_out & SE_i_mul81_sobel76_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul81_sobel76_im0_cma_or0 = SE_i_mul81_sobel76_im0_cma_s_tv_0;
    assign SE_i_mul81_sobel76_im0_cma_or1 = SE_i_mul81_sobel76_im0_cma_s_tv_1 | SE_i_mul81_sobel76_im0_cma_or0;
    assign SE_i_mul81_sobel76_im0_cma_backEN = ~ (SE_i_mul81_sobel76_im0_cma_s_tv_2 | SE_i_mul81_sobel76_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul81_sobel76_im0_cma_v_s_0 = SE_i_mul81_sobel76_im0_cma_backEN & SR_SE_i_mul81_sobel76_im0_cma_V;
    // Backward Stall generation
    assign SE_i_mul81_sobel76_im0_cma_backStall = ~ (SE_i_mul81_sobel76_im0_cma_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul81_sobel76_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul81_sobel76_im0_cma_R_s_1 <= 1'b0;
            SE_i_mul81_sobel76_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul81_sobel76_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul81_sobel76_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul81_sobel76_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul81_sobel76_im0_cma_R_s_0 <= SE_i_mul81_sobel76_im0_cma_v_s_0;
            end

            if (SE_i_mul81_sobel76_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul81_sobel76_im0_cma_R_s_1 <= SE_i_mul81_sobel76_im0_cma_R_s_0;
            end

            if (SE_i_mul81_sobel76_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul81_sobel76_im0_cma_R_v_0 <= SE_i_mul81_sobel76_im0_cma_R_v_0 & SE_i_mul81_sobel76_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul81_sobel76_im0_cma_R_v_0 <= SE_i_mul81_sobel76_im0_cma_R_s_1;
            end

            if (SE_i_mul81_sobel76_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul81_sobel76_im0_cma_R_v_1 <= SE_i_mul81_sobel76_im0_cma_R_v_1 & SE_i_mul81_sobel76_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul81_sobel76_im0_cma_R_v_1 <= SE_i_mul81_sobel76_im0_cma_R_s_1;
            end

            if (SE_i_mul81_sobel76_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul81_sobel76_im0_cma_R_v_2 <= SE_i_mul81_sobel76_im0_cma_R_v_2 & SE_i_mul81_sobel76_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul81_sobel76_im0_cma_R_v_2 <= SE_i_mul81_sobel76_im0_cma_R_s_1;
            end

        end
    end

    // bubble_out_i_mul81_sobel76_im0_cma_data_reg(STALLFIFO,2501)
    assign bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_in = SE_i_mul81_sobel76_im0_cma_V0;
    assign bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_backStall;
    assign bubble_out_i_mul81_sobel76_im0_cma_data_reg_data_in = bubble_join_i_mul81_sobel76_im0_cma_q;
    assign bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul81_sobel76_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul81_sobel76_im0_cma_q),
        .valid_out(bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul81_sobel76_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul81_sobel76_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul81_sobel76_im8_cma(CHAINMULTADD,1338)@149 + 3
    assign i_mul81_sobel76_im8_cma_reset = ~ (resetn);
    assign i_mul81_sobel76_im8_cma_ena0 = SE_i_mul81_sobel76_im0_cma_backEN[0];
    assign i_mul81_sobel76_im8_cma_ena1 = i_mul81_sobel76_im8_cma_ena0;
    assign i_mul81_sobel76_im8_cma_ena2 = i_mul81_sobel76_im8_cma_ena0;

    assign i_mul81_sobel76_im8_cma_a0 = SR_SE_i_mul81_sobel76_im0_cma_D4;
    assign i_mul81_sobel76_im8_cma_c0 = SR_SE_i_mul81_sobel76_im0_cma_D5;
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
    ) i_mul81_sobel76_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul81_sobel76_im8_cma_ena2, i_mul81_sobel76_im8_cma_ena1, i_mul81_sobel76_im8_cma_ena0 }),
        .aclr({ i_mul81_sobel76_im8_cma_reset, i_mul81_sobel76_im8_cma_reset }),
        .ay(i_mul81_sobel76_im8_cma_a0),
        .ax(i_mul81_sobel76_im8_cma_c0),
        .resulta(i_mul81_sobel76_im8_cma_s0),
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
    i_mul81_sobel76_im8_cma_delay ( .xin(i_mul81_sobel76_im8_cma_s0), .xout(i_mul81_sobel76_im8_cma_qq), .ena(SE_i_mul81_sobel76_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul81_sobel76_im8_cma_q = $unsigned(i_mul81_sobel76_im8_cma_qq[35:0]);

    // bubble_join_i_mul81_sobel76_im8_cma(BITJOIN,1553)
    assign bubble_join_i_mul81_sobel76_im8_cma_q = i_mul81_sobel76_im8_cma_q;

    // bubble_out_i_mul81_sobel76_im8_cma_data_reg(STALLFIFO,2502)
    assign bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_in = SE_i_mul81_sobel76_im0_cma_V1;
    assign bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_backStall;
    assign bubble_out_i_mul81_sobel76_im8_cma_data_reg_data_in = bubble_join_i_mul81_sobel76_im8_cma_q;
    assign bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul81_sobel76_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul81_sobel76_im8_cma_q),
        .valid_out(bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul81_sobel76_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul81_sobel76_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul81_sobel76_ma3_cma(CHAINMULTADD,1340)@149 + 3
    assign i_mul81_sobel76_ma3_cma_reset = ~ (resetn);
    assign i_mul81_sobel76_ma3_cma_ena0 = SE_i_mul81_sobel76_im0_cma_backEN[0];
    assign i_mul81_sobel76_ma3_cma_ena1 = i_mul81_sobel76_ma3_cma_ena0;
    assign i_mul81_sobel76_ma3_cma_ena2 = i_mul81_sobel76_ma3_cma_ena0;

    assign i_mul81_sobel76_ma3_cma_a0 = SR_SE_i_mul81_sobel76_im0_cma_D2;
    assign i_mul81_sobel76_ma3_cma_c0 = SR_SE_i_mul81_sobel76_im0_cma_D6;
    assign i_mul81_sobel76_ma3_cma_a1 = SR_SE_i_mul81_sobel76_im0_cma_D3;
    assign i_mul81_sobel76_ma3_cma_c1 = SR_SE_i_mul81_sobel76_im0_cma_D7;
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
    ) i_mul81_sobel76_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul81_sobel76_ma3_cma_ena2, i_mul81_sobel76_ma3_cma_ena1, i_mul81_sobel76_ma3_cma_ena0 }),
        .aclr({ i_mul81_sobel76_ma3_cma_reset, i_mul81_sobel76_ma3_cma_reset }),
        .ay(i_mul81_sobel76_ma3_cma_a1),
        .by(i_mul81_sobel76_ma3_cma_a0),
        .ax(i_mul81_sobel76_ma3_cma_c1),
        .bx(i_mul81_sobel76_ma3_cma_c0),
        .resulta(i_mul81_sobel76_ma3_cma_s0),
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
    i_mul81_sobel76_ma3_cma_delay ( .xin(i_mul81_sobel76_ma3_cma_s0), .xout(i_mul81_sobel76_ma3_cma_qq), .ena(SE_i_mul81_sobel76_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul81_sobel76_ma3_cma_q = $unsigned(i_mul81_sobel76_ma3_cma_qq[32:0]);

    // bubble_join_i_mul81_sobel76_ma3_cma(BITJOIN,1559)
    assign bubble_join_i_mul81_sobel76_ma3_cma_q = i_mul81_sobel76_ma3_cma_q;

    // bubble_out_i_mul81_sobel76_ma3_cma_data_reg(STALLFIFO,2504)
    assign bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_in = SE_i_mul81_sobel76_im0_cma_V2;
    assign bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_backStall;
    assign bubble_out_i_mul81_sobel76_ma3_cma_data_reg_data_in = bubble_join_i_mul81_sobel76_ma3_cma_q;
    assign bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul81_sobel76_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul81_sobel76_ma3_cma_q),
        .valid_out(bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul81_sobel76_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul81_sobel76_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data(STALLENABLE,2460)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_V0 = SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_backStall = SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_backStall | ~ (SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_and0 = bubble_out_i_mul81_sobel76_ma3_cma_data_reg_valid_out;
    assign SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_and1 = bubble_out_i_mul81_sobel76_im8_cma_data_reg_valid_out & SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_and0;
    assign SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_wireValid = bubble_out_i_mul81_sobel76_im0_cma_data_reg_valid_out & SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_and1;

    // SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0(STALLENABLE,2297)
    // Valid signal propagation
    assign SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_V0 = SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_s_tv_0 = SE_i_add165_sobel77_backStall & SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_backEN = ~ (SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_v_s_0 = SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_backEN & SE_out_bubble_out_i_mul81_sobel76_ma3_cma_data_V0;
    // Backward Stall generation
    assign SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_backStall = ~ (SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_backEN == 1'b0)
            begin
                SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_R_v_0 <= SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_R_v_0 & SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_R_v_0 <= SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul81_sobel76_ma3_cma(BITSELECT,1560)
    assign bubble_select_i_mul81_sobel76_ma3_cma_b = $unsigned(bubble_out_i_mul81_sobel76_ma3_cma_data_reg_data_out[32:0]);

    // i_mul81_sobel76_sums_align_1(BITSHIFT,670)@152
    assign i_mul81_sobel76_sums_align_1_qint = { bubble_select_i_mul81_sobel76_ma3_cma_b, 18'b000000000000000000 };
    assign i_mul81_sobel76_sums_align_1_q = i_mul81_sobel76_sums_align_1_qint[50:0];

    // bubble_select_i_mul81_sobel76_im0_cma(BITSELECT,1551)
    assign bubble_select_i_mul81_sobel76_im0_cma_b = $unsigned(bubble_out_i_mul81_sobel76_im0_cma_data_reg_data_out[27:0]);

    // bubble_select_i_mul81_sobel76_im8_cma(BITSELECT,1554)
    assign bubble_select_i_mul81_sobel76_im8_cma_b = $unsigned(bubble_out_i_mul81_sobel76_im8_cma_data_reg_data_out[35:0]);

    // i_mul81_sobel76_sums_join_0(BITJOIN,669)@152
    assign i_mul81_sobel76_sums_join_0_q = {bubble_select_i_mul81_sobel76_im0_cma_b, bubble_select_i_mul81_sobel76_im8_cma_b};

    // i_mul81_sobel76_sums_result_add_0_0(ADD,672)@152
    assign i_mul81_sobel76_sums_result_add_0_0_a = {1'b0, i_mul81_sobel76_sums_join_0_q};
    assign i_mul81_sobel76_sums_result_add_0_0_b = {14'b00000000000000, i_mul81_sobel76_sums_align_1_q};
    assign i_mul81_sobel76_sums_result_add_0_0_o = $unsigned(i_mul81_sobel76_sums_result_add_0_0_a) + $unsigned(i_mul81_sobel76_sums_result_add_0_0_b);
    assign i_mul81_sobel76_sums_result_add_0_0_q = i_mul81_sobel76_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul81_sobel76_sel_x(BITSELECT,307)@152
    assign bgTrunc_i_mul81_sobel76_sel_x_in = i_mul81_sobel76_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul81_sobel76_sel_x_b = bgTrunc_i_mul81_sobel76_sel_x_in[31:0];

    // i_mul81_sobel76_vt_select_30(BITSELECT,144)@152
    assign i_mul81_sobel76_vt_select_30_b = bgTrunc_i_mul81_sobel76_sel_x_b[30:0];

    // redist34_i_mul81_sobel76_vt_select_30_b_1_0(REG,1439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_mul81_sobel76_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_backEN == 1'b1)
        begin
            redist34_i_mul81_sobel76_vt_select_30_b_1_0_q <= $unsigned(i_mul81_sobel76_vt_select_30_b);
        end
    end

    // i_mul81_sobel76_vt_join(BITJOIN,143)@153
    assign i_mul81_sobel76_vt_join_q = {GND_q, redist34_i_mul81_sobel76_vt_select_30_b_1_0_q};

    // bubble_select_i_mul164_sobel75_ma3_cma(BITSELECT,1557)
    assign bubble_select_i_mul164_sobel75_ma3_cma_b = $unsigned(bubble_out_i_mul164_sobel75_ma3_cma_data_reg_data_out[32:0]);

    // i_mul164_sobel75_sums_align_1(BITSHIFT,655)@152
    assign i_mul164_sobel75_sums_align_1_qint = { bubble_select_i_mul164_sobel75_ma3_cma_b, 18'b000000000000000000 };
    assign i_mul164_sobel75_sums_align_1_q = i_mul164_sobel75_sums_align_1_qint[50:0];

    // bubble_select_i_mul164_sobel75_im0_cma(BITSELECT,1545)
    assign bubble_select_i_mul164_sobel75_im0_cma_b = $unsigned(bubble_out_i_mul164_sobel75_im0_cma_data_reg_data_out[27:0]);

    // bubble_select_i_mul164_sobel75_im8_cma(BITSELECT,1548)
    assign bubble_select_i_mul164_sobel75_im8_cma_b = $unsigned(bubble_out_i_mul164_sobel75_im8_cma_data_reg_data_out[35:0]);

    // i_mul164_sobel75_sums_join_0(BITJOIN,654)@152
    assign i_mul164_sobel75_sums_join_0_q = {bubble_select_i_mul164_sobel75_im0_cma_b, bubble_select_i_mul164_sobel75_im8_cma_b};

    // i_mul164_sobel75_sums_result_add_0_0(ADD,657)@152
    assign i_mul164_sobel75_sums_result_add_0_0_a = {1'b0, i_mul164_sobel75_sums_join_0_q};
    assign i_mul164_sobel75_sums_result_add_0_0_b = {14'b00000000000000, i_mul164_sobel75_sums_align_1_q};
    assign i_mul164_sobel75_sums_result_add_0_0_o = $unsigned(i_mul164_sobel75_sums_result_add_0_0_a) + $unsigned(i_mul164_sobel75_sums_result_add_0_0_b);
    assign i_mul164_sobel75_sums_result_add_0_0_q = i_mul164_sobel75_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul164_sobel75_sel_x(BITSELECT,306)@152
    assign bgTrunc_i_mul164_sobel75_sel_x_in = i_mul164_sobel75_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul164_sobel75_sel_x_b = bgTrunc_i_mul164_sobel75_sel_x_in[31:0];

    // i_mul164_sobel75_vt_select_30(BITSELECT,137)@152
    assign i_mul164_sobel75_vt_select_30_b = bgTrunc_i_mul164_sobel75_sel_x_b[30:0];

    // redist36_i_mul164_sobel75_vt_select_30_b_1_0(REG,1441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_mul164_sobel75_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_backEN == 1'b1)
        begin
            redist36_i_mul164_sobel75_vt_select_30_b_1_0_q <= $unsigned(i_mul164_sobel75_vt_select_30_b);
        end
    end

    // i_mul164_sobel75_vt_join(BITJOIN,136)@153
    assign i_mul164_sobel75_vt_join_q = {GND_q, redist36_i_mul164_sobel75_vt_select_30_b_1_0_q};

    // i_add165_sobel77(ADD,43)@153
    assign i_add165_sobel77_a = {1'b0, i_mul164_sobel75_vt_join_q};
    assign i_add165_sobel77_b = {1'b0, i_mul81_sobel76_vt_join_q};
    assign i_add165_sobel77_o = $unsigned(i_add165_sobel77_a) + $unsigned(i_add165_sobel77_b);
    assign i_add165_sobel77_q = i_add165_sobel77_o[32:0];

    // bgTrunc_i_add165_sobel77_sel_x(BITSELECT,301)@153
    assign bgTrunc_i_add165_sobel77_sel_x_b = i_add165_sobel77_q[31:0];

    // i_add165_sobel77_vt_select_30(BITSELECT,46)@153
    assign i_add165_sobel77_vt_select_30_b = bgTrunc_i_add165_sobel77_sel_x_b[30:0];

    // i_add165_sobel77_vt_join(BITJOIN,45)@153
    assign i_add165_sobel77_vt_join_q = {GND_q, i_add165_sobel77_vt_select_30_b};

    // i_and7_i_sobel99_vt_const_1(CONSTANT,60)
    assign i_and7_i_sobel99_vt_const_1_q = $unsigned(2'b00);

    // rightShiftStage0Idx1Rng1_uid1114_i_shr_i_i_sobel0_shift_x(BITSELECT,1113)@153
    assign rightShiftStage0Idx1Rng1_uid1114_i_shr_i_i_sobel0_shift_x_b = i_add165_sobel77_vt_join_q[31:1];

    // rightShiftStage0Idx1_uid1116_i_shr_i_i_sobel0_shift_x(BITJOIN,1115)@153
    assign rightShiftStage0Idx1_uid1116_i_shr_i_i_sobel0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1114_i_shr_i_i_sobel0_shift_x_b};

    // rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x(MUX,1117)@153
    assign rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_s or i_add165_sobel77_vt_join_q or rightShiftStage0Idx1_uid1116_i_shr_i_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_s)
            1'b0 : rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_q = i_add165_sobel77_vt_join_q;
            1'b1 : rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_q = rightShiftStage0Idx1_uid1116_i_shr_i_i_sobel0_shift_x_q;
            default : rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr_i_i_sobel78_vt_select_29(BITSELECT,202)@153
    assign i_shr_i_i_sobel78_vt_select_29_b = rightShiftStage0_uid1118_i_shr_i_i_sobel0_shift_x_q[29:0];

    // i_shr_i_i_sobel78_vt_join(BITJOIN,201)@153
    assign i_shr_i_i_sobel78_vt_join_q = {i_and7_i_sobel99_vt_const_1_q, i_shr_i_i_sobel78_vt_select_29_b};

    // i_or_i_i_sobel79(LOGICAL,167)@153
    assign i_or_i_i_sobel79_q = i_shr_i_i_sobel78_vt_join_q | i_add165_sobel77_vt_join_q;

    // i_or_i_i_sobel79_vt_select_30(BITSELECT,170)@153
    assign i_or_i_i_sobel79_vt_select_30_b = i_or_i_i_sobel79_q[30:0];

    // i_or_i_i_sobel79_vt_join(BITJOIN,169)@153
    assign i_or_i_i_sobel79_vt_join_q = {GND_q, i_or_i_i_sobel79_vt_select_30_b};

    // i_shr1_i_i_sobel80_vt_const_31(CONSTANT,188)
    assign i_shr1_i_i_sobel80_vt_const_31_q = $unsigned(3'b000);

    // rightShiftStage0Idx1Rng2_uid1082_i_shr1_i_i_sobel0_shift_x(BITSELECT,1081)@153
    assign rightShiftStage0Idx1Rng2_uid1082_i_shr1_i_i_sobel0_shift_x_b = i_or_i_i_sobel79_vt_join_q[31:2];

    // rightShiftStage0Idx1_uid1084_i_shr1_i_i_sobel0_shift_x(BITJOIN,1083)@153
    assign rightShiftStage0Idx1_uid1084_i_shr1_i_i_sobel0_shift_x_q = {i_and7_i_sobel99_vt_const_1_q, rightShiftStage0Idx1Rng2_uid1082_i_shr1_i_i_sobel0_shift_x_b};

    // rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x(MUX,1085)@153
    assign rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_s or i_or_i_i_sobel79_vt_join_q or rightShiftStage0Idx1_uid1084_i_shr1_i_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_s)
            1'b0 : rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_q = i_or_i_i_sobel79_vt_join_q;
            1'b1 : rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_q = rightShiftStage0Idx1_uid1084_i_shr1_i_i_sobel0_shift_x_q;
            default : rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr1_i_i_sobel80_vt_select_28(BITSELECT,190)@153
    assign i_shr1_i_i_sobel80_vt_select_28_b = rightShiftStage0_uid1086_i_shr1_i_i_sobel0_shift_x_q[28:0];

    // i_shr1_i_i_sobel80_vt_join(BITJOIN,189)@153
    assign i_shr1_i_i_sobel80_vt_join_q = {i_shr1_i_i_sobel80_vt_const_31_q, i_shr1_i_i_sobel80_vt_select_28_b};

    // i_or2_i_i_sobel81(LOGICAL,154)@153
    assign i_or2_i_i_sobel81_q = i_shr1_i_i_sobel80_vt_join_q | i_or_i_i_sobel79_vt_join_q;

    // i_or2_i_i_sobel81_vt_select_30(BITSELECT,157)@153
    assign i_or2_i_i_sobel81_vt_select_30_b = i_or2_i_i_sobel81_q[30:0];

    // i_or2_i_i_sobel81_vt_join(BITJOIN,156)@153
    assign i_or2_i_i_sobel81_vt_join_q = {GND_q, i_or2_i_i_sobel81_vt_select_30_b};

    // i_shr3_i_i_sobel82_vt_const_31(CONSTANT,191)
    assign i_shr3_i_i_sobel82_vt_const_31_q = $unsigned(5'b00000);

    // i_and6_i_sobel96_vt_const_3(CONSTANT,55)
    assign i_and6_i_sobel96_vt_const_3_q = $unsigned(4'b0000);

    // rightShiftStage0Idx1Rng4_uid1090_i_shr3_i_i_sobel0_shift_x(BITSELECT,1089)@153
    assign rightShiftStage0Idx1Rng4_uid1090_i_shr3_i_i_sobel0_shift_x_b = i_or2_i_i_sobel81_vt_join_q[31:4];

    // rightShiftStage0Idx1_uid1092_i_shr3_i_i_sobel0_shift_x(BITJOIN,1091)@153
    assign rightShiftStage0Idx1_uid1092_i_shr3_i_i_sobel0_shift_x_q = {i_and6_i_sobel96_vt_const_3_q, rightShiftStage0Idx1Rng4_uid1090_i_shr3_i_i_sobel0_shift_x_b};

    // rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x(MUX,1093)@153
    assign rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_s or i_or2_i_i_sobel81_vt_join_q or rightShiftStage0Idx1_uid1092_i_shr3_i_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_s)
            1'b0 : rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_q = i_or2_i_i_sobel81_vt_join_q;
            1'b1 : rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_q = rightShiftStage0Idx1_uid1092_i_shr3_i_i_sobel0_shift_x_q;
            default : rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr3_i_i_sobel82_vt_select_26(BITSELECT,193)@153
    assign i_shr3_i_i_sobel82_vt_select_26_b = rightShiftStage0_uid1094_i_shr3_i_i_sobel0_shift_x_q[26:0];

    // i_shr3_i_i_sobel82_vt_join(BITJOIN,192)@153
    assign i_shr3_i_i_sobel82_vt_join_q = {i_shr3_i_i_sobel82_vt_const_31_q, i_shr3_i_i_sobel82_vt_select_26_b};

    // i_or4_i_i_sobel83(LOGICAL,158)@153
    assign i_or4_i_i_sobel83_q = i_shr3_i_i_sobel82_vt_join_q | i_or2_i_i_sobel81_vt_join_q;

    // i_or4_i_i_sobel83_vt_select_30(BITSELECT,161)@153
    assign i_or4_i_i_sobel83_vt_select_30_b = i_or4_i_i_sobel83_q[30:0];

    // SE_i_add165_sobel77(STALLENABLE,1586)
    // Valid signal propagation
    assign SE_i_add165_sobel77_V0 = SE_i_add165_sobel77_wireValid;
    // Backward Stall generation
    assign SE_i_add165_sobel77_backStall = SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backStall | ~ (SE_i_add165_sobel77_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add165_sobel77_and0 = SE_redist36_i_mul164_sobel75_vt_select_30_b_1_0_V0;
    assign SE_i_add165_sobel77_wireValid = SE_redist34_i_mul81_sobel76_vt_select_30_b_1_0_V0 & SE_i_add165_sobel77_and0;

    // SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0(STALLREG,2511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid <= 1'b0;
            SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_data0 <= 31'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid <= SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backStall & (SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid | SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_i_valid);

            if (SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_data0 <= i_or4_i_i_sobel83_vt_select_30_b;
                SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_data1 <= i_add165_sobel77_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_i_valid = SE_i_add165_sobel77_V0;
    // Stall signal propagation
    assign SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backStall = SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid | ~ (SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_V = SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid == 1'b1 ? SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid : SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_i_valid;

    // Data0
    assign SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_D0 = SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid == 1'b1 ? SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_data0 : i_or4_i_i_sobel83_vt_select_30_b;
    // Data1
    assign SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_D1 = SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_valid == 1'b1 ? SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_r_data1 : i_add165_sobel77_vt_join_q;

    // redist47_i_add165_sobel77_vt_join_q_2_0(REG,1453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_add165_sobel77_vt_join_q_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backEN == 1'b1)
        begin
            redist47_i_add165_sobel77_vt_join_q_2_0_q <= $unsigned(SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_D1);
        end
    end

    // redist47_i_add165_sobel77_vt_join_q_2_1(REG,1454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_add165_sobel77_vt_join_q_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN == 1'b1)
        begin
            redist47_i_add165_sobel77_vt_join_q_2_1_q <= $unsigned(redist47_i_add165_sobel77_vt_join_q_2_0_q);
        end
    end

    // i_sub_i_sobel92_vt_const_31(CONSTANT,211)
    assign i_sub_i_sobel92_vt_const_31_q = $unsigned(21'b000000000000000000000);

    // i_and6_i_sobel96_vt_const_31(CONSTANT,56)
    assign i_and6_i_sobel96_vt_const_31_q = $unsigned(26'b00000000000000000000000000);

    // redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0(REG,1437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_backEN == 1'b1)
        begin
            redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_q <= $unsigned(SR_SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_D0);
        end
    end

    // i_or4_i_i_sobel83_vt_join(BITJOIN,160)@154
    assign i_or4_i_i_sobel83_vt_join_q = {GND_q, redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_q};

    // i_shr5_i_i_sobel84_vt_const_31(CONSTANT,194)
    assign i_shr5_i_i_sobel84_vt_const_31_q = $unsigned(9'b000000000);

    // leftShiftStage0Idx2Pad8_uid1057_i_shl9_i_sobel0_shift_x(CONSTANT,1056)
    assign leftShiftStage0Idx2Pad8_uid1057_i_shl9_i_sobel0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage0Idx1Rng8_uid1098_i_shr5_i_i_sobel0_shift_x(BITSELECT,1097)@154
    assign rightShiftStage0Idx1Rng8_uid1098_i_shr5_i_i_sobel0_shift_x_b = i_or4_i_i_sobel83_vt_join_q[31:8];

    // rightShiftStage0Idx1_uid1100_i_shr5_i_i_sobel0_shift_x(BITJOIN,1099)@154
    assign rightShiftStage0Idx1_uid1100_i_shr5_i_i_sobel0_shift_x_q = {leftShiftStage0Idx2Pad8_uid1057_i_shl9_i_sobel0_shift_x_q, rightShiftStage0Idx1Rng8_uid1098_i_shr5_i_i_sobel0_shift_x_b};

    // rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x(MUX,1101)@154
    assign rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_s or i_or4_i_i_sobel83_vt_join_q or rightShiftStage0Idx1_uid1100_i_shr5_i_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_s)
            1'b0 : rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_q = i_or4_i_i_sobel83_vt_join_q;
            1'b1 : rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_q = rightShiftStage0Idx1_uid1100_i_shr5_i_i_sobel0_shift_x_q;
            default : rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr5_i_i_sobel84_vt_select_22(BITSELECT,196)@154
    assign i_shr5_i_i_sobel84_vt_select_22_b = rightShiftStage0_uid1102_i_shr5_i_i_sobel0_shift_x_q[22:0];

    // i_shr5_i_i_sobel84_vt_join(BITJOIN,195)@154
    assign i_shr5_i_i_sobel84_vt_join_q = {i_shr5_i_i_sobel84_vt_const_31_q, i_shr5_i_i_sobel84_vt_select_22_b};

    // i_or6_i_i_sobel85(LOGICAL,162)@154
    assign i_or6_i_i_sobel85_q = i_shr5_i_i_sobel84_vt_join_q | i_or4_i_i_sobel83_vt_join_q;

    // i_or6_i_i_sobel85_vt_select_30(BITSELECT,165)@154
    assign i_or6_i_i_sobel85_vt_select_30_b = i_or6_i_i_sobel85_q[30:0];

    // i_or6_i_i_sobel85_vt_join(BITJOIN,164)@154
    assign i_or6_i_i_sobel85_vt_join_q = {GND_q, i_or6_i_i_sobel85_vt_select_30_b};

    // i_shr7_i_i_sobel86_vt_const_31(CONSTANT,197)
    assign i_shr7_i_i_sobel86_vt_const_31_q = $unsigned(16'b0000000000000000);

    // rightShiftStage0Idx1Rng16_uid1106_i_shr7_i_i_sobel0_shift_x(BITSELECT,1105)@154
    assign rightShiftStage0Idx1Rng16_uid1106_i_shr7_i_i_sobel0_shift_x_b = i_or6_i_i_sobel85_vt_join_q[31:16];

    // rightShiftStage0Idx1_uid1108_i_shr7_i_i_sobel0_shift_x(BITJOIN,1107)@154
    assign rightShiftStage0Idx1_uid1108_i_shr7_i_i_sobel0_shift_x_q = {i_shr7_i_i_sobel86_vt_const_31_q, rightShiftStage0Idx1Rng16_uid1106_i_shr7_i_i_sobel0_shift_x_b};

    // rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x(MUX,1109)@154
    assign rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_s or i_or6_i_i_sobel85_vt_join_q or rightShiftStage0Idx1_uid1108_i_shr7_i_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_s)
            1'b0 : rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_q = i_or6_i_i_sobel85_vt_join_q;
            1'b1 : rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_q = rightShiftStage0Idx1_uid1108_i_shr7_i_i_sobel0_shift_x_q;
            default : rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr7_i_i_sobel86_vt_select_15(BITSELECT,199)@154
    assign i_shr7_i_i_sobel86_vt_select_15_b = rightShiftStage0_uid1110_i_shr7_i_i_sobel0_shift_x_q[15:0];

    // i_shr7_i_i_sobel86_vt_join(BITJOIN,198)@154
    assign i_shr7_i_i_sobel86_vt_join_q = {i_shr7_i_i_sobel86_vt_const_31_q, i_shr7_i_i_sobel86_vt_select_15_b};

    // i_or8_i_i_sobel87(LOGICAL,166)@154
    assign i_or8_i_i_sobel87_q = i_shr7_i_i_sobel86_vt_join_q | i_or6_i_i_sobel85_vt_join_q;

    // i_neg_i_i_sobel88(LOGICAL,151)@154
    assign i_neg_i_i_sobel88_q = i_or8_i_i_sobel87_q ^ c_i32_1118_q;

    // i_llvm_ctpop_i32_unnamed_sobel14_sobel89(EXTIFACE,95)@154
    assign i_llvm_ctpop_i32_unnamed_sobel14_sobel89_data = i_neg_i_i_sobel88_q;
    acl_popcount #(
        .DATA_WIDTH(32),
        .PIPELINE_DEPTH(0)
    ) thei_llvm_ctpop_i32_unnamed_sobel14_sobel89 (
        .data(i_neg_i_i_sobel88_q),
        .sum(i_llvm_ctpop_i32_unnamed_sobel14_sobel89_sum),
        .clock(clock)
    );

    // bubble_join_i_llvm_ctpop_i32_unnamed_sobel14_sobel89(BITJOIN,1461)
    assign bubble_join_i_llvm_ctpop_i32_unnamed_sobel14_sobel89_q = i_llvm_ctpop_i32_unnamed_sobel14_sobel89_sum;

    // bubble_select_i_llvm_ctpop_i32_unnamed_sobel14_sobel89(BITSELECT,1462)
    assign bubble_select_i_llvm_ctpop_i32_unnamed_sobel14_sobel89_b = $unsigned(bubble_join_i_llvm_ctpop_i32_unnamed_sobel14_sobel89_q[31:0]);

    // i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_select_5(BITSELECT,98)@154
    assign i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_select_5_b = bubble_select_i_llvm_ctpop_i32_unnamed_sobel14_sobel89_b[5:0];

    // i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_join(BITJOIN,97)@154
    assign i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_join_q = {i_and6_i_sobel96_vt_const_31_q, i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_select_5_b};

    // c_i32_1054127(CONSTANT,25)
    assign c_i32_1054127_q = $unsigned(32'b00000000000000000000010000011110);

    // i_sub_i_sobel92(SUB,210)@154
    assign i_sub_i_sobel92_a = {1'b0, c_i32_1054127_q};
    assign i_sub_i_sobel92_b = {1'b0, i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_join_q};
    assign i_sub_i_sobel92_o = $unsigned(i_sub_i_sobel92_a) - $unsigned(i_sub_i_sobel92_b);
    assign i_sub_i_sobel92_q = i_sub_i_sobel92_o[32:0];

    // bgTrunc_i_sub_i_sobel92_sel_x(BITSELECT,317)@154
    assign bgTrunc_i_sub_i_sobel92_sel_x_b = $unsigned(i_sub_i_sobel92_q[31:0]);

    // i_sub_i_sobel92_vt_select_10(BITSELECT,213)@154
    assign i_sub_i_sobel92_vt_select_10_b = bgTrunc_i_sub_i_sobel92_sel_x_b[10:0];

    // i_sub_i_sobel92_vt_join(BITJOIN,212)@154
    assign i_sub_i_sobel92_vt_join_q = {i_sub_i_sobel92_vt_const_31_q, i_sub_i_sobel92_vt_select_10_b};

    // i_cmp_i_sobel90(LOGICAL,67)@154
    assign i_cmp_i_sobel90_q = $unsigned(i_or8_i_i_sobel87_q == c_i32_0126_q ? 1'b1 : 1'b0);

    // i_unnamed_sobel93(MUX,216)@154
    assign i_unnamed_sobel93_s = i_cmp_i_sobel90_q;
    always @(i_unnamed_sobel93_s or i_sub_i_sobel92_vt_join_q or c_i32_0126_q)
    begin
        unique case (i_unnamed_sobel93_s)
            1'b0 : i_unnamed_sobel93_q = i_sub_i_sobel92_vt_join_q;
            1'b1 : i_unnamed_sobel93_q = c_i32_0126_q;
            default : i_unnamed_sobel93_q = 32'b0;
        endcase
    end

    // i_unnamed_sobel93_vt_select_10(BITSELECT,219)@154
    assign i_unnamed_sobel93_vt_select_10_b = i_unnamed_sobel93_q[10:0];

    // redist31_i_unnamed_sobel93_vt_select_10_b_1_0(REG,1436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_unnamed_sobel93_vt_select_10_b_1_0_q <= $unsigned(11'b00000000000);
        end
        else if (SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN == 1'b1)
        begin
            redist31_i_unnamed_sobel93_vt_select_10_b_1_0_q <= $unsigned(i_unnamed_sobel93_vt_select_10_b);
        end
    end

    // i_unnamed_sobel93_vt_join(BITJOIN,218)@155
    assign i_unnamed_sobel93_vt_join_q = {i_sub_i_sobel92_vt_const_31_q, redist31_i_unnamed_sobel93_vt_select_10_b_1_0_q};

    // leftShiftStage0Idx3Rng3_uid1047_i_shl12_i_sobel0_shift_x(BITSELECT,1046)@155
    assign leftShiftStage0Idx3Rng3_uid1047_i_shl12_i_sobel0_shift_x_in = leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid1047_i_shl12_i_sobel0_shift_x_b = leftShiftStage0Idx3Rng3_uid1047_i_shl12_i_sobel0_shift_x_in[60:0];

    // leftShiftStage0Idx3_uid1048_i_shl12_i_sobel0_shift_x(BITJOIN,1047)@155
    assign leftShiftStage0Idx3_uid1048_i_shl12_i_sobel0_shift_x_q = {leftShiftStage0Idx3Rng3_uid1047_i_shl12_i_sobel0_shift_x_b, i_shr1_i_i_sobel80_vt_const_31_q};

    // leftShiftStage0Idx2Rng2_uid1044_i_shl12_i_sobel0_shift_x(BITSELECT,1043)@155
    assign leftShiftStage0Idx2Rng2_uid1044_i_shl12_i_sobel0_shift_x_in = leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid1044_i_shl12_i_sobel0_shift_x_b = leftShiftStage0Idx2Rng2_uid1044_i_shl12_i_sobel0_shift_x_in[61:0];

    // leftShiftStage0Idx2_uid1045_i_shl12_i_sobel0_shift_x(BITJOIN,1044)@155
    assign leftShiftStage0Idx2_uid1045_i_shl12_i_sobel0_shift_x_q = {leftShiftStage0Idx2Rng2_uid1044_i_shl12_i_sobel0_shift_x_b, i_and7_i_sobel99_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid1041_i_shl12_i_sobel0_shift_x(BITSELECT,1040)@155
    assign leftShiftStage0Idx1Rng1_uid1041_i_shl12_i_sobel0_shift_x_in = leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid1041_i_shl12_i_sobel0_shift_x_b = leftShiftStage0Idx1Rng1_uid1041_i_shl12_i_sobel0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid1042_i_shl12_i_sobel0_shift_x(BITJOIN,1041)@155
    assign leftShiftStage0Idx1_uid1042_i_shl12_i_sobel0_shift_x_q = {leftShiftStage0Idx1Rng1_uid1041_i_shl12_i_sobel0_shift_x_b, GND_q};

    // leftShiftStage0Idx3Rng12_uid1061_i_shl9_i_sobel0_shift_x(BITSELECT,1060)@155
    assign leftShiftStage0Idx3Rng12_uid1061_i_shl9_i_sobel0_shift_x_in = leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q[51:0];
    assign leftShiftStage0Idx3Rng12_uid1061_i_shl9_i_sobel0_shift_x_b = leftShiftStage0Idx3Rng12_uid1061_i_shl9_i_sobel0_shift_x_in[51:0];

    // leftShiftStage0Idx3Pad12_uid1060_i_shl9_i_sobel0_shift_x(CONSTANT,1059)
    assign leftShiftStage0Idx3Pad12_uid1060_i_shl9_i_sobel0_shift_x_q = $unsigned(12'b000000000000);

    // leftShiftStage0Idx3_uid1062_i_shl9_i_sobel0_shift_x(BITJOIN,1061)@155
    assign leftShiftStage0Idx3_uid1062_i_shl9_i_sobel0_shift_x_q = {leftShiftStage0Idx3Rng12_uid1061_i_shl9_i_sobel0_shift_x_b, leftShiftStage0Idx3Pad12_uid1060_i_shl9_i_sobel0_shift_x_q};

    // leftShiftStage0Idx2Rng8_uid1058_i_shl9_i_sobel0_shift_x(BITSELECT,1057)@155
    assign leftShiftStage0Idx2Rng8_uid1058_i_shl9_i_sobel0_shift_x_in = leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q[55:0];
    assign leftShiftStage0Idx2Rng8_uid1058_i_shl9_i_sobel0_shift_x_b = leftShiftStage0Idx2Rng8_uid1058_i_shl9_i_sobel0_shift_x_in[55:0];

    // leftShiftStage0Idx2_uid1059_i_shl9_i_sobel0_shift_x(BITJOIN,1058)@155
    assign leftShiftStage0Idx2_uid1059_i_shl9_i_sobel0_shift_x_q = {leftShiftStage0Idx2Rng8_uid1058_i_shl9_i_sobel0_shift_x_b, leftShiftStage0Idx2Pad8_uid1057_i_shl9_i_sobel0_shift_x_q};

    // leftShiftStage0Idx1Rng4_uid1055_i_shl9_i_sobel0_shift_x(BITSELECT,1054)@155
    assign leftShiftStage0Idx1Rng4_uid1055_i_shl9_i_sobel0_shift_x_in = leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q[59:0];
    assign leftShiftStage0Idx1Rng4_uid1055_i_shl9_i_sobel0_shift_x_b = leftShiftStage0Idx1Rng4_uid1055_i_shl9_i_sobel0_shift_x_in[59:0];

    // leftShiftStage0Idx1_uid1056_i_shl9_i_sobel0_shift_x(BITJOIN,1055)@155
    assign leftShiftStage0Idx1_uid1056_i_shl9_i_sobel0_shift_x_q = {leftShiftStage0Idx1Rng4_uid1055_i_shl9_i_sobel0_shift_x_b, i_and6_i_sobel96_vt_const_3_q};

    // leftShiftStage0Idx3Rng48_uid1075_i_shl_i_sobel0_shift_x(BITSELECT,1074)@155
    assign leftShiftStage0Idx3Rng48_uid1075_i_shl_i_sobel0_shift_x_in = i_conv4_i_sobel94_vt_join_q[15:0];
    assign leftShiftStage0Idx3Rng48_uid1075_i_shl_i_sobel0_shift_x_b = leftShiftStage0Idx3Rng48_uid1075_i_shl_i_sobel0_shift_x_in[15:0];

    // leftShiftStage0Idx3Pad48_uid1074_i_shl_i_sobel0_shift_x(CONSTANT,1073)
    assign leftShiftStage0Idx3Pad48_uid1074_i_shl_i_sobel0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid1076_i_shl_i_sobel0_shift_x(BITJOIN,1075)@155
    assign leftShiftStage0Idx3_uid1076_i_shl_i_sobel0_shift_x_q = {leftShiftStage0Idx3Rng48_uid1075_i_shl_i_sobel0_shift_x_b, leftShiftStage0Idx3Pad48_uid1074_i_shl_i_sobel0_shift_x_q};

    // leftShiftStage0Idx2Rng32_uid1072_i_shl_i_sobel0_shift_x(BITSELECT,1071)@155
    assign leftShiftStage0Idx2Rng32_uid1072_i_shl_i_sobel0_shift_x_in = i_conv4_i_sobel94_vt_join_q[31:0];
    assign leftShiftStage0Idx2Rng32_uid1072_i_shl_i_sobel0_shift_x_b = leftShiftStage0Idx2Rng32_uid1072_i_shl_i_sobel0_shift_x_in[31:0];

    // leftShiftStage0Idx2_uid1073_i_shl_i_sobel0_shift_x(BITJOIN,1072)@155
    assign leftShiftStage0Idx2_uid1073_i_shl_i_sobel0_shift_x_q = {leftShiftStage0Idx2Rng32_uid1072_i_shl_i_sobel0_shift_x_b, c_i32_0126_q};

    // leftShiftStage0Idx1Rng16_uid1069_i_shl_i_sobel0_shift_x(BITSELECT,1068)@155
    assign leftShiftStage0Idx1Rng16_uid1069_i_shl_i_sobel0_shift_x_in = i_conv4_i_sobel94_vt_join_q[47:0];
    assign leftShiftStage0Idx1Rng16_uid1069_i_shl_i_sobel0_shift_x_b = leftShiftStage0Idx1Rng16_uid1069_i_shl_i_sobel0_shift_x_in[47:0];

    // leftShiftStage0Idx1_uid1070_i_shl_i_sobel0_shift_x(BITJOIN,1069)@155
    assign leftShiftStage0Idx1_uid1070_i_shl_i_sobel0_shift_x_q = {leftShiftStage0Idx1Rng16_uid1069_i_shl_i_sobel0_shift_x_b, i_shr7_i_i_sobel86_vt_const_31_q};

    // i_conv4_i_sobel94_vt_const_63(CONSTANT,69)
    assign i_conv4_i_sobel94_vt_const_63_q = $unsigned(33'b000000000000000000000000000000000);

    // i_conv4_i_sobel94_sel_x(BITSELECT,526)@155
    assign i_conv4_i_sobel94_sel_x_b = {32'b00000000000000000000000000000000, redist47_i_add165_sobel77_vt_join_q_2_1_q[31:0]};

    // i_conv4_i_sobel94_vt_select_30(BITSELECT,71)@155
    assign i_conv4_i_sobel94_vt_select_30_b = i_conv4_i_sobel94_sel_x_b[30:0];

    // i_conv4_i_sobel94_vt_join(BITJOIN,70)@155
    assign i_conv4_i_sobel94_vt_join_q = {i_conv4_i_sobel94_vt_const_63_q, i_conv4_i_sobel94_vt_select_30_b};

    // i_sh_prom_i_sobel97_vt_const_63(CONSTANT,185)
    assign i_sh_prom_i_sobel97_vt_const_63_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // i_add_i_sobel95_vt_const_31(CONSTANT,50)
    assign i_add_i_sobel95_vt_const_31_q = $unsigned(25'b0000000000000000000000000);

    // c_i32_21128(CONSTANT,30)
    assign c_i32_21128_q = $unsigned(32'b00000000000000000000000000010101);

    // i_add_i_sobel95(ADD,49)@154
    assign i_add_i_sobel95_a = {1'b0, i_llvm_ctpop_i32_unnamed_sobel14_sobel89_vt_join_q};
    assign i_add_i_sobel95_b = {1'b0, c_i32_21128_q};
    assign i_add_i_sobel95_o = $unsigned(i_add_i_sobel95_a) + $unsigned(i_add_i_sobel95_b);
    assign i_add_i_sobel95_q = i_add_i_sobel95_o[32:0];

    // bgTrunc_i_add_i_sobel95_sel_x(BITSELECT,304)@154
    assign bgTrunc_i_add_i_sobel95_sel_x_b = i_add_i_sobel95_q[31:0];

    // i_add_i_sobel95_vt_select_6(BITSELECT,52)@154
    assign i_add_i_sobel95_vt_select_6_b = bgTrunc_i_add_i_sobel95_sel_x_b[6:0];

    // i_add_i_sobel95_vt_join(BITJOIN,51)@154
    assign i_add_i_sobel95_vt_join_q = {i_add_i_sobel95_vt_const_31_q, i_add_i_sobel95_vt_select_6_b};

    // i_and10_trunc_i_sobel102_sel_x_merged_bit_select(BITSELECT,1341)@154
    assign i_and10_trunc_i_sobel102_sel_x_merged_bit_select_in = i_add_i_sobel95_vt_join_q[5:0];
    assign i_and10_trunc_i_sobel102_sel_x_merged_bit_select_b = i_and10_trunc_i_sobel102_sel_x_merged_bit_select_in[1:0];
    assign i_and10_trunc_i_sobel102_sel_x_merged_bit_select_c = i_and10_trunc_i_sobel102_sel_x_merged_bit_select_in[5:4];
    assign i_and10_trunc_i_sobel102_sel_x_merged_bit_select_d = i_and10_trunc_i_sobel102_sel_x_merged_bit_select_in[3:2];

    // i_and6_i_sobel96_join(BITJOIN,638)@154
    assign i_and6_i_sobel96_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and10_trunc_i_sobel102_sel_x_merged_bit_select_c, GND_q, GND_q, GND_q, GND_q};

    // i_and6_i_sobel96_vt_select_5(BITSELECT,58)@154
    assign i_and6_i_sobel96_vt_select_5_b = i_and6_i_sobel96_join_q[5:4];

    // i_and6_i_sobel96_vt_join(BITJOIN,57)@154
    assign i_and6_i_sobel96_vt_join_q = {i_and6_i_sobel96_vt_const_31_q, i_and6_i_sobel96_vt_select_5_b, i_and6_i_sobel96_vt_const_3_q};

    // i_sh_prom_i_sobel97_sel_x(BITSELECT,558)@154
    assign i_sh_prom_i_sobel97_sel_x_b = {32'b00000000000000000000000000000000, i_and6_i_sobel96_vt_join_q[31:0]};

    // i_sh_prom_i_sobel97_vt_select_5(BITSELECT,187)@154
    assign i_sh_prom_i_sobel97_vt_select_5_b = i_sh_prom_i_sobel97_sel_x_b[5:4];

    // i_sh_prom_i_sobel97_vt_join(BITJOIN,186)@154
    assign i_sh_prom_i_sobel97_vt_join_q = {i_sh_prom_i_sobel97_vt_const_63_q, i_sh_prom_i_sobel97_vt_select_5_b, i_and6_i_sobel96_vt_const_3_q};

    // i_shl_i_sobel0_shift_narrow_x(BITSELECT,569)@154
    assign i_shl_i_sobel0_shift_narrow_x_b = i_sh_prom_i_sobel97_vt_join_q[5:0];

    // leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x(BITSELECT,1076)@154
    assign leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b = i_shl_i_sobel0_shift_narrow_x_b[5:4];

    // redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0(REG,1413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN == 1'b1)
        begin
            redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_q <= $unsigned(leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b);
        end
    end

    // leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x(MUX,1077)@155
    assign leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_s = redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_q;
    always @(leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_s or i_conv4_i_sobel94_vt_join_q or leftShiftStage0Idx1_uid1070_i_shl_i_sobel0_shift_x_q or leftShiftStage0Idx2_uid1073_i_shl_i_sobel0_shift_x_q or leftShiftStage0Idx3_uid1076_i_shl_i_sobel0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_s)
            2'b00 : leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q = i_conv4_i_sobel94_vt_join_q;
            2'b01 : leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q = leftShiftStage0Idx1_uid1070_i_shl_i_sobel0_shift_x_q;
            2'b10 : leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q = leftShiftStage0Idx2_uid1073_i_shl_i_sobel0_shift_x_q;
            2'b11 : leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q = leftShiftStage0Idx3_uid1076_i_shl_i_sobel0_shift_x_q;
            default : leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom8_i_sobel100_vt_const_63(CONSTANT,180)
    assign i_sh_prom8_i_sobel100_vt_const_63_q = $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);

    // i_and7_i_sobel99_vt_const_31(CONSTANT,61)
    assign i_and7_i_sobel99_vt_const_31_q = $unsigned(28'b0000000000000000000000000000);

    // i_and7_i_sobel99_join(BITJOIN,640)@154
    assign i_and7_i_sobel99_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and10_trunc_i_sobel102_sel_x_merged_bit_select_d, GND_q, GND_q};

    // i_and7_i_sobel99_vt_select_3(BITSELECT,63)@154
    assign i_and7_i_sobel99_vt_select_3_b = i_and7_i_sobel99_join_q[3:2];

    // i_and7_i_sobel99_vt_join(BITJOIN,62)@154
    assign i_and7_i_sobel99_vt_join_q = {i_and7_i_sobel99_vt_const_31_q, i_and7_i_sobel99_vt_select_3_b, i_and7_i_sobel99_vt_const_1_q};

    // i_sh_prom8_i_sobel100_sel_x(BITSELECT,557)@154
    assign i_sh_prom8_i_sobel100_sel_x_b = {32'b00000000000000000000000000000000, i_and7_i_sobel99_vt_join_q[31:0]};

    // i_sh_prom8_i_sobel100_vt_select_3(BITSELECT,182)@154
    assign i_sh_prom8_i_sobel100_vt_select_3_b = i_sh_prom8_i_sobel100_sel_x_b[3:2];

    // i_sh_prom8_i_sobel100_vt_join(BITJOIN,181)@154
    assign i_sh_prom8_i_sobel100_vt_join_q = {i_sh_prom8_i_sobel100_vt_const_63_q, i_sh_prom8_i_sobel100_vt_select_3_b, i_and7_i_sobel99_vt_const_1_q};

    // i_shl9_i_sobel0_shift_narrow_x(BITSELECT,565)@154
    assign i_shl9_i_sobel0_shift_narrow_x_b = i_sh_prom8_i_sobel100_vt_join_q[5:0];

    // leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x(BITSELECT,1062)@154
    assign leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_in = i_shl9_i_sobel0_shift_narrow_x_b[3:0];
    assign leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_b = leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_in[3:2];

    // redist1_leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_b_1_0(REG,1414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN == 1'b1)
        begin
            redist1_leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_b_1_0_q <= $unsigned(leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_b);
        end
    end

    // leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x(MUX,1063)@155
    assign leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_s = redist1_leftShiftStageSel2Dto2_uid1063_i_shl9_i_sobel0_shift_x_b_1_0_q;
    always @(leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_s or leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q or leftShiftStage0Idx1_uid1056_i_shl9_i_sobel0_shift_x_q or leftShiftStage0Idx2_uid1059_i_shl9_i_sobel0_shift_x_q or leftShiftStage0Idx3_uid1062_i_shl9_i_sobel0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_s)
            2'b00 : leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q = leftShiftStage0_uid1078_i_shl_i_sobel0_shift_x_q;
            2'b01 : leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q = leftShiftStage0Idx1_uid1056_i_shl9_i_sobel0_shift_x_q;
            2'b10 : leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q = leftShiftStage0Idx2_uid1059_i_shl9_i_sobel0_shift_x_q;
            2'b11 : leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q = leftShiftStage0Idx3_uid1062_i_shl9_i_sobel0_shift_x_q;
            default : leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom1126_i_sobel103_vt_const_63(CONSTANT,175)
    assign i_sh_prom1126_i_sobel103_vt_const_63_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_sh_prom1126_i_sobel103_sel_x(BITSELECT,556)@154
    assign i_sh_prom1126_i_sobel103_sel_x_b = {62'b00000000000000000000000000000000000000000000000000000000000000, i_and10_trunc_i_sobel102_sel_x_merged_bit_select_b[1:0]};

    // i_sh_prom1126_i_sobel103_vt_select_1(BITSELECT,177)@154
    assign i_sh_prom1126_i_sobel103_vt_select_1_b = i_sh_prom1126_i_sobel103_sel_x_b[1:0];

    // i_sh_prom1126_i_sobel103_vt_join(BITJOIN,176)@154
    assign i_sh_prom1126_i_sobel103_vt_join_q = {i_sh_prom1126_i_sobel103_vt_const_63_q, i_sh_prom1126_i_sobel103_vt_select_1_b};

    // i_shl12_i_sobel0_shift_narrow_x(BITSELECT,561)@154
    assign i_shl12_i_sobel0_shift_narrow_x_b = i_sh_prom1126_i_sobel103_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x(BITSELECT,1048)@154
    assign leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_in = i_shl12_i_sobel0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_b = leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_in[1:0];

    // redist2_leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_b_1_0(REG,1415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN == 1'b1)
        begin
            redist2_leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_b_1_0_q <= $unsigned(leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_b);
        end
    end

    // leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x(MUX,1049)@155
    assign leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_s = redist2_leftShiftStageSel0Dto0_uid1049_i_shl12_i_sobel0_shift_x_b_1_0_q;
    always @(leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_s or leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q or leftShiftStage0Idx1_uid1042_i_shl12_i_sobel0_shift_x_q or leftShiftStage0Idx2_uid1045_i_shl12_i_sobel0_shift_x_q or leftShiftStage0Idx3_uid1048_i_shl12_i_sobel0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_s)
            2'b00 : leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_q = leftShiftStage0_uid1064_i_shl9_i_sobel0_shift_x_q;
            2'b01 : leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_q = leftShiftStage0Idx1_uid1042_i_shl12_i_sobel0_shift_x_q;
            2'b10 : leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_q = leftShiftStage0Idx2_uid1045_i_shl12_i_sobel0_shift_x_q;
            2'b11 : leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_q = leftShiftStage0Idx3_uid1048_i_shl12_i_sobel0_shift_x_q;
            default : leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,535)@155
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_2106_q, redist47_i_add165_sobel77_vt_join_q_2_1_q, i_unnamed_sobel93_vt_join_q, leftShiftStage0_uid1050_i_shl12_i_sobel0_shift_x_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x(CHOOSEBITS,534)@155
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[127:127], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[74:74], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[73:73], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[72:72], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[71:71], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[70:70], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[69:69], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[68:68], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[67:67], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[66:66], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[65:65], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[64:64], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[31:31], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[15:15], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[7:7], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[6:6], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[5:5], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[4:4], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[3:3], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[2:2], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[1:1], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_a[0:0]};

    // SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0(STALLENABLE,2268)
    // Valid signal propagation
    assign SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_V0 = SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_s_tv_0 = i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_o_stall & SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN = ~ (SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_v_s_0 = SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN & SE_redist32_i_or4_i_i_sobel83_vt_select_30_b_1_0_V0;
    // Backward Stall generation
    assign SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backStall = ~ (SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_R_v_0 <= SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_R_v_0 & SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_R_v_0 <= SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_v_s_0;
            end

        end
    end

    // i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x(BLACKBOX,555)@155
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@197
    // out out_c0_exit51_0_tpl@197
    // out out_c0_exit51_1_tpl@197
    sobel_i_sfc_s_c0_in_for_body3_s_c0_enter486_sobel110 thei_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_2_fifo_backStall),
        .in_i_valid(SE_redist0_leftShiftStageSel4Dto4_uid1077_i_shl_i_sobel0_shift_x_b_1_0_V0),
        .in_c0_eni147_0_tpl(GND_q),
        .in_c0_eni147_1_tpl(i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_int_to_double_fpgaunique_0s_v64i32_or16_shuffle_i_sobel0_NO_NAME_x_q),
        .out_o_stall(i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_o_valid),
        .out_c0_exit51_0_tpl(),
        .out_c0_exit51_1_tpl(i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_c0_exit51_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,2320)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = i_llvm_fpga_mem_memdep_sobel112_out_o_stall | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_valid_out;
    assign SE_out_coalesced_delay_2_fifo_wireValid = i_sfc_s_c0_in_for_body3_sobels_c0_enter486_sobel110_aunroll_x_out_o_valid & SE_out_coalesced_delay_2_fifo_and0;

    // coalesced_delay_2_fifo(STALLFIFO,1457)
    assign coalesced_delay_2_fifo_valid_in = SE_i_arrayidx170_sobel0_dupName_0_add_x_V0;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(83),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2(STALLENABLE,1644)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg5 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed0 = (~ (SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed2 = (~ (SE_i_masked_sobel47_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed3 = (~ (SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed4 = (~ (SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed5 = (~ (SE_i_arrayidx170_sobel0_dupName_0_add_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg5;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_toReg5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed5;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_consumed5 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_or4);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg4);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_wireValid = i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_valid_out;

    // SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0(STALLENABLE,2290)
    // Valid signal propagation
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V0 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_0;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V1 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_1;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V2 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_2;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V3 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_3;
    // Stall signal propagation
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_0 = SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_backStall & SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_0;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_1 = SR_SE_i_arrayidx113_sobel0_dupName_0_add_x_backStall & SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_1;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_2 = SR_SE_i_arrayidx11_sobel0_dupName_0_add_x_backStall & SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_2;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_3 = SE_i_arrayidx170_sobel0_dupName_0_add_x_backStall & SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_3;
    // Backward Enable generation
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or0 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_0;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or1 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_1 | SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or0;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or2 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_2 | SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or1;
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN = ~ (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_3 | SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_v_s_0 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_pop_i32_i_082_pop12_sobel4_V0;
    // Backward Stall generation
    assign SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backStall = ~ (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_2 <= 1'b0;
            SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_0 <= SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_0 & SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_0 <= SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_1 <= SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_1 & SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_1 <= SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_2 <= SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_2 & SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_2 <= SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_3 <= SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_3 & SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_s_tv_3;
            end
            else
            begin
                SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_R_v_3 <= SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx170_sobel0_dupName_0_add_x(STALLENABLE,1777)
    // Valid signal propagation
    assign SE_i_arrayidx170_sobel0_dupName_0_add_x_V0 = SE_i_arrayidx170_sobel0_dupName_0_add_x_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx170_sobel0_dupName_0_add_x_backStall = coalesced_delay_2_fifo_stall_out | ~ (SE_i_arrayidx170_sobel0_dupName_0_add_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx170_sobel0_dupName_0_add_x_and0 = SE_redist24_bgTrunc_i_sub4_sobel17_sel_x_b_1_0_V3;
    assign SE_i_arrayidx170_sobel0_dupName_0_add_x_and1 = SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_V0 & SE_i_arrayidx170_sobel0_dupName_0_add_x_and0;
    assign SE_i_arrayidx170_sobel0_dupName_0_add_x_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_V5 & SE_i_arrayidx170_sobel0_dupName_0_add_x_and1;

    // SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,2286)
    // Valid signal propagation
    assign SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SE_i_arrayidx170_sobel0_dupName_0_add_x_backStall & SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1(STALLENABLE,2436)
    // Valid signal propagation
    assign SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_stall_out | ~ (SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_wireValid = bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x(BLACKBOX,537)@114
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    sobel_i_llvm_fpga_ffwd_dest_s_struct_z5pA000000Znnamed_sobel4_sobel0 thei_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x (
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_backStall),
        .in_valid_in(SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_V0),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_valid_out),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x(STALLENABLE,1843)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_backStall = SE_redist20_i_arrayidx170_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_and0 = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_wireValid = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V2 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_and0;

    // SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23(STALLENABLE,1671)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_V0 = SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_backStall = i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_and0 = SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_V0;
    assign SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V5 & SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_and0;

    // SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1(STALLENABLE,2306)
    // Valid signal propagation
    assign SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_V0 = SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_s_tv_0 = SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_backStall & SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_backEN = ~ (SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_v_s_0 = SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_backEN & SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V1;
    // Backward Stall generation
    assign SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_backStall = ~ (SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_R_v_0 <= SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_R_v_0 & SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_R_v_0 <= SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_v_s_0;
            end

        end
    end

    // SE_i_arrayidx11_sobel0_mult_x_sums_align_0(STALLENABLE,1877)
    // Valid signal propagation
    assign SE_i_arrayidx11_sobel0_mult_x_sums_align_0_V0 = SE_i_arrayidx11_sobel0_mult_x_sums_align_0_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx11_sobel0_mult_x_sums_align_0_backStall = SE_redist13_i_arrayidx92_sobel0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_i_arrayidx11_sobel0_mult_x_sums_align_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx11_sobel0_mult_x_sums_align_0_and0 = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V0;
    assign SE_i_arrayidx11_sobel0_mult_x_sums_align_0_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel5_sobel1_aunroll_x_V1 & SE_i_arrayidx11_sobel0_mult_x_sums_align_0_and0;

    // SE_i_arrayidx11_sobel0_mult_x_im0_add_3(STALLENABLE,2054)
    // Valid signal propagation
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V0 = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_0;
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V1 = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_1;
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_V2 = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_0 = SE_i_arrayidx11_sobel0_mult_x_sums_align_0_backStall & SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_0;
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_1 = SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_backStall & SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_1;
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_2 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel0_aunroll_x_backStall & SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_or0 = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_0;
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_or1 = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_1 | SE_i_arrayidx11_sobel0_mult_x_im0_add_3_or0;
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN = ~ (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_2 | SE_i_arrayidx11_sobel0_mult_x_im0_add_3_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_v_s_0 = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN & SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_V0;
    // Backward Stall generation
    assign SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backStall = ~ (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_0 <= 1'b0;
            SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_1 <= 1'b0;
            SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b0)
            begin
                SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_0 <= SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_0 & SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_0 <= SE_i_arrayidx11_sobel0_mult_x_im0_add_3_v_s_0;
            end

            if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b0)
            begin
                SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_1 <= SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_1 & SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_1 <= SE_i_arrayidx11_sobel0_mult_x_im0_add_3_v_s_0;
            end

            if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b0)
            begin
                SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_2 <= SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_2 & SE_i_arrayidx11_sobel0_mult_x_im0_add_3_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx11_sobel0_mult_x_im0_add_3_R_v_2 <= SE_i_arrayidx11_sobel0_mult_x_im0_add_3_v_s_0;
            end

        end
    end

    // SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0(STALLENABLE,2289)
    // Valid signal propagation
    assign SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_V0 = SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_s_tv_0 = SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backStall & SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backEN = ~ (SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_v_s_0 = SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_V0;
    // Backward Stall generation
    assign SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backStall = ~ (SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_R_v_0 <= SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_R_v_0 & SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_R_v_0 <= SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7(STALLENABLE,1650)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_V0 = SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_backStall = SE_redist23_bgTrunc_i_sub_sobel25_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_wireValid = i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23(STALLENABLE,1672)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_wireValid = i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_valid_out;

    // redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_0(REG,1446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx11_sobel0_mult_x_im0_add_3_backEN == 1'b1)
        begin
            redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_0_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_1_0_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1(REG,1447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_backEN == 1'b1)
        begin
            redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_q <= $unsigned(redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_0_q);
        end
    end

    // i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23(BLACKBOX,127)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    sobel_i_llvm_fpga_push_i32_j_083_pop930_push15_0 thei_llvm_fpga_push_i32_j_083_pop930_push15_sobel23 (
        .in_data_in(redist40_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out_3_1_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_feedback_stall_out_15),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_sobel3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,1577)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,1578)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,1400)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7(BLACKBOX,116)@111
    // in in_stall_in@20000000
    // out out_data_out@112
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@112
    sobel_i_llvm_fpga_pop_i32_j_083_pop930_pop15_0 thei_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7 (
        .in_data_in(sel_for_coalesced_delay_0_b),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_15(i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0(STALLENABLE,2271)
    // Valid signal propagation
    assign SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_V0 = SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_0;
    assign SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_V1 = SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_1;
    // Stall signal propagation
    assign SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_s_tv_0 = SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_backStall & SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_0;
    assign SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_s_tv_1 = SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backStall & SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_1;
    // Backward Enable generation
    assign SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_or0 = SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_s_tv_0;
    assign SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backEN = ~ (SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_s_tv_1 | SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_v_s_0 = SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backEN & SE_out_coalesced_delay_0_fifo_V0;
    // Backward Stall generation
    assign SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backStall = ~ (SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_0 <= 1'b0;
            SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backEN == 1'b0)
            begin
                SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_0 <= SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_0 & SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_s_tv_0;
            end
            else
            begin
                SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_0 <= SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_v_s_0;
            end

            if (SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backEN == 1'b0)
            begin
                SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_1 <= SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_1 & SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_s_tv_1;
            end
            else
            begin
                SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_R_v_1 <= SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_v_s_0;
            end

        end
    end

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,2316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_redist4_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_111_0_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_j_083_pop930_pop15_sobel7_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // coalesced_delay_0_fifo(STALLFIFO,1455)
    assign coalesced_delay_0_fifo_valid_in = SE_out_sobel_B3_merge_reg_aunroll_x_V4;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(111),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo(STALLFIFO,1421)
    assign redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_in = SE_out_sobel_B3_merge_reg_aunroll_x_V3;
    assign redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_in = SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_backStall;
    assign redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_data_in = bubble_select_sobel_B3_merge_reg_aunroll_x_g;
    assign redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_in_bitsignaltemp = redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_in[0];
    assign redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_in_bitsignaltemp = redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_in[0];
    assign redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_out[0] = redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_out_bitsignaltemp;
    assign redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_out[0] = redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(114),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo (
        .valid_in(redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_sobel_B3_merge_reg_aunroll_x_g),
        .valid_out(redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo(STALLFIFO,1420)
    assign redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_in = SE_out_sobel_B3_merge_reg_aunroll_x_V2;
    assign redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_in = SE_out_redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_backStall;
    assign redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_data_in = bubble_select_sobel_B3_merge_reg_aunroll_x_d;
    assign redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_in_bitsignaltemp = redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_in[0];
    assign redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_in_bitsignaltemp = redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_in[0];
    assign redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_out[0] = redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_out_bitsignaltemp;
    assign redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_out[0] = redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(112),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo (
        .valid_in(redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_sobel_B3_merge_reg_aunroll_x_d),
        .valid_out(redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg(STALLFIFO,2498)
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_in = SE_out_sobel_B3_merge_reg_aunroll_x_V1;
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(114),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_sobel_B3_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg(STALLFIFO,2497)
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_in = SE_out_sobel_B3_merge_reg_aunroll_x_V0;
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_sobel_B3_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(114),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_sobel_B3_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_sobel_B3_merge_reg_aunroll_x(STALLENABLE,1855)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_sobel_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_sobel_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_sobel_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_sobel_B3_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg4 <= SE_out_sobel_B3_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_sobel_B3_merge_reg_aunroll_x_fromReg5 <= SE_out_sobel_B3_merge_reg_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_sobel_B3_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_sobel_B3_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_sobel_B3_merge_reg_aunroll_x_wireValid) | SE_out_sobel_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_sobel_B3_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_sobel_B3_merge_reg_aunroll_x_wireValid) | SE_out_sobel_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_consumed2 = (~ (redist9_sobel_B3_merge_reg_aunroll_x_out_data_out_2_tpl_111_fifo_stall_out) & SE_out_sobel_B3_merge_reg_aunroll_x_wireValid) | SE_out_sobel_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_consumed3 = (~ (redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_stall_out) & SE_out_sobel_B3_merge_reg_aunroll_x_wireValid) | SE_out_sobel_B3_merge_reg_aunroll_x_fromReg3;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_sobel_B3_merge_reg_aunroll_x_wireValid) | SE_out_sobel_B3_merge_reg_aunroll_x_fromReg4;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_consumed5 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_sobel_B3_merge_reg_aunroll_x_wireValid) | SE_out_sobel_B3_merge_reg_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_sobel_B3_merge_reg_aunroll_x_StallValid = SE_out_sobel_B3_merge_reg_aunroll_x_backStall & SE_out_sobel_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_toReg0 = SE_out_sobel_B3_merge_reg_aunroll_x_StallValid & SE_out_sobel_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_toReg1 = SE_out_sobel_B3_merge_reg_aunroll_x_StallValid & SE_out_sobel_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_toReg2 = SE_out_sobel_B3_merge_reg_aunroll_x_StallValid & SE_out_sobel_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_toReg3 = SE_out_sobel_B3_merge_reg_aunroll_x_StallValid & SE_out_sobel_B3_merge_reg_aunroll_x_consumed3;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_toReg4 = SE_out_sobel_B3_merge_reg_aunroll_x_StallValid & SE_out_sobel_B3_merge_reg_aunroll_x_consumed4;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_toReg5 = SE_out_sobel_B3_merge_reg_aunroll_x_StallValid & SE_out_sobel_B3_merge_reg_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_sobel_B3_merge_reg_aunroll_x_or0 = SE_out_sobel_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_or1 = SE_out_sobel_B3_merge_reg_aunroll_x_consumed1 & SE_out_sobel_B3_merge_reg_aunroll_x_or0;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_or2 = SE_out_sobel_B3_merge_reg_aunroll_x_consumed2 & SE_out_sobel_B3_merge_reg_aunroll_x_or1;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_or3 = SE_out_sobel_B3_merge_reg_aunroll_x_consumed3 & SE_out_sobel_B3_merge_reg_aunroll_x_or2;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_or4 = SE_out_sobel_B3_merge_reg_aunroll_x_consumed4 & SE_out_sobel_B3_merge_reg_aunroll_x_or3;
    assign SE_out_sobel_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_sobel_B3_merge_reg_aunroll_x_consumed5 & SE_out_sobel_B3_merge_reg_aunroll_x_or4);
    assign SE_out_sobel_B3_merge_reg_aunroll_x_backStall = SE_out_sobel_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_sobel_B3_merge_reg_aunroll_x_V0 = SE_out_sobel_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sobel_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_sobel_B3_merge_reg_aunroll_x_V1 = SE_out_sobel_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sobel_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_sobel_B3_merge_reg_aunroll_x_V2 = SE_out_sobel_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sobel_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_sobel_B3_merge_reg_aunroll_x_V3 = SE_out_sobel_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sobel_B3_merge_reg_aunroll_x_fromReg3);
    assign SE_out_sobel_B3_merge_reg_aunroll_x_V4 = SE_out_sobel_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sobel_B3_merge_reg_aunroll_x_fromReg4);
    assign SE_out_sobel_B3_merge_reg_aunroll_x_V5 = SE_out_sobel_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sobel_B3_merge_reg_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_sobel_B3_merge_reg_aunroll_x_wireValid = sobel_B3_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_1_fifo(STALLFIFO,1456)
    assign coalesced_delay_1_fifo_valid_in = SE_out_sobel_B3_merge_reg_aunroll_x_V5;
    assign coalesced_delay_1_fifo_stall_in = SR_SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(227),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,2318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = SR_SE_out_coalesced_delay_1_fifo_V;

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,2506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_1_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data3 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= SE_out_coalesced_delay_1_fifo_backStall & (SR_SE_out_coalesced_delay_1_fifo_r_valid | SR_SE_out_coalesced_delay_1_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_1_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_1_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(bubble_select_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(bubble_select_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(sel_for_coalesced_delay_1_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_out & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_b;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : bubble_select_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_b;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : bubble_select_redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_b;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : sel_for_coalesced_delay_1_c;

    // redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo(STALLFIFO,1419)
    assign redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_in = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V5;
    assign redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_in = SR_SE_out_coalesced_delay_1_fifo_backStall;
    assign redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_data_in = redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q;
    assign redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_in_bitsignaltemp = redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_in[0];
    assign redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_in_bitsignaltemp = redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_in[0];
    assign redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_out[0] = redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_out_bitsignaltemp;
    assign redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_out[0] = redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(114),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo (
        .valid_in(redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_in_bitsignaltemp),
        .data_in(redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q),
        .valid_out(redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_96117(CONSTANT,37)
    assign c_i8_96117_q = $unsigned(8'b01100000);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6(BLACKBOX,117)@114
    // in in_stall_in@20000000
    // out out_data_out@115
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@115
    sobel_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6 (
        .in_data_in(c_i8_96117_q),
        .in_dir(redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q),
        .in_feedback_in_11(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_backStall),
        .in_valid_in(SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V4),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_1114(CONSTANT,23)
    assign c_i2_1114_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop14_sobel2(BLACKBOX,113)@114
    // in in_stall_in@20000000
    // out out_data_out@115
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@115
    sobel_i_llvm_fpga_pop_i2_cleanups_pop14_0 thei_llvm_fpga_pop_i2_cleanups_pop14_sobel2 (
        .in_data_in(c_i2_1114_q),
        .in_dir(redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q),
        .in_feedback_in_14(i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i2_cleanups_push14_sobel63_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_backStall),
        .in_valid_in(SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V3),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5(BLACKBOX,111)@114
    // in in_stall_in@20000000
    // out out_data_out@115
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@115
    sobel_i_llvm_fpga_pop_i1_memdep_phi_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5 (
        .in_data_in(GND_q),
        .in_dir(redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q),
        .in_feedback_in_13(i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i1_memdep_phi_push13_sobel113_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_backStall),
        .in_valid_in(SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo(STALLENABLE,2279)
    // Valid signal propagation
    assign SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_V0 = SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi1_pop1034_pop19_sobel11_out_stall_out | ~ (SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_and0 = redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_valid_out;
    assign SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_wireValid = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V0 & SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_and0;

    // SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0(STALLENABLE,2272)
    // Valid signal propagation
    assign SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V0 = SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_0;
    assign SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V1 = SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_1;
    // Stall signal propagation
    assign SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_s_tv_0 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backStall & SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_0;
    assign SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_s_tv_1 = i_llvm_fpga_pop_i32_i_082_pop12_sobel4_out_stall_out & SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_1;
    // Backward Enable generation
    assign SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_or0 = SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_s_tv_0;
    assign SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backEN = ~ (SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_s_tv_1 | SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_v_s_0 = SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backEN & SR_SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V;
    // Backward Stall generation
    assign SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backStall = ~ (SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_0 <= 1'b0;
            SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backEN == 1'b0)
            begin
                SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_0 <= SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_0 & SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_s_tv_0;
            end
            else
            begin
                SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_0 <= SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_v_s_0;
            end

            if (SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_backEN == 1'b0)
            begin
                SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_1 <= SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_1 & SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_s_tv_1;
            end
            else
            begin
                SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_R_v_1 <= SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_v_s_0;
            end

        end
    end

    // SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0(STALLENABLE,2273)
    // Valid signal propagation
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V0 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_0;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V1 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_1;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V2 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_2;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V3 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_3;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V4 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_4;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V5 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_5;
    // Stall signal propagation
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_0 = SE_out_redist12_sobel_B3_merge_reg_aunroll_x_out_data_out_5_tpl_113_fifo_backStall & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_0;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_1 = i_llvm_fpga_pipeline_keep_going_sobel3_out_stall_out & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_1;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_2 = i_llvm_fpga_pop_i1_memdep_phi_pop13_sobel5_out_stall_out & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_2;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_3 = i_llvm_fpga_pop_i2_cleanups_pop14_sobel2_out_stall_out & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_3;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_4 = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_sobel6_out_stall_out & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_4;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_5 = redist7_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_226_fifo_stall_out & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_5;
    // Backward Enable generation
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or0 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_0;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or1 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_1 | SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or0;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or2 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_2 | SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or1;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or3 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_3 | SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or2;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or4 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_4 | SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or3;
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN = ~ (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_5 | SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_or4);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0 = SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN & SE_redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_V0;
    // Backward Stall generation
    assign SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backStall = ~ (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_0 <= 1'b0;
            SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_1 <= 1'b0;
            SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_2 <= 1'b0;
            SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_3 <= 1'b0;
            SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_4 <= 1'b0;
            SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_5 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN == 1'b0)
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_0 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_0 & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_0;
            end
            else
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_0 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0;
            end

            if (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN == 1'b0)
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_1 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_1 & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_1;
            end
            else
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_1 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0;
            end

            if (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN == 1'b0)
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_2 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_2 & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_2;
            end
            else
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_2 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0;
            end

            if (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN == 1'b0)
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_3 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_3 & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_3;
            end
            else
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_3 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0;
            end

            if (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN == 1'b0)
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_4 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_4 & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_4;
            end
            else
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_4 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0;
            end

            if (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN == 1'b0)
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_5 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_5 & SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_s_tv_5;
            end
            else
            begin
                SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_R_v_5 <= SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pipeline_keep_going_sobel3(STALLENABLE,1634)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg6 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg6;
            // Successor 7
            SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg7 <= SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_sobel3_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1034_push19_sobel30_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed2 = (~ (SE_leftShiftStage0_uid1004_i_cleanups_shl_sobel0_shift_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed3 = (~ (SE_in_i_llvm_fpga_push_i32_add1231_push16_sobel26_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed4 = (~ (SE_in_i_llvm_fpga_push_i32_i_082_push12_sobel34_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed5 = (~ (SE_in_i_llvm_fpga_push_i32_j_083_pop930_push15_sobel23_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed6 = (~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_sobel38_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed7 = (~ (redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg7;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_toReg7 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed7;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or6 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_consumed7 & SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_or6);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg6);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_V7 = SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_wireValid = i_llvm_fpga_pipeline_keep_going_sobel3_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_sobel37(STALLENABLE,1664)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_sobel37_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_sobel37_wireValid = i_llvm_fpga_push_i1_notexitcond_sobel37_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_sobel37(BLACKBOX,123)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    sobel_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_sobel37 (
        .in_data_in(i_exitcond_sobel20_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_sobel3_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_sobel14_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_sobel37_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_sobel37_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_sobel37_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_sobel37_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_sobel37_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_sobel37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_sobel16(STALLENABLE,1656)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_sobel16_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_sobel16_wireValid = i_llvm_fpga_push_i1_lastiniteration_sobel16_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_sobel16(BLACKBOX,119)@228
    // in in_stall_in@20000000
    // out out_data_out@229
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@229
    sobel_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_sobel16 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_sobel3_out_initeration_stall_out),
        .in_keep_going(bubble_select_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_sobel16_backStall),
        .in_valid_in(SE_out_redist42_i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out_113_fifo_V3),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_sobel16_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_sobel16_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_sobel16_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_sobel16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0(REG,1418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_backEN == 1'b1)
        begin
            redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q <= $unsigned(redist5_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_112_0_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_sobel3(BLACKBOX,108)@114
    // in in_stall_in@20000000
    // out out_data_out@115
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@115
    sobel_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_sobel3 (
        .in_data_in(redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_sobel16_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_sobel16_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_sobel37_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_sobel37_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_sobel3_backStall),
        .in_valid_in(SE_redist6_sobel_B3_merge_reg_aunroll_x_out_data_out_0_tpl_113_0_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_sobel3_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_sobel3_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_sobel3_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_sobel3_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_sobel3_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_sobel3_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_sobel3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_sobel3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,41)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_sobel3_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel3_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_sobel3_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,293)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_sobel3_out_pipeline_valid_out;

    // sync_out(GPOUT,298)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,322)
    assign out_unnamed_sobel6_sobel_avm_address = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_address;
    assign out_unnamed_sobel6_sobel_avm_enable = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_enable;
    assign out_unnamed_sobel6_sobel_avm_read = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_read;
    assign out_unnamed_sobel6_sobel_avm_write = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_write;
    assign out_unnamed_sobel6_sobel_avm_writedata = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_writedata;
    assign out_unnamed_sobel6_sobel_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_byteenable;
    assign out_unnamed_sobel6_sobel_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel6_sobel51_out_unnamed_sobel6_sobel_avm_burstcount;

    // bubble_join_redist38_i_masked_sobel47_q_113_fifo(BITJOIN,1571)
    assign bubble_join_redist38_i_masked_sobel47_q_113_fifo_q = redist38_i_masked_sobel47_q_113_fifo_data_out;

    // bubble_select_redist38_i_masked_sobel47_q_113_fifo(BITSELECT,1572)
    assign bubble_select_redist38_i_masked_sobel47_q_113_fifo_b = $unsigned(bubble_join_redist38_i_masked_sobel47_q_113_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,324)@228
    assign out_exitcond1132_pop17 = bubble_select_i_llvm_fpga_pop_i1_exitcond1132_pop17_sobel9_b;
    assign out_masked = bubble_select_redist38_i_masked_sobel47_q_113_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_sobel112_b;
    assign out_notcmp2033_pop18 = bubble_select_i_llvm_fpga_pop_i1_notcmp2033_pop18_sobel10_b;
    assign out_valid_out = SE_out_redist38_i_masked_sobel47_q_113_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,326)
    assign out_unnamed_sobel7_sobel_avm_address = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_address;
    assign out_unnamed_sobel7_sobel_avm_enable = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_enable;
    assign out_unnamed_sobel7_sobel_avm_read = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_read;
    assign out_unnamed_sobel7_sobel_avm_write = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_write;
    assign out_unnamed_sobel7_sobel_avm_writedata = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_writedata;
    assign out_unnamed_sobel7_sobel_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_byteenable;
    assign out_unnamed_sobel7_sobel_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel7_sobel52_out_unnamed_sobel7_sobel_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,328)
    assign out_unnamed_sobel8_sobel_avm_address = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_address;
    assign out_unnamed_sobel8_sobel_avm_enable = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_enable;
    assign out_unnamed_sobel8_sobel_avm_read = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_read;
    assign out_unnamed_sobel8_sobel_avm_write = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_write;
    assign out_unnamed_sobel8_sobel_avm_writedata = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_writedata;
    assign out_unnamed_sobel8_sobel_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_byteenable;
    assign out_unnamed_sobel8_sobel_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel8_sobel53_out_unnamed_sobel8_sobel_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,330)
    assign out_unnamed_sobel9_sobel_avm_address = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_address;
    assign out_unnamed_sobel9_sobel_avm_enable = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_enable;
    assign out_unnamed_sobel9_sobel_avm_read = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_read;
    assign out_unnamed_sobel9_sobel_avm_write = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_write;
    assign out_unnamed_sobel9_sobel_avm_writedata = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_writedata;
    assign out_unnamed_sobel9_sobel_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_byteenable;
    assign out_unnamed_sobel9_sobel_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel9_sobel54_out_unnamed_sobel9_sobel_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,332)
    assign out_unnamed_sobel10_sobel_avm_address = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_address;
    assign out_unnamed_sobel10_sobel_avm_enable = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_enable;
    assign out_unnamed_sobel10_sobel_avm_read = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_read;
    assign out_unnamed_sobel10_sobel_avm_write = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_write;
    assign out_unnamed_sobel10_sobel_avm_writedata = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_writedata;
    assign out_unnamed_sobel10_sobel_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_byteenable;
    assign out_unnamed_sobel10_sobel_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel10_sobel55_out_unnamed_sobel10_sobel_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,334)
    assign out_unnamed_sobel11_sobel_avm_address = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_address;
    assign out_unnamed_sobel11_sobel_avm_enable = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_enable;
    assign out_unnamed_sobel11_sobel_avm_read = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_read;
    assign out_unnamed_sobel11_sobel_avm_write = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_write;
    assign out_unnamed_sobel11_sobel_avm_writedata = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_writedata;
    assign out_unnamed_sobel11_sobel_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_byteenable;
    assign out_unnamed_sobel11_sobel_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel11_sobel57_out_unnamed_sobel11_sobel_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,336)
    assign out_unnamed_sobel12_sobel_avm_address = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_address;
    assign out_unnamed_sobel12_sobel_avm_enable = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_enable;
    assign out_unnamed_sobel12_sobel_avm_read = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_read;
    assign out_unnamed_sobel12_sobel_avm_write = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_write;
    assign out_unnamed_sobel12_sobel_avm_writedata = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_writedata;
    assign out_unnamed_sobel12_sobel_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_byteenable;
    assign out_unnamed_sobel12_sobel_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel12_sobel58_out_unnamed_sobel12_sobel_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,338)
    assign out_unnamed_sobel13_sobel_avm_address = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_address;
    assign out_unnamed_sobel13_sobel_avm_enable = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_enable;
    assign out_unnamed_sobel13_sobel_avm_read = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_read;
    assign out_unnamed_sobel13_sobel_avm_write = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_write;
    assign out_unnamed_sobel13_sobel_avm_writedata = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_writedata;
    assign out_unnamed_sobel13_sobel_avm_byteenable = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_byteenable;
    assign out_unnamed_sobel13_sobel_avm_burstcount = i_llvm_fpga_mem_unnamed_sobel13_sobel59_out_unnamed_sobel13_sobel_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,339)
    assign out_memdep_sobel_avm_address = i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_address;
    assign out_memdep_sobel_avm_enable = i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_enable;
    assign out_memdep_sobel_avm_read = i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_read;
    assign out_memdep_sobel_avm_write = i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_write;
    assign out_memdep_sobel_avm_writedata = i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_writedata;
    assign out_memdep_sobel_avm_byteenable = i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_byteenable;
    assign out_memdep_sobel_avm_burstcount = i_llvm_fpga_mem_memdep_sobel112_out_memdep_sobel_avm_burstcount;

    // dupName_9_ext_sig_sync_out_x(GPOUT,340)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_sobel112_out_lsu_memdep_o_active;

endmodule
