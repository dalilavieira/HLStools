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

// SystemVerilog created from zlaswp_bb_B9_stall_region
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_bb_B9_stall_region (
    input wire [63:0] in_lm6118_zlaswp_avm_readdata,
    input wire [0:0] in_lm6118_zlaswp_avm_writeack,
    input wire [0:0] in_lm6118_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm6118_zlaswp_avm_readdatavalid,
    output wire [63:0] out_lm6118_zlaswp_avm_address,
    output wire [0:0] out_lm6118_zlaswp_avm_enable,
    output wire [0:0] out_lm6118_zlaswp_avm_read,
    output wire [0:0] out_lm6118_zlaswp_avm_write,
    output wire [63:0] out_lm6118_zlaswp_avm_writedata,
    output wire [7:0] out_lm6118_zlaswp_avm_byteenable,
    output wire [0:0] out_lm6118_zlaswp_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_27_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [63:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_write;
    wire [63:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_o_valid;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,25)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x(STALLENABLE,28)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x(BLACKBOX,22)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_lm6118_zlaswp_avm_address@20000000
    // out out_lm6118_zlaswp_avm_burstcount@20000000
    // out out_lm6118_zlaswp_avm_byteenable@20000000
    // out out_lm6118_zlaswp_avm_enable@20000000
    // out out_lm6118_zlaswp_avm_read@20000000
    // out out_lm6118_zlaswp_avm_write@20000000
    // out out_lm6118_zlaswp_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_c0_exit276_0_tpl@11
    zlaswp_i_sfc_s_c0_in_for_cond_unifiedlatA000000Z_c0_enter275_zlaswp0 thei_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_lm6118_zlaswp_avm_readdata(in_lm6118_zlaswp_avm_readdata),
        .in_lm6118_zlaswp_avm_readdatavalid(in_lm6118_zlaswp_avm_readdatavalid),
        .in_lm6118_zlaswp_avm_waitrequest(in_lm6118_zlaswp_avm_waitrequest),
        .in_lm6118_zlaswp_avm_writeack(in_lm6118_zlaswp_avm_writeack),
        .in_unnamed_zlaswp48_0_tpl(GND_q),
        .out_intel_reserved_ffwd_26_0(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_lm6118_zlaswp_avm_address(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_address),
        .out_lm6118_zlaswp_avm_burstcount(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_burstcount),
        .out_lm6118_zlaswp_avm_byteenable(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_byteenable),
        .out_lm6118_zlaswp_avm_enable(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_enable),
        .out_lm6118_zlaswp_avm_read(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_read),
        .out_lm6118_zlaswp_avm_write(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_write),
        .out_lm6118_zlaswp_avm_writedata(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_o_valid),
        .out_c0_exit276_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_lm6118_zlaswp_avm_address = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_address;
    assign out_lm6118_zlaswp_avm_enable = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_enable;
    assign out_lm6118_zlaswp_avm_read = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_read;
    assign out_lm6118_zlaswp_avm_write = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_write;
    assign out_lm6118_zlaswp_avm_writedata = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_writedata;
    assign out_lm6118_zlaswp_avm_byteenable = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_byteenable;
    assign out_lm6118_zlaswp_avm_burstcount = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_lm6118_zlaswp_avm_burstcount;

    // regfree_osync(GPOUT,14)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_intel_reserved_ffwd_26_0;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_0_sync_out_x(GPOUT,21)@11
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_unifiedlatchblock_switch_loopexit_zlaswps_c0_enter275_zlaswp0_aunroll_x_V0;

endmodule
