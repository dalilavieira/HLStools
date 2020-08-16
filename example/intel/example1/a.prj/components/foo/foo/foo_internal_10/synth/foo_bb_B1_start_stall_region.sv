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

// SystemVerilog created from foo_bb_B1_start_stall_region
// SystemVerilog created on Sun Aug 16 19:04:00 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_B1_start_stall_region (
    input wire [63:0] in_iord_bl_call_foo_i_fifodata,
    input wire [0:0] in_iord_bl_call_foo_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_foo3_foo_avm_readdata,
    input wire [0:0] in_unnamed_foo3_foo_avm_writeack,
    input wire [0:0] in_unnamed_foo3_foo_avm_waitrequest,
    input wire [0:0] in_unnamed_foo3_foo_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_foo_o_fifoready,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_return_foo_i_fifoready,
    output wire [63:0] out_unnamed_foo3_foo_avm_address,
    output wire [0:0] out_unnamed_foo3_foo_avm_enable,
    output wire [0:0] out_unnamed_foo3_foo_avm_read,
    output wire [0:0] out_unnamed_foo3_foo_avm_write,
    output wire [63:0] out_unnamed_foo3_foo_avm_writedata,
    output wire [7:0] out_unnamed_foo3_foo_avm_byteenable,
    output wire [0:0] out_unnamed_foo3_foo_avm_burstcount,
    output wire [7:0] out_iowr_bl_return_foo_o_fifodata,
    output wire [0:0] out_iowr_bl_return_foo_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] foo_B1_start_merge_reg_out_stall_out;
    wire [0:0] foo_B1_start_merge_reg_out_valid_out;
    wire [7:0] i_iowr_bl_return_foo_unnamed_foo4_foo5_out_iowr_bl_return_foo_o_fifodata;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo4_foo5_out_iowr_bl_return_foo_o_fifovalid;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo4_foo5_out_o_stall;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo4_foo5_out_o_valid;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_iord_bl_call_foo_o_fifoready;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_address;
    wire [0:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_burstcount;
    wire [7:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_enable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_read;
    wire [0:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_write;
    wire [63:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_writedata;
    wire [7:0] i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_c1_exit_1_tpl;
    wire [63:0] bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_b;
    wire [7:0] bubble_join_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_q;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_b;
    wire [0:0] SE_out_foo_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_foo_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_foo_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_foo_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_foo_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_foo_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_foo_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_foo_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_foo_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_foo_B1_start_merge_reg_or0;
    wire [0:0] SE_out_foo_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_foo_B1_start_merge_reg_V0;
    wire [0:0] SE_out_foo_B1_start_merge_reg_V1;
    wire [0:0] SE_out_i_iowr_bl_return_foo_unnamed_foo4_foo5_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_foo_unnamed_foo4_foo5_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_V1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x(BITJOIN,41)
    assign bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_q = i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_data_0_tpl;

    // bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x(BITSELECT,42)
    assign bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_q[63:0]);

    // SE_out_i_iowr_bl_return_foo_unnamed_foo4_foo5(STALLENABLE,51)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_foo_unnamed_foo4_foo5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_foo_unnamed_foo4_foo5_wireValid = i_iowr_bl_return_foo_unnamed_foo4_foo5_out_o_valid;

    // bubble_join_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x(BITJOIN,45)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_q = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x(BITSELECT,46)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_q[7:0]);

    // i_iowr_bl_return_foo_unnamed_foo4_foo5(BLACKBOX,9)@10
    // in in_i_stall@20000000
    // out out_iowr_bl_return_foo_o_fifodata@20000000
    // out out_iowr_bl_return_foo_o_fifovalid@20000000
    // out out_o_stall@20000000
    foo_i_iowr_bl_return_unnamed_foo4_foo0 thei_iowr_bl_return_foo_unnamed_foo4_foo5 (
        .in_i_data(bubble_select_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_return_foo_unnamed_foo4_foo5_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_V1),
        .in_iowr_bl_return_foo_i_fifoready(in_iowr_bl_return_foo_i_fifoready),
        .out_iowr_bl_return_foo_o_fifodata(i_iowr_bl_return_foo_unnamed_foo4_foo5_out_iowr_bl_return_foo_o_fifodata),
        .out_iowr_bl_return_foo_o_fifovalid(i_iowr_bl_return_foo_unnamed_foo4_foo5_out_iowr_bl_return_foo_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_foo_unnamed_foo4_foo5_out_o_stall),
        .out_o_valid(i_iowr_bl_return_foo_unnamed_foo4_foo5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg(STALLFIFO,78)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(10),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_wireValid = SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_and0;

    // SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x(STALLENABLE,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_consumed0 = (~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_backStall) & SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_consumed1 = (~ (i_iowr_bl_return_foo_unnamed_foo4_foo5_out_o_stall) & SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_o_valid;

    // i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x(BLACKBOX,36)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_unnamed_foo3_foo_avm_address@20000000
    // out out_unnamed_foo3_foo_avm_burstcount@20000000
    // out out_unnamed_foo3_foo_avm_byteenable@20000000
    // out out_unnamed_foo3_foo_avm_enable@20000000
    // out out_unnamed_foo3_foo_avm_read@20000000
    // out out_unnamed_foo3_foo_avm_write@20000000
    // out out_unnamed_foo3_foo_avm_writedata@20000000
    // out out_c1_exit_0_tpl@10
    // out out_c1_exit_1_tpl@10
    foo_i_sfc_s_c1_in_wt_entry_s_c1_enter_foo3 thei_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V0),
        .in_unnamed_foo3_foo_avm_readdata(in_unnamed_foo3_foo_avm_readdata),
        .in_unnamed_foo3_foo_avm_readdatavalid(in_unnamed_foo3_foo_avm_readdatavalid),
        .in_unnamed_foo3_foo_avm_waitrequest(in_unnamed_foo3_foo_avm_waitrequest),
        .in_unnamed_foo3_foo_avm_writeack(in_unnamed_foo3_foo_avm_writeack),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_b),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_o_valid),
        .out_unnamed_foo3_foo_avm_address(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_address),
        .out_unnamed_foo3_foo_avm_burstcount(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_burstcount),
        .out_unnamed_foo3_foo_avm_byteenable(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_byteenable),
        .out_unnamed_foo3_foo_avm_enable(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_enable),
        .out_unnamed_foo3_foo_avm_read(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_read),
        .out_unnamed_foo3_foo_avm_write(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_write),
        .out_unnamed_foo3_foo_avm_writedata(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_writedata),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x(STALLENABLE,55)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V0 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_backStall = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid = i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_valid;

    // i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x(BLACKBOX,34)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_foo_o_fifoready@20000000
    // out out_o_stall@20000000
    foo_i_iord_bl_call_unnamed_foo2_foo0 thei_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x (
        .in_i_stall(SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_backStall),
        .in_i_valid(SE_out_foo_B1_start_merge_reg_V0),
        .in_iord_bl_call_foo_i_fifodata(in_iord_bl_call_foo_i_fifodata),
        .in_iord_bl_call_foo_i_fifovalid(in_iord_bl_call_foo_i_fifovalid),
        .out_iord_bl_call_foo_o_fifoready(i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_iord_bl_call_foo_o_fifoready),
        .out_o_stall(i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,52)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = foo_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // foo_B1_start_merge_reg(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    foo_B1_start_merge_reg thefoo_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_foo_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(foo_B1_start_merge_reg_out_stall_out),
        .out_valid_out(foo_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_foo_B1_start_merge_reg(STALLENABLE,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_foo_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_foo_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_foo_B1_start_merge_reg_fromReg0 <= SE_out_foo_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_foo_B1_start_merge_reg_fromReg1 <= SE_out_foo_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_foo_B1_start_merge_reg_consumed0 = (~ (i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_stall) & SE_out_foo_B1_start_merge_reg_wireValid) | SE_out_foo_B1_start_merge_reg_fromReg0;
    assign SE_out_foo_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_stall) & SE_out_foo_B1_start_merge_reg_wireValid) | SE_out_foo_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_foo_B1_start_merge_reg_StallValid = SE_out_foo_B1_start_merge_reg_backStall & SE_out_foo_B1_start_merge_reg_wireValid;
    assign SE_out_foo_B1_start_merge_reg_toReg0 = SE_out_foo_B1_start_merge_reg_StallValid & SE_out_foo_B1_start_merge_reg_consumed0;
    assign SE_out_foo_B1_start_merge_reg_toReg1 = SE_out_foo_B1_start_merge_reg_StallValid & SE_out_foo_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_foo_B1_start_merge_reg_or0 = SE_out_foo_B1_start_merge_reg_consumed0;
    assign SE_out_foo_B1_start_merge_reg_wireStall = ~ (SE_out_foo_B1_start_merge_reg_consumed1 & SE_out_foo_B1_start_merge_reg_or0);
    assign SE_out_foo_B1_start_merge_reg_backStall = SE_out_foo_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_foo_B1_start_merge_reg_V0 = SE_out_foo_B1_start_merge_reg_wireValid & ~ (SE_out_foo_B1_start_merge_reg_fromReg0);
    assign SE_out_foo_B1_start_merge_reg_V1 = SE_out_foo_B1_start_merge_reg_wireValid & ~ (SE_out_foo_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_foo_B1_start_merge_reg_wireValid = foo_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x(STALLENABLE,57)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x(BLACKBOX,35)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    foo_i_sfc_s_c0_in_wt_entry_s_c0_enter1_foo0 thei_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall),
        .in_i_valid(SE_out_foo_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_foo0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,21)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,26)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,29)
    assign out_iord_bl_call_foo_o_fifoready = i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_iord_bl_call_foo_o_fifoready;

    // dupName_0_sync_out_x(GPOUT,30)@10
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,32)
    assign out_unnamed_foo3_foo_avm_address = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_address;
    assign out_unnamed_foo3_foo_avm_enable = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_enable;
    assign out_unnamed_foo3_foo_avm_read = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_read;
    assign out_unnamed_foo3_foo_avm_write = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_write;
    assign out_unnamed_foo3_foo_avm_writedata = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_writedata;
    assign out_unnamed_foo3_foo_avm_byteenable = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_byteenable;
    assign out_unnamed_foo3_foo_avm_burstcount = i_sfc_s_c1_in_wt_entry_foos_c1_enter_foo3_aunroll_x_out_unnamed_foo3_foo_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,33)
    assign out_iowr_bl_return_foo_o_fifodata = i_iowr_bl_return_foo_unnamed_foo4_foo5_out_iowr_bl_return_foo_o_fifodata;
    assign out_iowr_bl_return_foo_o_fifovalid = i_iowr_bl_return_foo_unnamed_foo4_foo5_out_iowr_bl_return_foo_o_fifovalid;

endmodule
