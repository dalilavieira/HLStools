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

// SystemVerilog created from main_bb_B0_stall_region
// SystemVerilog created on Sun May 24 20:11:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_bb_B0_stall_region (
    input wire [0:0] in_iord_bl_call_main_i_fifodata,
    input wire [0:0] in_iord_bl_call_main_i_fifovalid,
    output wire [0:0] out_iord_bl_call_main_o_fifoready,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_call_main_unnamed_main0_main2_out_iord_bl_call_main_o_fifoready;
    wire [0:0] i_iord_bl_call_main_unnamed_main0_main2_out_o_stall;
    wire [0:0] i_iord_bl_call_main_unnamed_main0_main2_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_main1_out_feedback_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_main1_out_feedback_valid_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_main1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_main1_out_valid_out;
    wire [0:0] main_B0_merge_reg_out_stall_out;
    wire [0:0] main_B0_merge_reg_out_valid_out;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_wt_limpush_main1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_wt_limpush_main1_backStall;
    wire [0:0] SE_out_main_B0_merge_reg_wireValid;
    wire [0:0] SE_out_main_B0_merge_reg_wireStall;
    wire [0:0] SE_out_main_B0_merge_reg_StallValid;
    wire [0:0] SE_out_main_B0_merge_reg_toReg0;
    reg [0:0] SE_out_main_B0_merge_reg_fromReg0;
    wire [0:0] SE_out_main_B0_merge_reg_consumed0;
    wire [0:0] SE_out_main_B0_merge_reg_toReg1;
    reg [0:0] SE_out_main_B0_merge_reg_fromReg1;
    wire [0:0] SE_out_main_B0_merge_reg_consumed1;
    wire [0:0] SE_out_main_B0_merge_reg_toReg2;
    reg [0:0] SE_out_main_B0_merge_reg_fromReg2;
    wire [0:0] SE_out_main_B0_merge_reg_consumed2;
    wire [0:0] SE_out_main_B0_merge_reg_or0;
    wire [0:0] SE_out_main_B0_merge_reg_or1;
    wire [0:0] SE_out_main_B0_merge_reg_backStall;
    wire [0:0] SE_out_main_B0_merge_reg_V0;
    wire [0:0] SE_out_main_B0_merge_reg_V1;
    wire [0:0] SE_out_main_B0_merge_reg_V2;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] bubble_out_main_B0_merge_reg_1_reg_R_v_0;
    wire [0:0] bubble_out_main_B0_merge_reg_1_reg_v_s_0;
    wire [0:0] bubble_out_main_B0_merge_reg_1_reg_s_tv_0;
    wire [0:0] bubble_out_main_B0_merge_reg_1_reg_backEN;
    wire [0:0] bubble_out_main_B0_merge_reg_1_reg_backStall;
    wire [0:0] bubble_out_main_B0_merge_reg_1_reg_V0;


    // SE_out_i_llvm_fpga_push_token_i1_wt_limpush_main1(STALLENABLE,38)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_wt_limpush_main1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_wt_limpush_main1_wireValid = i_llvm_fpga_push_token_i1_wt_limpush_main1_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_push_token_i1_wt_limpush_main1(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_out_0@20000000
    // out out_feedback_valid_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    main_i_llvm_fpga_push_token_i1_wt_limpush_0 thei_llvm_fpga_push_token_i1_wt_limpush_main1 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_0(i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_feedback_stall_out_0),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_wt_limpush_main1_backStall),
        .in_valid_in(SE_out_main_B0_merge_reg_V1),
        .out_data_out(),
        .out_feedback_out_0(i_llvm_fpga_push_token_i1_wt_limpush_main1_out_feedback_out_0),
        .out_feedback_valid_out_0(i_llvm_fpga_push_token_i1_wt_limpush_main1_out_feedback_valid_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_wt_limpush_main1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_wt_limpush_main1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_token_i1_wt_limpop_main0(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    main_i_llvm_fpga_pop_token_i1_wt_limpop_0 thei_llvm_fpga_pop_token_i1_wt_limpop_main0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(i_llvm_fpga_push_token_i1_wt_limpush_main1_out_feedback_out_0),
        .in_feedback_valid_in_0(i_llvm_fpga_push_token_i1_wt_limpush_main1_out_feedback_valid_out_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_backStall),
        .in_valid_in(SE_out_main_B0_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,41)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = main_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // main_B0_merge_reg(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    main_B0_merge_reg themain_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_main_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(main_B0_merge_reg_out_stall_out),
        .out_valid_out(main_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_main_B0_merge_reg(STALLENABLE,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_main_B0_merge_reg_fromReg0 <= '0;
            SE_out_main_B0_merge_reg_fromReg1 <= '0;
            SE_out_main_B0_merge_reg_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_main_B0_merge_reg_fromReg0 <= SE_out_main_B0_merge_reg_toReg0;
            // Successor 1
            SE_out_main_B0_merge_reg_fromReg1 <= SE_out_main_B0_merge_reg_toReg1;
            // Successor 2
            SE_out_main_B0_merge_reg_fromReg2 <= SE_out_main_B0_merge_reg_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_main_B0_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_stall_out) & SE_out_main_B0_merge_reg_wireValid) | SE_out_main_B0_merge_reg_fromReg0;
    assign SE_out_main_B0_merge_reg_consumed1 = (~ (i_llvm_fpga_push_token_i1_wt_limpush_main1_out_stall_out) & SE_out_main_B0_merge_reg_wireValid) | SE_out_main_B0_merge_reg_fromReg1;
    assign SE_out_main_B0_merge_reg_consumed2 = (~ (bubble_out_main_B0_merge_reg_1_reg_backStall) & SE_out_main_B0_merge_reg_wireValid) | SE_out_main_B0_merge_reg_fromReg2;
    // Consuming
    assign SE_out_main_B0_merge_reg_StallValid = SE_out_main_B0_merge_reg_backStall & SE_out_main_B0_merge_reg_wireValid;
    assign SE_out_main_B0_merge_reg_toReg0 = SE_out_main_B0_merge_reg_StallValid & SE_out_main_B0_merge_reg_consumed0;
    assign SE_out_main_B0_merge_reg_toReg1 = SE_out_main_B0_merge_reg_StallValid & SE_out_main_B0_merge_reg_consumed1;
    assign SE_out_main_B0_merge_reg_toReg2 = SE_out_main_B0_merge_reg_StallValid & SE_out_main_B0_merge_reg_consumed2;
    // Backward Stall generation
    assign SE_out_main_B0_merge_reg_or0 = SE_out_main_B0_merge_reg_consumed0;
    assign SE_out_main_B0_merge_reg_or1 = SE_out_main_B0_merge_reg_consumed1 & SE_out_main_B0_merge_reg_or0;
    assign SE_out_main_B0_merge_reg_wireStall = ~ (SE_out_main_B0_merge_reg_consumed2 & SE_out_main_B0_merge_reg_or1);
    assign SE_out_main_B0_merge_reg_backStall = SE_out_main_B0_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_main_B0_merge_reg_V0 = SE_out_main_B0_merge_reg_wireValid & ~ (SE_out_main_B0_merge_reg_fromReg0);
    assign SE_out_main_B0_merge_reg_V1 = SE_out_main_B0_merge_reg_wireValid & ~ (SE_out_main_B0_merge_reg_fromReg1);
    assign SE_out_main_B0_merge_reg_V2 = SE_out_main_B0_merge_reg_wireValid & ~ (SE_out_main_B0_merge_reg_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_main_B0_merge_reg_wireValid = main_B0_merge_reg_out_valid_out;

    // bubble_out_main_B0_merge_reg_1_reg(STALLENABLE,55)
    // Valid signal propagation
    assign bubble_out_main_B0_merge_reg_1_reg_V0 = bubble_out_main_B0_merge_reg_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_main_B0_merge_reg_1_reg_s_tv_0 = i_iord_bl_call_main_unnamed_main0_main2_out_o_stall & bubble_out_main_B0_merge_reg_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_main_B0_merge_reg_1_reg_backEN = ~ (bubble_out_main_B0_merge_reg_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_main_B0_merge_reg_1_reg_v_s_0 = bubble_out_main_B0_merge_reg_1_reg_backEN & SE_out_main_B0_merge_reg_V2;
    // Backward Stall generation
    assign bubble_out_main_B0_merge_reg_1_reg_backStall = ~ (bubble_out_main_B0_merge_reg_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_main_B0_merge_reg_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_main_B0_merge_reg_1_reg_backEN == 1'b0)
            begin
                bubble_out_main_B0_merge_reg_1_reg_R_v_0 <= bubble_out_main_B0_merge_reg_1_reg_R_v_0 & bubble_out_main_B0_merge_reg_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_main_B0_merge_reg_1_reg_R_v_0 <= bubble_out_main_B0_merge_reg_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_V0 = SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_and0 = i_llvm_fpga_pop_token_i1_wt_limpop_main0_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_wireValid = i_iord_bl_call_main_unnamed_main0_main2_out_o_valid & SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_and0;

    // i_iord_bl_call_main_unnamed_main0_main2(BLACKBOX,9)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_main_o_fifoready@20000000
    // out out_o_stall@20000000
    main_i_iord_bl_call_unnamed_main0_main0 thei_iord_bl_call_main_unnamed_main0_main2 (
        .in_i_stall(SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_backStall),
        .in_i_valid(bubble_out_main_B0_merge_reg_1_reg_V0),
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .out_iord_bl_call_main_o_fifoready(i_iord_bl_call_main_unnamed_main0_main2_out_iord_bl_call_main_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_call_main_unnamed_main0_main2_out_o_stall),
        .out_o_valid(i_iord_bl_call_main_unnamed_main0_main2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_iord_bl_call_main_o_fifoready = i_iord_bl_call_main_unnamed_main0_main2_out_iord_bl_call_main_o_fifoready;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,26)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_main0_V0;

endmodule
