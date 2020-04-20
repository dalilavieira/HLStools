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

// SystemVerilog created from kmeans_bb_B6_stall_region
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B6_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    output wire [32:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_117_q;
    wire [31:0] c_i32_118_q;
    wire [32:0] c_i33_119_q;
    wire [33:0] i_cmp3441_kmeans1_a;
    wire [33:0] i_cmp3441_kmeans1_b;
    logic [33:0] i_cmp3441_kmeans1_o;
    wire [0:0] i_cmp3441_kmeans1_c;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_valid_out;
    wire [0:0] i_smax13_kmeans9_s;
    reg [31:0] i_smax13_kmeans9_q;
    wire [32:0] i_unnamed_kmeans10_a;
    wire [32:0] i_unnamed_kmeans10_b;
    logic [32:0] i_unnamed_kmeans10_o;
    wire [32:0] i_unnamed_kmeans10_q;
    wire [32:0] i_unnamed_kmeans11_vt_join_q;
    wire [31:0] i_unnamed_kmeans11_vt_select_31_b;
    wire [33:0] i_unnamed_kmeans12_a;
    wire [33:0] i_unnamed_kmeans12_b;
    logic [33:0] i_unnamed_kmeans12_o;
    wire [33:0] i_unnamed_kmeans12_q;
    wire [0:0] i_unnamed_kmeans4_q;
    wire [33:0] i_unnamed_kmeans6_a;
    wire [33:0] i_unnamed_kmeans6_b;
    logic [33:0] i_unnamed_kmeans6_o;
    wire [0:0] i_unnamed_kmeans6_c;
    wire [31:0] bgTrunc_i_unnamed_kmeans10_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_kmeans12_sel_x_b;
    wire [31:0] c_i32_016_recast_x_q;
    wire [32:0] i_unnamed_kmeans11_sel_x_b;
    reg [0:0] redist0_i_cmp3441_kmeans1_c_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_V0;
    reg [0:0] SE_i_unnamed_kmeans6_R_v_0;
    wire [0:0] SE_i_unnamed_kmeans6_v_s_0;
    wire [0:0] SE_i_unnamed_kmeans6_s_tv_0;
    wire [0:0] SE_i_unnamed_kmeans6_backEN;
    wire [0:0] SE_i_unnamed_kmeans6_backStall;
    wire [0:0] SE_i_unnamed_kmeans6_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    reg [0:0] SE_redist0_i_cmp3441_kmeans1_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_cmp3441_kmeans1_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_cmp3441_kmeans1_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_cmp3441_kmeans1_c_1_0_backEN;
    wire [0:0] SE_redist0_i_cmp3441_kmeans1_c_1_0_backStall;
    wire [0:0] SE_redist0_i_cmp3441_kmeans1_c_1_0_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_V0;
    reg [0:0] bubble_out_stall_entry_4_reg_R_v_0;
    wire [0:0] bubble_out_stall_entry_4_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_4_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_4_reg_backEN;
    wire [0:0] bubble_out_stall_entry_4_reg_backStall;
    wire [0:0] bubble_out_stall_entry_4_reg_V0;


    // bubble_out_stall_entry_4_reg(STALLENABLE,143)
    // Valid signal propagation
    assign bubble_out_stall_entry_4_reg_V0 = bubble_out_stall_entry_4_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_stall_entry_4_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_stall_out & bubble_out_stall_entry_4_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_stall_entry_4_reg_backEN = ~ (bubble_out_stall_entry_4_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_4_reg_v_s_0 = bubble_out_stall_entry_4_reg_backEN & SE_stall_entry_V3;
    // Backward Stall generation
    assign bubble_out_stall_entry_4_reg_backStall = ~ (bubble_out_stall_entry_4_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_4_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_4_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_4_reg_R_v_0 <= bubble_out_stall_entry_4_reg_R_v_0 & bubble_out_stall_entry_4_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_4_reg_R_v_0 <= bubble_out_stall_entry_4_reg_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0(BITJOIN,69)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_q = i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0(BITSELECT,70)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_q[31:0]);

    // c_i32_016_recast_x(CONSTANT,54)
    assign c_i32_016_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp3441_kmeans1(COMPARE,10)@0
    assign i_cmp3441_kmeans1_a = $unsigned({{2{c_i32_016_recast_x_q[31]}}, c_i32_016_recast_x_q});
    assign i_cmp3441_kmeans1_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_b});
    assign i_cmp3441_kmeans1_o = $unsigned($signed(i_cmp3441_kmeans1_a) - $signed(i_cmp3441_kmeans1_b));
    assign i_cmp3441_kmeans1_c[0] = i_cmp3441_kmeans1_o[33];

    // redist0_i_cmp3441_kmeans1_c_1_0(REG,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_cmp3441_kmeans1_c_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_cmp3441_kmeans1_c_1_0_backEN == 1'b1)
        begin
            redist0_i_cmp3441_kmeans1_c_1_0_q <= $unsigned(i_cmp3441_kmeans1_c);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13(BLACKBOX,15)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_source_i1_unnamed_15_kmeans0 thei_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(redist0_i_cmp3441_kmeans1_c_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_backStall),
        .in_valid_in(SE_redist0_i_cmp3441_kmeans1_c_1_0_V0),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_cmp3441_kmeans1_c_1_0(STALLENABLE,111)
    // Valid signal propagation
    assign SE_redist0_i_cmp3441_kmeans1_c_1_0_V0 = SE_redist0_i_cmp3441_kmeans1_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_cmp3441_kmeans1_c_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_stall_out & SE_redist0_i_cmp3441_kmeans1_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_cmp3441_kmeans1_c_1_0_backEN = ~ (SE_redist0_i_cmp3441_kmeans1_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_cmp3441_kmeans1_c_1_0_v_s_0 = SE_redist0_i_cmp3441_kmeans1_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_V1;
    // Backward Stall generation
    assign SE_redist0_i_cmp3441_kmeans1_c_1_0_backStall = ~ (SE_redist0_i_cmp3441_kmeans1_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_cmp3441_kmeans1_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_cmp3441_kmeans1_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_cmp3441_kmeans1_c_1_0_R_v_0 <= SE_redist0_i_cmp3441_kmeans1_c_1_0_R_v_0 & SE_redist0_i_cmp3441_kmeans1_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_cmp3441_kmeans1_c_1_0_R_v_0 <= SE_redist0_i_cmp3441_kmeans1_c_1_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg(STALLENABLE,142)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14(STALLENABLE,96)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3(BITJOIN,66)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_q = i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3(BITSELECT,67)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_q[0:0]);

    // i_unnamed_kmeans4(LOGICAL,25)@0
    assign i_unnamed_kmeans4_q = i_cmp3441_kmeans1_c & bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_b;

    // i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_source_i1_unnamed_16_kmeans0 thei_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_unnamed_kmeans4_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_V0),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3(STALLENABLE,86)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_and0 = i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0(STALLENABLE,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_consumed1 = (~ (SE_redist0_i_cmp3441_kmeans1_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_wireValid = i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_0 thei_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_dest_i1_cmp5329_0 thei_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp5329_kmeans3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_num_clusters5633_kmeans0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (bubble_out_stall_entry_4_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed3 & SE_stall_entry_or2);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_dest_i32_num_dim5725_0 thei_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5(STALLENABLE,92)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_backStall = SE_i_unnamed_kmeans6_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_wireValid = i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_valid_out;

    // SE_i_unnamed_kmeans6(STALLENABLE,105)
    // Valid signal propagation
    assign SE_i_unnamed_kmeans6_V0 = SE_i_unnamed_kmeans6_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_kmeans6_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_backStall & SE_i_unnamed_kmeans6_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_kmeans6_backEN = ~ (SE_i_unnamed_kmeans6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_kmeans6_v_s_0 = SE_i_unnamed_kmeans6_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_V0;
    // Backward Stall generation
    assign SE_i_unnamed_kmeans6_backStall = ~ (SE_i_unnamed_kmeans6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_kmeans6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_kmeans6_backEN == 1'b0)
            begin
                SE_i_unnamed_kmeans6_R_v_0 <= SE_i_unnamed_kmeans6_R_v_0 & SE_i_unnamed_kmeans6_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_kmeans6_R_v_0 <= SE_i_unnamed_kmeans6_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_dest_i32_num_dim5724_0 thei_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_backStall),
        .in_valid_in(bubble_out_stall_entry_4_reg_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8(STALLENABLE,90)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_and0 = i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_wireValid = SE_i_unnamed_kmeans6_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15(STALLENABLE,98)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_and0 = i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_and1 = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_and1;

    // c_i33_119(CONSTANT,7)
    assign c_i33_119_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_118(CONSTANT,6)
    assign c_i32_118_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8(BITJOIN,72)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_q = i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8(BITSELECT,73)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_q[31:0]);

    // c_i32_117(CONSTANT,5)
    assign c_i32_117_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5(BITJOIN,75)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_q = i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5(BITSELECT,76)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_q[31:0]);

    // i_unnamed_kmeans6(COMPARE,26)@0 + 1
    assign i_unnamed_kmeans6_a = $unsigned({{2{c_i32_117_q[31]}}, c_i32_117_q});
    assign i_unnamed_kmeans6_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5725_kmeans5_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_kmeans6_o <= 34'b0;
        end
        else if (SE_i_unnamed_kmeans6_backEN == 1'b1)
        begin
            i_unnamed_kmeans6_o <= $unsigned($signed(i_unnamed_kmeans6_a) - $signed(i_unnamed_kmeans6_b));
        end
    end
    assign i_unnamed_kmeans6_c[0] = i_unnamed_kmeans6_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax13_kmeans9(MUX,18)@1
    assign i_smax13_kmeans9_s = i_unnamed_kmeans6_c;
    always @(i_smax13_kmeans9_s or c_i32_117_q or bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_b)
    begin
        unique case (i_smax13_kmeans9_s)
            1'b0 : i_smax13_kmeans9_q = c_i32_117_q;
            1'b1 : i_smax13_kmeans9_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_b;
            default : i_smax13_kmeans9_q = 32'b0;
        endcase
    end

    // i_unnamed_kmeans10(ADD,19)@1
    assign i_unnamed_kmeans10_a = {1'b0, i_smax13_kmeans9_q};
    assign i_unnamed_kmeans10_b = {1'b0, c_i32_118_q};
    assign i_unnamed_kmeans10_o = $unsigned(i_unnamed_kmeans10_a) + $unsigned(i_unnamed_kmeans10_b);
    assign i_unnamed_kmeans10_q = i_unnamed_kmeans10_o[32:0];

    // bgTrunc_i_unnamed_kmeans10_sel_x(BITSELECT,52)@1
    assign bgTrunc_i_unnamed_kmeans10_sel_x_b = i_unnamed_kmeans10_q[31:0];

    // i_unnamed_kmeans11_sel_x(BITSELECT,59)@1
    assign i_unnamed_kmeans11_sel_x_b = {1'b0, bgTrunc_i_unnamed_kmeans10_sel_x_b[31:0]};

    // i_unnamed_kmeans11_vt_select_31(BITSELECT,23)@1
    assign i_unnamed_kmeans11_vt_select_31_b = i_unnamed_kmeans11_sel_x_b[31:0];

    // i_unnamed_kmeans11_vt_join(BITJOIN,22)@1
    assign i_unnamed_kmeans11_vt_join_q = {GND_q, i_unnamed_kmeans11_vt_select_31_b};

    // i_unnamed_kmeans12(ADD,24)@1
    assign i_unnamed_kmeans12_a = {1'b0, i_unnamed_kmeans11_vt_join_q};
    assign i_unnamed_kmeans12_b = {1'b0, c_i33_119_q};
    assign i_unnamed_kmeans12_o = $unsigned(i_unnamed_kmeans12_a) + $unsigned(i_unnamed_kmeans12_b);
    assign i_unnamed_kmeans12_q = i_unnamed_kmeans12_o[33:0];

    // bgTrunc_i_unnamed_kmeans12_sel_x(BITSELECT,53)@1
    assign bgTrunc_i_unnamed_kmeans12_sel_x_b = i_unnamed_kmeans12_q[32:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15(BLACKBOX,17)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_source_i33_unnamed_17_kmeans0 thei_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(bgTrunc_i_unnamed_kmeans12_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_num_dim5724_kmeans8_V0),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,46)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_out_intel_reserved_ffwd_10_0;

    // sync_out(GPOUT,50)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans15_kmeans13_out_intel_reserved_ffwd_8_0;

    // dupName_0_sync_out_x(GPOUT,57)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_kmeans17_kmeans15_V0;

    // dupName_1_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans16_kmeans14_out_intel_reserved_ffwd_9_0;

endmodule
