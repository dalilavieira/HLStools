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

// SystemVerilog created from euler_bb_B5_stall_region
// SystemVerilog created on Mon Apr  6 12:54:32 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_bb_B5_stall_region (
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe2561,
    input wire [0:0] in_c0_exe4582,
    input wire [0:0] in_c0_exe5593,
    input wire [0:0] in_c0_exe64,
    input wire [0:0] in_c0_exe75,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe75,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_o_valid;
    wire [0:0] redist0_stall_entry_o8_57_fifo_valid_in;
    wire redist0_stall_entry_o8_57_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o8_57_fifo_stall_in;
    wire redist0_stall_entry_o8_57_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o8_57_fifo_data_in;
    wire [0:0] redist0_stall_entry_o8_57_fifo_valid_out;
    wire redist0_stall_entry_o8_57_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o8_57_fifo_stall_out;
    wire redist0_stall_entry_o8_57_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o8_57_fifo_data_out;
    wire [67:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_join_redist0_stall_entry_o8_57_fifo_q;
    wire [0:0] bubble_select_redist0_stall_entry_o8_57_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_out_redist0_stall_entry_o8_57_fifo_wireValid;
    wire [0:0] SE_out_redist0_stall_entry_o8_57_fifo_and0;
    wire [0:0] SE_out_redist0_stall_entry_o8_57_fifo_backStall;
    wire [0:0] SE_out_redist0_stall_entry_o8_57_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,18)
    assign bubble_join_stall_entry_q = {in_c0_exe75, in_c0_exe64, in_c0_exe5593, in_c0_exe4582, in_c0_exe2561};

    // bubble_select_stall_entry(BITSELECT,19)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[67:67]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist0_stall_entry_o8_57_fifo(STALLFIFO,16)
    assign redist0_stall_entry_o8_57_fifo_valid_in = SE_stall_entry_V0;
    assign redist0_stall_entry_o8_57_fifo_stall_in = SE_out_redist0_stall_entry_o8_57_fifo_backStall;
    assign redist0_stall_entry_o8_57_fifo_data_in = bubble_select_stall_entry_f;
    assign redist0_stall_entry_o8_57_fifo_valid_in_bitsignaltemp = redist0_stall_entry_o8_57_fifo_valid_in[0];
    assign redist0_stall_entry_o8_57_fifo_stall_in_bitsignaltemp = redist0_stall_entry_o8_57_fifo_stall_in[0];
    assign redist0_stall_entry_o8_57_fifo_valid_out[0] = redist0_stall_entry_o8_57_fifo_valid_out_bitsignaltemp;
    assign redist0_stall_entry_o8_57_fifo_stall_out[0] = redist0_stall_entry_o8_57_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(58),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_stall_entry_o8_57_fifo (
        .valid_in(redist0_stall_entry_o8_57_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_stall_entry_o8_57_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_f),
        .valid_out(redist0_stall_entry_o8_57_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_stall_entry_o8_57_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_stall_entry_o8_57_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (redist0_stall_entry_o8_57_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_redist0_stall_entry_o8_57_fifo(STALLENABLE,30)
    // Valid signal propagation
    assign SE_out_redist0_stall_entry_o8_57_fifo_V0 = SE_out_redist0_stall_entry_o8_57_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_stall_entry_o8_57_fifo_backStall = in_stall_in | ~ (SE_out_redist0_stall_entry_o8_57_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_stall_entry_o8_57_fifo_and0 = redist0_stall_entry_o8_57_fifo_valid_out;
    assign SE_out_redist0_stall_entry_o8_57_fifo_wireValid = i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_o_valid & SE_out_redist0_stall_entry_o8_57_fifo_and0;

    // i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@57
    // out out_c0_exit69_0_tpl@57
    euler_i_sfc_s_c0_in_z8fatoriali_exit_loopexit_s_c0_enter64_euler4 thei_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x (
        .in_i_stall(SE_out_redist0_stall_entry_o8_57_fifo_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c0_eni463_0_tpl(GND_q),
        .in_c0_eni463_1_tpl(bubble_select_stall_entry_b),
        .in_c0_eni463_2_tpl(bubble_select_stall_entry_d),
        .in_c0_eni463_3_tpl(bubble_select_stall_entry_c),
        .in_c0_eni463_4_tpl(bubble_select_stall_entry_e),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_o_stall(i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_o_valid),
        .out_c0_exit69_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,7)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler4_aunroll_x_out_intel_reserved_ffwd_2_0;

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_redist0_stall_entry_o8_57_fifo(BITJOIN,23)
    assign bubble_join_redist0_stall_entry_o8_57_fifo_q = redist0_stall_entry_o8_57_fifo_data_out;

    // bubble_select_redist0_stall_entry_o8_57_fifo(BITSELECT,24)
    assign bubble_select_redist0_stall_entry_o8_57_fifo_b = $unsigned(bubble_join_redist0_stall_entry_o8_57_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,13)@57
    assign out_c0_exe75 = bubble_select_redist0_stall_entry_o8_57_fifo_b;
    assign out_valid_out = SE_out_redist0_stall_entry_o8_57_fifo_V0;

endmodule
