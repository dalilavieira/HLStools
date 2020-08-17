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
// SystemVerilog created on Sun Aug 16 19:19:00 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_B1_start_stall_region (
    input wire [31:0] in_iord_bl_call_foo_i_fifodata,
    input wire [0:0] in_iord_bl_call_foo_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_return_foo_i_fifoready,
    output wire [0:0] out_iord_bl_call_foo_o_fifoready,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_iowr_bl_return_foo_o_fifodata,
    output wire [0:0] out_iowr_bl_return_foo_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_1310_q;
    wire [31:0] c_i32_1711_q;
    wire [0:0] foo_B1_start_merge_reg_out_stall_out;
    wire [0:0] foo_B1_start_merge_reg_out_valid_out;
    wire [33:0] i_cmp_foo3_a;
    wire [33:0] i_cmp_foo3_b;
    logic [33:0] i_cmp_foo3_o;
    wire [0:0] i_cmp_foo3_c;
    wire [31:0] i_iowr_bl_return_foo_unnamed_foo3_foo6_out_iowr_bl_return_foo_o_fifodata;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo3_foo6_out_iowr_bl_return_foo_o_fifovalid;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo3_foo6_out_o_stall;
    wire [0:0] i_iowr_bl_return_foo_unnamed_foo3_foo6_out_o_valid;
    wire [0:0] i_sroa_speculated_foo5_s;
    reg [31:0] i_sroa_speculated_foo5_q;
    wire [1:0] i_sroa_speculated_foo5_vt_const_1_q;
    wire [26:0] i_sroa_speculated_foo5_vt_const_31_q;
    wire [31:0] i_sroa_speculated_foo5_vt_join_q;
    wire [2:0] i_sroa_speculated_foo5_vt_select_4_b;
    wire [31:0] c_i32_19_recast_x_q;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_iord_bl_call_foo_o_fifoready;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_valid;
    wire [31:0] i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_pipeline_valid_out;
    wire [31:0] bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_q;
    wire [31:0] bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_b;
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
    wire [0:0] SE_out_i_iowr_bl_return_foo_unnamed_foo3_foo6_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_foo_unnamed_foo3_foo6_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_iowr_bl_return_foo_unnamed_foo3_foo6(STALLENABLE,53)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_foo_unnamed_foo3_foo6_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_foo_unnamed_foo3_foo6_wireValid = i_iowr_bl_return_foo_unnamed_foo3_foo6_out_o_valid;

    // i_sroa_speculated_foo5_vt_const_31(CONSTANT,15)
    assign i_sroa_speculated_foo5_vt_const_31_q = $unsigned(27'b000000000000000000000000000);

    // c_i32_1711(CONSTANT,4)
    assign c_i32_1711_q = $unsigned(32'b00000000000000000000000000010001);

    // c_i32_1310(CONSTANT,3)
    assign c_i32_1310_q = $unsigned(32'b00000000000000000000000000001101);

    // bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x(BITJOIN,45)
    assign bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_q = i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_data_0_tpl;

    // bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x(BITSELECT,46)
    assign bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_q[31:0]);

    // c_i32_19_recast_x(CONSTANT,34)
    assign c_i32_19_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_cmp_foo3(COMPARE,11)@1
    assign i_cmp_foo3_a = $unsigned({{2{c_i32_19_recast_x_q[31]}}, c_i32_19_recast_x_q});
    assign i_cmp_foo3_b = $unsigned({{2{bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_b[31]}}, bubble_select_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_b});
    assign i_cmp_foo3_o = $unsigned($signed(i_cmp_foo3_a) - $signed(i_cmp_foo3_b));
    assign i_cmp_foo3_c[0] = i_cmp_foo3_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_sroa_speculated_foo5(MUX,13)@1
    assign i_sroa_speculated_foo5_s = i_cmp_foo3_c;
    always @(i_sroa_speculated_foo5_s or c_i32_1310_q or c_i32_1711_q)
    begin
        unique case (i_sroa_speculated_foo5_s)
            1'b0 : i_sroa_speculated_foo5_q = c_i32_1310_q;
            1'b1 : i_sroa_speculated_foo5_q = c_i32_1711_q;
            default : i_sroa_speculated_foo5_q = 32'b0;
        endcase
    end

    // i_sroa_speculated_foo5_vt_select_4(BITSELECT,17)@1
    assign i_sroa_speculated_foo5_vt_select_4_b = i_sroa_speculated_foo5_q[4:2];

    // i_sroa_speculated_foo5_vt_const_1(CONSTANT,14)
    assign i_sroa_speculated_foo5_vt_const_1_q = $unsigned(2'b01);

    // i_sroa_speculated_foo5_vt_join(BITJOIN,16)@1
    assign i_sroa_speculated_foo5_vt_join_q = {i_sroa_speculated_foo5_vt_const_31_q, i_sroa_speculated_foo5_vt_select_4_b, i_sroa_speculated_foo5_vt_const_1_q};

    // i_iowr_bl_return_foo_unnamed_foo3_foo6(BLACKBOX,12)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_return_foo_o_fifodata@20000000
    // out out_iowr_bl_return_foo_o_fifovalid@20000000
    // out out_o_stall@20000000
    foo_i_iowr_bl_return_unnamed_foo3_foo0 thei_iowr_bl_return_foo_unnamed_foo3_foo6 (
        .in_i_data(i_sroa_speculated_foo5_vt_join_q),
        .in_i_stall(SE_out_i_iowr_bl_return_foo_unnamed_foo3_foo6_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V1),
        .in_iowr_bl_return_foo_i_fifoready(in_iowr_bl_return_foo_i_fifoready),
        .out_iowr_bl_return_foo_o_fifodata(i_iowr_bl_return_foo_unnamed_foo3_foo6_out_iowr_bl_return_foo_o_fifodata),
        .out_iowr_bl_return_foo_o_fifovalid(i_iowr_bl_return_foo_unnamed_foo3_foo6_out_iowr_bl_return_foo_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_foo_unnamed_foo3_foo6_out_o_stall),
        .out_o_valid(i_iowr_bl_return_foo_unnamed_foo3_foo6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x(STALLENABLE,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_consumed0 = (~ (SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall) & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_consumed1 = (~ (i_iowr_bl_return_foo_unnamed_foo3_foo6_out_o_stall) & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_StallValid = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_backStall & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_toReg0 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_StallValid & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_toReg1 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_StallValid & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_or0 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_consumed1 & SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_or0);
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_backStall = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V0 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V1 = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_wireValid = i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_o_valid;

    // i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x(BLACKBOX,39)@1
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

    // SE_stall_entry(STALLENABLE,57)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = foo_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // foo_B1_start_merge_reg(BLACKBOX,10)@0
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

    // SE_out_foo_B1_start_merge_reg(STALLENABLE,50)
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

    // SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x(STALLENABLE,62)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_and0 = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_wireValid = SE_out_i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_V0 & SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_and0;

    // i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x(BLACKBOX,40)@1
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

    // ext_sig_sync_out(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_foo1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,32)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,36)
    assign out_iord_bl_call_foo_o_fifoready = i_iord_bl_call_foo_unnamed_foo2_foo1_aunroll_x_out_iord_bl_call_foo_o_fifoready;

    // dupName_0_sync_out_x(GPOUT,37)@1
    assign out_valid_out = SE_out_i_sfc_s_c0_in_wt_entry_foos_c0_enter1_foo0_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,38)
    assign out_iowr_bl_return_foo_o_fifodata = i_iowr_bl_return_foo_unnamed_foo3_foo6_out_iowr_bl_return_foo_o_fifodata;
    assign out_iowr_bl_return_foo_o_fifovalid = i_iowr_bl_return_foo_unnamed_foo3_foo6_out_iowr_bl_return_foo_o_fifovalid;

endmodule
