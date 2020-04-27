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

// SystemVerilog created from kmeans_i_sfc_logic_s_c0_in_for_cond12_prA000000Z_c0_enter160_kmeans0
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_sfc_logic_s_c0_in_for_cond12_prA000000Z_c0_enter160_kmeans0 (
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    output wire [32:0] out_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kmeans1,
    output wire [0:0] out_unnamed_kmeans14_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_121_q;
    wire [31:0] c_i32_122_q;
    wire [32:0] c_i33_123_q;
    wire [33:0] i_cmp1450_kmeans5_a;
    wire [33:0] i_cmp1450_kmeans5_b;
    logic [33:0] i_cmp1450_kmeans5_o;
    wire [0:0] i_cmp1450_kmeans5_c;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_num_dim5728_kmeans3_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans12_kmeans14_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_kmeans11_kmeans13_out_intel_reserved_ffwd_5_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_kmeans13_kmeans15_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_smax9_kmeans9_s;
    reg [31:0] i_smax9_kmeans9_q;
    wire [31:0] i_smax9_kmeans9_vt_join_q;
    wire [30:0] i_smax9_kmeans9_vt_select_30_b;
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
    wire [33:0] i_unnamed_kmeans7_a;
    wire [33:0] i_unnamed_kmeans7_b;
    logic [33:0] i_unnamed_kmeans7_o;
    wire [0:0] i_unnamed_kmeans7_c;
    wire [63:0] bgTrunc_i_mul13_kmeans4_sel_x_in;
    wire [31:0] bgTrunc_i_mul13_kmeans4_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_kmeans10_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_kmeans12_sel_x_b;
    wire [31:0] c_i32_020_recast_x_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_z6kmeansiii_inputss_unnamed_kmeans10_kmeans1_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [32:0] i_unnamed_kmeans11_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [63:0] i_mul13_kmeans4_sums_join_0_q;
    wire [50:0] i_mul13_kmeans4_sums_align_1_q;
    wire [50:0] i_mul13_kmeans4_sums_align_1_qint;
    wire [64:0] i_mul13_kmeans4_sums_result_add_0_0_a;
    wire [64:0] i_mul13_kmeans4_sums_result_add_0_0_b;
    logic [64:0] i_mul13_kmeans4_sums_result_add_0_0_o;
    wire [64:0] i_mul13_kmeans4_sums_result_add_0_0_q;
    wire i_mul13_kmeans4_im0_cma_reset;
    wire [13:0] i_mul13_kmeans4_im0_cma_a0;
    wire [13:0] i_mul13_kmeans4_im0_cma_c0;
    wire [27:0] i_mul13_kmeans4_im0_cma_s0;
    wire [27:0] i_mul13_kmeans4_im0_cma_qq;
    wire [27:0] i_mul13_kmeans4_im0_cma_q;
    wire i_mul13_kmeans4_im0_cma_ena0;
    wire i_mul13_kmeans4_im0_cma_ena1;
    wire i_mul13_kmeans4_im0_cma_ena2;
    wire i_mul13_kmeans4_im8_cma_reset;
    wire [17:0] i_mul13_kmeans4_im8_cma_a0;
    wire [17:0] i_mul13_kmeans4_im8_cma_c0;
    wire [35:0] i_mul13_kmeans4_im8_cma_s0;
    wire [35:0] i_mul13_kmeans4_im8_cma_qq;
    wire [35:0] i_mul13_kmeans4_im8_cma_q;
    wire i_mul13_kmeans4_im8_cma_ena0;
    wire i_mul13_kmeans4_im8_cma_ena1;
    wire i_mul13_kmeans4_im8_cma_ena2;
    wire i_mul13_kmeans4_ma3_cma_reset;
    wire [13:0] i_mul13_kmeans4_ma3_cma_a0;
    wire [17:0] i_mul13_kmeans4_ma3_cma_c0;
    wire [13:0] i_mul13_kmeans4_ma3_cma_a1;
    wire [17:0] i_mul13_kmeans4_ma3_cma_c1;
    wire [32:0] i_mul13_kmeans4_ma3_cma_s0;
    wire [32:0] i_mul13_kmeans4_ma3_cma_qq;
    wire [32:0] i_mul13_kmeans4_ma3_cma_q;
    wire i_mul13_kmeans4_ma3_cma_ena0;
    wire i_mul13_kmeans4_ma3_cma_ena1;
    wire i_mul13_kmeans4_ma3_cma_ena2;
    wire [13:0] i_mul13_kmeans4_bs1_merged_bit_select_b;
    wire [17:0] i_mul13_kmeans4_bs1_merged_bit_select_c;
    wire [13:0] i_mul13_kmeans4_bs2_merged_bit_select_b;
    wire [17:0] i_mul13_kmeans4_bs2_merged_bit_select_c;
    reg [31:0] redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q;
    reg [0:0] redist1_sync_together26_in_i_valid_4_q;
    reg [0:0] redist1_sync_together26_in_i_valid_4_delay_0;
    reg [0:0] redist1_sync_together26_in_i_valid_4_delay_1;
    reg [0:0] redist1_sync_together26_in_i_valid_4_delay_2;
    reg [0:0] redist2_sync_together26_in_i_valid_5_q;
    reg [30:0] redist3_i_smax9_kmeans9_vt_select_30_b_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // valid_fanout_reg3(REG,52)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,83)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg1(REG,50)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_struct_z6kmeansiii_inputss_unnamed_kmeans10_kmeans1_aunroll_x(BLACKBOX,45)@1
    kmeans_i_llvm_fpga_ffwd_dest_s_struct_z6A000000Zmed_kmeans10_kmeans0 thei_llvm_fpga_ffwd_dest_s_struct_z6kmeansiii_inputss_unnamed_kmeans10_kmeans1_aunroll_x (
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_z6kmeansiii_inputss_unnamed_kmeans10_kmeans1_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_dest_data_out_0_0_2_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_kmeans11_kmeans13(BLACKBOX,14)@1
    // out out_intel_reserved_ffwd_5_0@20000000
    kmeans_i_llvm_fpga_ffwd_source_i32_unnamed_11_kmeans0 thei_llvm_fpga_ffwd_source_i32_unnamed_kmeans11_kmeans13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_llvm_fpga_ffwd_dest_s_struct_z6kmeansiii_inputss_unnamed_kmeans10_kmeans1_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_kmeans11_kmeans13_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,31)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_kmeans11_kmeans13_out_intel_reserved_ffwd_5_0;

    // redist1_sync_together26_in_i_valid_4(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together26_in_i_valid_4_delay_0 <= '0;
            redist1_sync_together26_in_i_valid_4_delay_1 <= '0;
            redist1_sync_together26_in_i_valid_4_delay_2 <= '0;
            redist1_sync_together26_in_i_valid_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together26_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together26_in_i_valid_4_delay_1 <= redist1_sync_together26_in_i_valid_4_delay_0;
            redist1_sync_together26_in_i_valid_4_delay_2 <= redist1_sync_together26_in_i_valid_4_delay_1;
            redist1_sync_together26_in_i_valid_4_q <= redist1_sync_together26_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg4(REG,53)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together26_in_i_valid_4_q);
        end
    end

    // i_mul13_kmeans4_bs2_merged_bit_select(BITSELECT,78)@1
    assign i_mul13_kmeans4_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_s_struct_z6kmeansiii_inputss_unnamed_kmeans10_kmeans1_aunroll_x_out_dest_data_out_0_0_1_tpl[31:18];
    assign i_mul13_kmeans4_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_s_struct_z6kmeansiii_inputss_unnamed_kmeans10_kmeans1_aunroll_x_out_dest_data_out_0_0_1_tpl[17:0];

    // valid_fanout_reg2(REG,51)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_num_dim5728_kmeans3(BLACKBOX,12)@1
    kmeans_i_llvm_fpga_ffwd_dest_i32_num_dim5728_0 thei_llvm_fpga_ffwd_dest_i32_num_dim5728_kmeans3 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_num_dim5728_kmeans3_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul13_kmeans4_bs1_merged_bit_select(BITSELECT,77)@1
    assign i_mul13_kmeans4_bs1_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_num_dim5728_kmeans3_out_dest_data_out_2_0[31:18];
    assign i_mul13_kmeans4_bs1_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_num_dim5728_kmeans3_out_dest_data_out_2_0[17:0];

    // i_mul13_kmeans4_ma3_cma(CHAINMULTADD,76)@1 + 3
    assign i_mul13_kmeans4_ma3_cma_reset = ~ (resetn);
    assign i_mul13_kmeans4_ma3_cma_ena0 = in_enable[0];
    assign i_mul13_kmeans4_ma3_cma_ena1 = i_mul13_kmeans4_ma3_cma_ena0;
    assign i_mul13_kmeans4_ma3_cma_ena2 = i_mul13_kmeans4_ma3_cma_ena0;

    assign i_mul13_kmeans4_ma3_cma_a0 = i_mul13_kmeans4_bs1_merged_bit_select_b;
    assign i_mul13_kmeans4_ma3_cma_c0 = i_mul13_kmeans4_bs2_merged_bit_select_c;
    assign i_mul13_kmeans4_ma3_cma_a1 = i_mul13_kmeans4_bs2_merged_bit_select_b;
    assign i_mul13_kmeans4_ma3_cma_c1 = i_mul13_kmeans4_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul13_kmeans4_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul13_kmeans4_ma3_cma_ena2, i_mul13_kmeans4_ma3_cma_ena1, i_mul13_kmeans4_ma3_cma_ena0 }),
        .aclr({ i_mul13_kmeans4_ma3_cma_reset, i_mul13_kmeans4_ma3_cma_reset }),
        .ay(i_mul13_kmeans4_ma3_cma_a1),
        .by(i_mul13_kmeans4_ma3_cma_a0),
        .ax(i_mul13_kmeans4_ma3_cma_c1),
        .bx(i_mul13_kmeans4_ma3_cma_c0),
        .resulta(i_mul13_kmeans4_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul13_kmeans4_ma3_cma_delay ( .xin(i_mul13_kmeans4_ma3_cma_s0), .xout(i_mul13_kmeans4_ma3_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul13_kmeans4_ma3_cma_q = $unsigned(i_mul13_kmeans4_ma3_cma_qq[32:0]);

    // i_mul13_kmeans4_sums_align_1(BITSHIFT,71)@4
    assign i_mul13_kmeans4_sums_align_1_qint = { i_mul13_kmeans4_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul13_kmeans4_sums_align_1_q = i_mul13_kmeans4_sums_align_1_qint[50:0];

    // i_mul13_kmeans4_im0_cma(CHAINMULTADD,74)@1 + 3
    assign i_mul13_kmeans4_im0_cma_reset = ~ (resetn);
    assign i_mul13_kmeans4_im0_cma_ena0 = in_enable[0];
    assign i_mul13_kmeans4_im0_cma_ena1 = i_mul13_kmeans4_im0_cma_ena0;
    assign i_mul13_kmeans4_im0_cma_ena2 = i_mul13_kmeans4_im0_cma_ena0;

    assign i_mul13_kmeans4_im0_cma_a0 = i_mul13_kmeans4_bs1_merged_bit_select_b;
    assign i_mul13_kmeans4_im0_cma_c0 = i_mul13_kmeans4_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul13_kmeans4_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul13_kmeans4_im0_cma_ena2, i_mul13_kmeans4_im0_cma_ena1, i_mul13_kmeans4_im0_cma_ena0 }),
        .aclr({ i_mul13_kmeans4_im0_cma_reset, i_mul13_kmeans4_im0_cma_reset }),
        .ay(i_mul13_kmeans4_im0_cma_a0),
        .ax(i_mul13_kmeans4_im0_cma_c0),
        .resulta(i_mul13_kmeans4_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul13_kmeans4_im0_cma_delay ( .xin(i_mul13_kmeans4_im0_cma_s0), .xout(i_mul13_kmeans4_im0_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul13_kmeans4_im0_cma_q = $unsigned(i_mul13_kmeans4_im0_cma_qq[27:0]);

    // i_mul13_kmeans4_im8_cma(CHAINMULTADD,75)@1 + 3
    assign i_mul13_kmeans4_im8_cma_reset = ~ (resetn);
    assign i_mul13_kmeans4_im8_cma_ena0 = in_enable[0];
    assign i_mul13_kmeans4_im8_cma_ena1 = i_mul13_kmeans4_im8_cma_ena0;
    assign i_mul13_kmeans4_im8_cma_ena2 = i_mul13_kmeans4_im8_cma_ena0;

    assign i_mul13_kmeans4_im8_cma_a0 = i_mul13_kmeans4_bs1_merged_bit_select_c;
    assign i_mul13_kmeans4_im8_cma_c0 = i_mul13_kmeans4_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul13_kmeans4_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul13_kmeans4_im8_cma_ena2, i_mul13_kmeans4_im8_cma_ena1, i_mul13_kmeans4_im8_cma_ena0 }),
        .aclr({ i_mul13_kmeans4_im8_cma_reset, i_mul13_kmeans4_im8_cma_reset }),
        .ay(i_mul13_kmeans4_im8_cma_a0),
        .ax(i_mul13_kmeans4_im8_cma_c0),
        .resulta(i_mul13_kmeans4_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul13_kmeans4_im8_cma_delay ( .xin(i_mul13_kmeans4_im8_cma_s0), .xout(i_mul13_kmeans4_im8_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul13_kmeans4_im8_cma_q = $unsigned(i_mul13_kmeans4_im8_cma_qq[35:0]);

    // i_mul13_kmeans4_sums_join_0(BITJOIN,70)@4
    assign i_mul13_kmeans4_sums_join_0_q = {i_mul13_kmeans4_im0_cma_q, i_mul13_kmeans4_im8_cma_q};

    // i_mul13_kmeans4_sums_result_add_0_0(ADD,73)@4
    assign i_mul13_kmeans4_sums_result_add_0_0_a = {1'b0, i_mul13_kmeans4_sums_join_0_q};
    assign i_mul13_kmeans4_sums_result_add_0_0_b = {14'b00000000000000, i_mul13_kmeans4_sums_align_1_q};
    assign i_mul13_kmeans4_sums_result_add_0_0_o = $unsigned(i_mul13_kmeans4_sums_result_add_0_0_a) + $unsigned(i_mul13_kmeans4_sums_result_add_0_0_b);
    assign i_mul13_kmeans4_sums_result_add_0_0_q = i_mul13_kmeans4_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul13_kmeans4_sel_x(BITSELECT,34)@4
    assign bgTrunc_i_mul13_kmeans4_sel_x_in = i_mul13_kmeans4_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul13_kmeans4_sel_x_b = bgTrunc_i_mul13_kmeans4_sel_x_in[31:0];

    // redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul13_kmeans4_sel_x_b);
        end
    end

    // c_i32_020_recast_x(CONSTANT,37)
    assign c_i32_020_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp1450_kmeans5(COMPARE,11)@5
    assign i_cmp1450_kmeans5_a = $unsigned({{2{c_i32_020_recast_x_q[31]}}, c_i32_020_recast_x_q});
    assign i_cmp1450_kmeans5_b = $unsigned({{2{redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q[31]}}, redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q});
    assign i_cmp1450_kmeans5_o = $unsigned($signed(i_cmp1450_kmeans5_a) - $signed(i_cmp1450_kmeans5_b));
    assign i_cmp1450_kmeans5_c[0] = i_cmp1450_kmeans5_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_kmeans12_kmeans14(BLACKBOX,13)@5
    // out out_intel_reserved_ffwd_6_0@20000000
    kmeans_i_llvm_fpga_ffwd_source_i1_unnamed_12_kmeans0 thei_llvm_fpga_ffwd_source_i1_unnamed_kmeans12_kmeans14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_cmp1450_kmeans5_c),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans12_kmeans14_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans12_kmeans14_out_intel_reserved_ffwd_6_0;

    // redist2_sync_together26_in_i_valid_5(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together26_in_i_valid_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together26_in_i_valid_5_q <= $unsigned(redist1_sync_together26_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg5(REG,54)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together26_in_i_valid_5_q);
        end
    end

    // c_i33_123(CONSTANT,8)
    assign c_i33_123_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_122(CONSTANT,7)
    assign c_i32_122_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_121(CONSTANT,6)
    assign c_i32_121_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_kmeans7(COMPARE,27)@5
    assign i_unnamed_kmeans7_a = $unsigned({{2{c_i32_121_q[31]}}, c_i32_121_q});
    assign i_unnamed_kmeans7_b = $unsigned({{2{redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q[31]}}, redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q});
    assign i_unnamed_kmeans7_o = $unsigned($signed(i_unnamed_kmeans7_a) - $signed(i_unnamed_kmeans7_b));
    assign i_unnamed_kmeans7_c[0] = i_unnamed_kmeans7_o[33];

    // i_smax9_kmeans9(MUX,17)@5
    assign i_smax9_kmeans9_s = i_unnamed_kmeans7_c;
    always @(i_smax9_kmeans9_s or c_i32_121_q or redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q)
    begin
        unique case (i_smax9_kmeans9_s)
            1'b0 : i_smax9_kmeans9_q = c_i32_121_q;
            1'b1 : i_smax9_kmeans9_q = redist0_bgTrunc_i_mul13_kmeans4_sel_x_b_1_q;
            default : i_smax9_kmeans9_q = 32'b0;
        endcase
    end

    // i_smax9_kmeans9_vt_select_30(BITSELECT,20)@5
    assign i_smax9_kmeans9_vt_select_30_b = i_smax9_kmeans9_q[30:0];

    // redist3_i_smax9_kmeans9_vt_select_30_b_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_smax9_kmeans9_vt_select_30_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_smax9_kmeans9_vt_select_30_b_1_q <= $unsigned(i_smax9_kmeans9_vt_select_30_b);
        end
    end

    // i_smax9_kmeans9_vt_join(BITJOIN,19)@6
    assign i_smax9_kmeans9_vt_join_q = {GND_q, redist3_i_smax9_kmeans9_vt_select_30_b_1_q};

    // i_unnamed_kmeans10(ADD,21)@6
    assign i_unnamed_kmeans10_a = {1'b0, i_smax9_kmeans9_vt_join_q};
    assign i_unnamed_kmeans10_b = {1'b0, c_i32_122_q};
    assign i_unnamed_kmeans10_o = $unsigned(i_unnamed_kmeans10_a) + $unsigned(i_unnamed_kmeans10_b);
    assign i_unnamed_kmeans10_q = i_unnamed_kmeans10_o[32:0];

    // bgTrunc_i_unnamed_kmeans10_sel_x(BITSELECT,35)@6
    assign bgTrunc_i_unnamed_kmeans10_sel_x_b = i_unnamed_kmeans10_q[31:0];

    // i_unnamed_kmeans11_sel_x(BITSELECT,46)@6
    assign i_unnamed_kmeans11_sel_x_b = {1'b0, bgTrunc_i_unnamed_kmeans10_sel_x_b[31:0]};

    // i_unnamed_kmeans11_vt_select_31(BITSELECT,25)@6
    assign i_unnamed_kmeans11_vt_select_31_b = i_unnamed_kmeans11_sel_x_b[31:0];

    // i_unnamed_kmeans11_vt_join(BITJOIN,24)@6
    assign i_unnamed_kmeans11_vt_join_q = {GND_q, i_unnamed_kmeans11_vt_select_31_b};

    // i_unnamed_kmeans12(ADD,26)@6
    assign i_unnamed_kmeans12_a = {1'b0, i_unnamed_kmeans11_vt_join_q};
    assign i_unnamed_kmeans12_b = {1'b0, c_i33_123_q};
    assign i_unnamed_kmeans12_o = $unsigned(i_unnamed_kmeans12_a) + $unsigned(i_unnamed_kmeans12_b);
    assign i_unnamed_kmeans12_q = i_unnamed_kmeans12_o[33:0];

    // bgTrunc_i_unnamed_kmeans12_sel_x(BITSELECT,36)@6
    assign bgTrunc_i_unnamed_kmeans12_sel_x_b = i_unnamed_kmeans12_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_kmeans13_kmeans15(BLACKBOX,15)@6
    // out out_intel_reserved_ffwd_7_0@20000000
    kmeans_i_llvm_fpga_ffwd_source_i33_unnamed_13_kmeans0 thei_llvm_fpga_ffwd_source_i33_unnamed_kmeans13_kmeans15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(bgTrunc_i_unnamed_kmeans12_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i33_unnamed_kmeans13_kmeans15_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i33_unnamed_kmeans13_kmeans15_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg0(REG,49)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together26_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,48)@6
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kmeans1 = GND_q;
    assign out_unnamed_kmeans14_0_tpl = GND_q;

endmodule
