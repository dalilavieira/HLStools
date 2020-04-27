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

// SystemVerilog created from sobel_filter_bb_B11_stall_region
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B11_stall_region (
    input wire [0:0] in_feedback_in_28,
    output wire [0:0] out_feedback_stall_out_28,
    input wire [0:0] in_feedback_valid_in_28,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe336814,
    input wire [0:0] in_c0_exe436915,
    input wire [0:0] in_c0_exe537016,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe436915,
    output wire [0:0] out_c0_exe537016,
    output wire [0:0] out_memdep_phi18_pop28,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_valid_out;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_b;
    wire [2:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_V0;
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
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_coalesced_delay_0_0(STALLENABLE,37)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_backStall & SE_coalesced_delay_0_0_R_v_0;
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

    // SE_stall_entry(STALLENABLE,33)
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
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0(STALLENABLE,32)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_and0 = i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_and0;

    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = {in_c0_exe537016, in_c0_exe436915, in_c0_exe336814};

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    sobel_filter_i_llvm_fpga_pop_i1_memdep_phi18_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_stall_entry_b),
        .in_feedback_in_28(in_feedback_in_28),
        .in_feedback_valid_in_28(in_feedback_valid_in_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_28_sync(GPOUT,6)
    assign out_feedback_stall_out_28 = i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_feedback_stall_out_28;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0(BITJOIN,24)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_q = i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0(BITSELECT,25)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,20)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_c};

    // coalesced_delay_0_0(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,21)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,16)@1
    assign out_c0_exe436915 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe537016 = sel_for_coalesced_delay_0_c;
    assign out_memdep_phi18_pop28 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop28_sobel_filter0_V0;

endmodule
