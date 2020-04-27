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

// SystemVerilog created from kmeans_bb_B14_stall_region
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B14_stall_region (
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1025913,
    input wire [31:0] in_c0_exe22513,
    input wire [15:0] in_c0_exe42534,
    input wire [0:0] in_c0_exe52547,
    input wire [0:0] in_c0_exe62559,
    input wire [0:0] in_c0_exe725610,
    input wire [15:0] in_c0_exe825711,
    input wire [0:0] in_c0_exe925812,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1025913,
    output wire [15:0] out_c0_exe1225,
    output wire [31:0] out_c0_exe22513,
    output wire [0:0] out_c0_exe52547,
    output wire [0:0] out_c0_exe62559,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_o_valid;
    wire [15:0] i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_c0_exit224_1_tpl;
    wire [34:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    reg [34:0] coalesced_delay_0_0_q;
    wire [68:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [15:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [15:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [15:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_q;
    wire [15:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_b;
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
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,24)
    assign bubble_join_stall_entry_q = {in_c0_exe925812, in_c0_exe825711, in_c0_exe725610, in_c0_exe62559, in_c0_exe52547, in_c0_exe42534, in_c0_exe22513, in_c0_exe1025913};

    // bubble_select_stall_entry(BITSELECT,25)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[48:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[49:49]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[50:50]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[51:51]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[67:52]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[68:68]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_and0;

    // i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_c0_exit224_0_tpl@1
    // out out_c0_exit224_1_tpl@1
    kmeans_i_sfc_s_c0_in_for_cond_cleanup39_A000000Z_c0_enter218_kmeans4 thei_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_c0_eni4217_0_tpl(GND_q),
        .in_c0_eni4217_1_tpl(bubble_select_stall_entry_g),
        .in_c0_eni4217_2_tpl(bubble_select_stall_entry_d),
        .in_c0_eni4217_3_tpl(bubble_select_stall_entry_i),
        .in_c0_eni4217_4_tpl(bubble_select_stall_entry_h),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_o_valid),
        .out_c0_exit224_0_tpl(),
        .out_c0_exit224_1_tpl(i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_c0_exit224_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,37)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,31)
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
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x(BITJOIN,28)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_out_c0_exit224_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x(BITSELECT,29)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_q[15:0]);

    // join_for_coalesced_delay_0(BITJOIN,20)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_f, bubble_select_stall_entry_e, bubble_select_stall_entry_b, bubble_select_stall_entry_c};

    // coalesced_delay_0_0(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(35'b00000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,21)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[33:33]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[34:34]);

    // dupName_0_sync_out_x(GPOUT,13)@1
    assign out_c0_exe1025913 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe1225 = bubble_select_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_b;
    assign out_c0_exe22513 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe52547 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe62559 = sel_for_coalesced_delay_0_e;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_cleanup39_loopexit_kmeanss_c0_enter218_kmeans4_aunroll_x_V0;

endmodule
