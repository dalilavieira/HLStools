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

// SystemVerilog created from zlaswp_i_sfc_s_c0_in_for_cond9_s_c0_enter26411_zlaswp1
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_i_sfc_s_c0_in_for_cond9_s_c0_enter26411_zlaswp1 (
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_lm1476_zlaswp_avm_readdata,
    input wire [0:0] in_lm1476_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm1476_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm1476_zlaswp_avm_writeack,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [0:0] out_intel_reserved_ffwd_17_0,
    output wire [0:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [0:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_lm1476_zlaswp_avm_address,
    output wire [0:0] out_lm1476_zlaswp_avm_burstcount,
    output wire [7:0] out_lm1476_zlaswp_avm_byteenable,
    output wire [0:0] out_lm1476_zlaswp_avm_enable,
    output wire [0:0] out_lm1476_zlaswp_avm_read,
    output wire [0:0] out_lm1476_zlaswp_avm_write,
    output wire [63:0] out_lm1476_zlaswp_avm_writedata,
    input wire [0:0] in_c0_eni1263_0_tpl,
    input wire [0:0] in_c0_eni1263_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit266_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_write;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x(BLACKBOX,33)@10
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@13
    // out out_data_out_0_tpl@13
    zlaswp_i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_s_c0_exit266_zlaswp0 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x(BLACKBOX,34)@1
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_lm1476_zlaswp_avm_address@20000000
    // out out_lm1476_zlaswp_avm_burstcount@20000000
    // out out_lm1476_zlaswp_avm_byteenable@20000000
    // out out_lm1476_zlaswp_avm_enable@20000000
    // out out_lm1476_zlaswp_avm_read@20000000
    // out out_lm1476_zlaswp_avm_write@20000000
    // out out_lm1476_zlaswp_avm_writedata@20000000
    // out out_o_valid@10
    // out out_unnamed_zlaswp13@10
    // out out_unnamed_zlaswp29_0_tpl@10
    zlaswp_i_sfc_logic_s_c0_in_for_cond9_s_c0_enter26411_zlaswp0 thei_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm1476_zlaswp_avm_readdata(in_lm1476_zlaswp_avm_readdata),
        .in_lm1476_zlaswp_avm_readdatavalid(in_lm1476_zlaswp_avm_readdatavalid),
        .in_lm1476_zlaswp_avm_waitrequest(in_lm1476_zlaswp_avm_waitrequest),
        .in_lm1476_zlaswp_avm_writeack(in_lm1476_zlaswp_avm_writeack),
        .in_c0_eni1263_0_tpl(in_c0_eni1263_0_tpl),
        .in_c0_eni1263_1_tpl(in_c0_eni1263_1_tpl),
        .out_intel_reserved_ffwd_15_0(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_lm1476_zlaswp_avm_address(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_address),
        .out_lm1476_zlaswp_avm_burstcount(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_burstcount),
        .out_lm1476_zlaswp_avm_byteenable(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_byteenable),
        .out_lm1476_zlaswp_avm_enable(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_enable),
        .out_lm1476_zlaswp_avm_read(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_read),
        .out_lm1476_zlaswp_avm_write(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_write),
        .out_lm1476_zlaswp_avm_writedata(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_o_valid),
        .out_unnamed_zlaswp13(),
        .out_unnamed_zlaswp29_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,18)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_15_0;

    // sync_out(GPOUT,20)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_1_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_2_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_3_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_4_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_5_regfree_osync_x(GPOUT,26)
    assign out_lm1476_zlaswp_avm_address = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_address;

    // dupName_6_regfree_osync_x(GPOUT,27)
    assign out_lm1476_zlaswp_avm_burstcount = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_burstcount;

    // dupName_7_regfree_osync_x(GPOUT,28)
    assign out_lm1476_zlaswp_avm_byteenable = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_byteenable;

    // dupName_8_regfree_osync_x(GPOUT,29)
    assign out_lm1476_zlaswp_avm_enable = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_enable;

    // dupName_9_regfree_osync_x(GPOUT,30)
    assign out_lm1476_zlaswp_avm_read = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_read;

    // dupName_10_regfree_osync_x(GPOUT,31)
    assign out_lm1476_zlaswp_avm_write = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_write;

    // dupName_11_regfree_osync_x(GPOUT,32)
    assign out_lm1476_zlaswp_avm_writedata = i_sfc_logic_s_c0_in_for_cond9_zlaswps_c0_enter26411_zlaswp0_aunroll_x_out_lm1476_zlaswp_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,36)@13
    assign out_c0_exit266_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_zlaswps_c0_exit266_zlaswp1_aunroll_x_out_valid_out;

endmodule
