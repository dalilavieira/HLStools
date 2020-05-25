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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_s_c0_in_while_eA000003Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_s_c0_in_while_eA000003Z_xmlchecklanguageid0 (
    input wire [0:0] in_intel_reserved_ffwd_31_0,
    input wire [63:0] in_intel_reserved_ffwd_46_0,
    input wire [7:0] in_intel_reserved_ffwd_47_0,
    input wire [0:0] in_intel_reserved_ffwd_48_0,
    input wire [0:0] in_intel_reserved_ffwd_49_0,
    input wire [63:0] in_intel_reserved_ffwd_53_0,
    input wire [7:0] in_intel_reserved_ffwd_54_0,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [0:0] in_intel_reserved_ffwd_56_0,
    input wire [0:0] in_intel_reserved_ffwd_57_0,
    input wire [63:0] in_intel_reserved_ffwd_60_0,
    input wire [0:0] in_intel_reserved_ffwd_61_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_63_0,
    input wire [0:0] in_intel_reserved_ffwd_64_0,
    input wire [63:0] in_intel_reserved_ffwd_66_0,
    input wire [7:0] in_intel_reserved_ffwd_67_0,
    input wire [63:0] in_pre157_lm28_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_27_0,
    input wire [7:0] in_intel_reserved_ffwd_28_0,
    output wire [7:0] out_intel_reserved_ffwd_68_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_intel_reserved_ffwd_69_0,
    output wire [0:0] out_intel_reserved_ffwd_70_0,
    output wire [0:0] out_intel_reserved_ffwd_71_0,
    output wire [0:0] out_intel_reserved_ffwd_72_0,
    output wire [0:0] out_intel_reserved_ffwd_73_0,
    output wire [0:0] out_intel_reserved_ffwd_74_0,
    output wire [63:0] out_intel_reserved_ffwd_75_0,
    output wire [0:0] out_intel_reserved_ffwd_76_0,
    output wire [63:0] out_pre157_lm28_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_pre157_lm28_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_pre157_lm28_xmlCheckLanguageID_avm_writedata,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_xmlCheckLanguageID114_0_tpl,
    output wire [0:0] out_c0_exit246_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_68_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_69_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_70_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_71_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_72_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_73_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_74_0;
    wire [63:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_75_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_76_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_writedata;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x(BLACKBOX,48)@9
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@12
    // out out_data_out_0_tpl@12
    xmlCheckLanguageID_i_llvm_fpga_sfc_exit_A000009Z_xmlchecklanguageid0 thei_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x(BLACKBOX,49)@0
    // out out_intel_reserved_ffwd_68_0@20000000
    // out out_intel_reserved_ffwd_69_0@20000000
    // out out_intel_reserved_ffwd_70_0@20000000
    // out out_intel_reserved_ffwd_71_0@20000000
    // out out_intel_reserved_ffwd_72_0@20000000
    // out out_intel_reserved_ffwd_73_0@20000000
    // out out_intel_reserved_ffwd_74_0@20000000
    // out out_intel_reserved_ffwd_75_0@20000000
    // out out_intel_reserved_ffwd_76_0@20000000
    // out out_o_valid@9
    // out out_pre157_lm28_xmlCheckLanguageID_avm_address@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_enable@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_read@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_write@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_writedata@20000000
    // out out_unnamed_xmlCheckLanguageID7@9
    // out out_unnamed_xmlCheckLanguageID137_0_tpl@9
    xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000009Z_xmlchecklanguageid0 thei_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_66_0(in_intel_reserved_ffwd_66_0),
        .in_intel_reserved_ffwd_67_0(in_intel_reserved_ffwd_67_0),
        .in_pre157_lm28_xmlCheckLanguageID_avm_readdata(in_pre157_lm28_xmlCheckLanguageID_avm_readdata),
        .in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid(in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid),
        .in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest(in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest),
        .in_pre157_lm28_xmlCheckLanguageID_avm_writeack(in_pre157_lm28_xmlCheckLanguageID_avm_writeack),
        .out_intel_reserved_ffwd_68_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_68_0),
        .out_intel_reserved_ffwd_69_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_70_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_76_0),
        .out_o_valid(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .out_pre157_lm28_xmlCheckLanguageID_avm_address(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_address),
        .out_pre157_lm28_xmlCheckLanguageID_avm_burstcount(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount),
        .out_pre157_lm28_xmlCheckLanguageID_avm_byteenable(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable),
        .out_pre157_lm28_xmlCheckLanguageID_avm_enable(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_enable),
        .out_pre157_lm28_xmlCheckLanguageID_avm_read(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_read),
        .out_pre157_lm28_xmlCheckLanguageID_avm_write(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_write),
        .out_pre157_lm28_xmlCheckLanguageID_avm_writedata(i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_writedata),
        .out_unnamed_xmlCheckLanguageID7(),
        .out_unnamed_xmlCheckLanguageID137_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,30)
    assign out_intel_reserved_ffwd_68_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_68_0;

    // sync_out(GPOUT,32)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_69_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_69_0;

    // dupName_1_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_70_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_70_0;

    // dupName_2_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_71_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_71_0;

    // dupName_3_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_72_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_72_0;

    // dupName_4_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_73_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_73_0;

    // dupName_5_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_74_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_74_0;

    // dupName_6_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_75_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_75_0;

    // dupName_7_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_76_0 = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_76_0;

    // dupName_8_regfree_osync_x(GPOUT,41)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_address = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_address;

    // dupName_9_regfree_osync_x(GPOUT,42)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_burstcount = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount;

    // dupName_10_regfree_osync_x(GPOUT,43)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_byteenable = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable;

    // dupName_11_regfree_osync_x(GPOUT,44)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_enable = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_enable;

    // dupName_12_regfree_osync_x(GPOUT,45)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_read = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_read;

    // dupName_13_regfree_osync_x(GPOUT,46)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_write = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_write;

    // dupName_14_regfree_osync_x(GPOUT,47)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_writedata = i_sfc_logic_s_c0_in_while_end261_loopexit_xmlchecklanguageids_c0_enter245_xmlchecklanguageid0_aunroll_x_out_pre157_lm28_xmlCheckLanguageID_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,51)@12
    assign out_c0_exit246_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_while_end261_loopexit_xmlchecklanguageids_c0_exit246_xmlchecklanguageid1_aunroll_x_out_valid_out;

endmodule
