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

// SystemVerilog created from zlaswp_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter9_zlaswp0
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter9_zlaswp0 (
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zlaswp12_0_tpl,
    output wire [0:0] out_unnamed_zlaswp13,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [31:0] in_c0_eni4_1_tpl,
    input wire [31:0] in_c0_eni4_2_tpl,
    input wire [0:0] in_c0_eni4_3_tpl,
    input wire [31:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_110_q;
    wire [32:0] i_add3_zlaswp4_a;
    wire [32:0] i_add3_zlaswp4_b;
    logic [32:0] i_add3_zlaswp4_o;
    wire [32:0] i_add3_zlaswp4_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp11_zlaswp6_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_select88_zlaswp5_s;
    reg [31:0] i_select88_zlaswp5_q;
    wire [32:0] i_sub_zlaswp2_a;
    wire [32:0] i_sub_zlaswp2_b;
    logic [32:0] i_sub_zlaswp2_o;
    wire [32:0] i_sub_zlaswp2_q;
    wire [31:0] bgTrunc_i_add3_zlaswp4_sel_x_b;
    wire [63:0] bgTrunc_i_mul_zlaswp3_sel_x_in;
    wire [31:0] bgTrunc_i_mul_zlaswp3_sel_x_b;
    wire [31:0] bgTrunc_i_sub_zlaswp2_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [63:0] i_mul_zlaswp3_sums_join_0_q;
    wire [50:0] i_mul_zlaswp3_sums_align_1_q;
    wire [50:0] i_mul_zlaswp3_sums_align_1_qint;
    wire [64:0] i_mul_zlaswp3_sums_result_add_0_0_a;
    wire [64:0] i_mul_zlaswp3_sums_result_add_0_0_b;
    logic [64:0] i_mul_zlaswp3_sums_result_add_0_0_o;
    wire [64:0] i_mul_zlaswp3_sums_result_add_0_0_q;
    wire i_mul_zlaswp3_im0_cma_reset;
    wire [13:0] i_mul_zlaswp3_im0_cma_a0;
    wire [13:0] i_mul_zlaswp3_im0_cma_c0;
    wire [27:0] i_mul_zlaswp3_im0_cma_s0;
    wire [27:0] i_mul_zlaswp3_im0_cma_qq;
    wire [27:0] i_mul_zlaswp3_im0_cma_q;
    wire i_mul_zlaswp3_im0_cma_ena0;
    wire i_mul_zlaswp3_im0_cma_ena1;
    wire i_mul_zlaswp3_im0_cma_ena2;
    wire i_mul_zlaswp3_im8_cma_reset;
    wire [17:0] i_mul_zlaswp3_im8_cma_a0;
    wire [17:0] i_mul_zlaswp3_im8_cma_c0;
    wire [35:0] i_mul_zlaswp3_im8_cma_s0;
    wire [35:0] i_mul_zlaswp3_im8_cma_qq;
    wire [35:0] i_mul_zlaswp3_im8_cma_q;
    wire i_mul_zlaswp3_im8_cma_ena0;
    wire i_mul_zlaswp3_im8_cma_ena1;
    wire i_mul_zlaswp3_im8_cma_ena2;
    wire i_mul_zlaswp3_ma3_cma_reset;
    wire [13:0] i_mul_zlaswp3_ma3_cma_a0;
    wire [17:0] i_mul_zlaswp3_ma3_cma_c0;
    wire [13:0] i_mul_zlaswp3_ma3_cma_a1;
    wire [17:0] i_mul_zlaswp3_ma3_cma_c1;
    wire [32:0] i_mul_zlaswp3_ma3_cma_s0;
    wire [32:0] i_mul_zlaswp3_ma3_cma_qq;
    wire [32:0] i_mul_zlaswp3_ma3_cma_q;
    wire i_mul_zlaswp3_ma3_cma_ena0;
    wire i_mul_zlaswp3_ma3_cma_ena1;
    wire i_mul_zlaswp3_ma3_cma_ena2;
    wire [13:0] i_mul_zlaswp3_bs1_merged_bit_select_b;
    wire [17:0] i_mul_zlaswp3_bs1_merged_bit_select_c;
    wire [13:0] i_mul_zlaswp3_bs2_merged_bit_select_b;
    wire [17:0] i_mul_zlaswp3_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_q;
    reg [0:0] redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_0;
    reg [0:0] redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_1;
    reg [0:0] redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_2;
    reg [0:0] redist2_sync_together11_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist2_sync_together11_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist2_sync_together11_aunroll_x_in_i_valid_3_delay_1;
    reg [31:0] redist3_bgTrunc_i_mul_zlaswp3_sel_x_b_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;
    reg [31:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_outputreg0_q;
    wire redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_reset0;
    wire [31:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_ia;
    wire [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_aa;
    wire [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_ab;
    wire [31:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_iq;
    wire [31:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_q;
    wire [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_i;
    wire [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_s;
    reg [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_q;
    reg [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_cmpReg_q;
    wire [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_notEnable_q;
    wire [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_sticky_ena_q;
    wire [0:0] redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_enaAnd_q;


    // redist2_sync_together11_aunroll_x_in_i_valid_3(DELAY,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together11_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist2_sync_together11_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist2_sync_together11_aunroll_x_in_i_valid_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together11_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist2_sync_together11_aunroll_x_in_i_valid_3_delay_1 <= redist2_sync_together11_aunroll_x_in_i_valid_3_delay_0;
            redist2_sync_together11_aunroll_x_in_i_valid_3_q <= redist2_sync_together11_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg1(REG,22)@69 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(redist2_sync_together11_aunroll_x_in_i_valid_3_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,50)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_notEnable(LOGICAL,57)
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_notEnable_q = $unsigned(~ (in_enable));

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_nor(LOGICAL,58)
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_nor_q = ~ (redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_notEnable_q | redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_sticky_ena_q);

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_cmpReg(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_sticky_ena(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_nor_q == 1'b1)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_sticky_ena_q <= $unsigned(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_cmpReg_q);
        end
    end

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_enaAnd(LOGICAL,60)
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_enaAnd_q = redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_sticky_ena_q & in_enable;

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt(COUNTER,53)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_i <= 1'd0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_i <= $unsigned(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_q = redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_i[0:0];

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux(MUX,54)
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_s = in_enable;
    always @(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_s or redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_wraddr_q or redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_q)
    begin
        unique case (redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_s)
            1'b0 : redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_q = redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_wraddr_q;
            1'b1 : redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_q = redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdcnt_q;
            default : redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_q = 1'b0;
        endcase
    end

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_wraddr(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_wraddr_q <= $unsigned(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_q);
        end
    end

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem(DUALMEM,52)
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_ia = $unsigned(in_c0_eni4_4_tpl);
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_aa = redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_wraddr_q;
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_ab = redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_rdmux_q;
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_dmem (
        .clocken1(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_aa),
        .data_a(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_ab),
        .q_b(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_q = redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_iq[31:0];

    // redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_outputreg0(DELAY,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_outputreg0_q <= $unsigned(redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_mem_q);
        end
    end

    // c_i32_110(CONSTANT,6)
    assign c_i32_110_q = $unsigned(32'b00000000000000000000000000000001);

    // i_mul_zlaswp3_bs2_merged_bit_select(BITSELECT,45)@66
    assign i_mul_zlaswp3_bs2_merged_bit_select_b = in_c0_eni4_2_tpl[31:18];
    assign i_mul_zlaswp3_bs2_merged_bit_select_c = in_c0_eni4_2_tpl[17:0];

    // i_sub_zlaswp2(SUB,13)@66
    assign i_sub_zlaswp2_a = {1'b0, c_i32_110_q};
    assign i_sub_zlaswp2_b = {1'b0, in_c0_eni4_1_tpl};
    assign i_sub_zlaswp2_o = $unsigned(i_sub_zlaswp2_a) - $unsigned(i_sub_zlaswp2_b);
    assign i_sub_zlaswp2_q = i_sub_zlaswp2_o[32:0];

    // bgTrunc_i_sub_zlaswp2_sel_x(BITSELECT,18)@66
    assign bgTrunc_i_sub_zlaswp2_sel_x_b = $unsigned(i_sub_zlaswp2_q[31:0]);

    // i_mul_zlaswp3_bs1_merged_bit_select(BITSELECT,44)@66
    assign i_mul_zlaswp3_bs1_merged_bit_select_b = bgTrunc_i_sub_zlaswp2_sel_x_b[31:18];
    assign i_mul_zlaswp3_bs1_merged_bit_select_c = bgTrunc_i_sub_zlaswp2_sel_x_b[17:0];

    // i_mul_zlaswp3_ma3_cma(CHAINMULTADD,43)@66 + 3
    assign i_mul_zlaswp3_ma3_cma_reset = ~ (resetn);
    assign i_mul_zlaswp3_ma3_cma_ena0 = in_enable[0];
    assign i_mul_zlaswp3_ma3_cma_ena1 = i_mul_zlaswp3_ma3_cma_ena0;
    assign i_mul_zlaswp3_ma3_cma_ena2 = i_mul_zlaswp3_ma3_cma_ena0;

    assign i_mul_zlaswp3_ma3_cma_a0 = i_mul_zlaswp3_bs1_merged_bit_select_b;
    assign i_mul_zlaswp3_ma3_cma_c0 = i_mul_zlaswp3_bs2_merged_bit_select_c;
    assign i_mul_zlaswp3_ma3_cma_a1 = i_mul_zlaswp3_bs2_merged_bit_select_b;
    assign i_mul_zlaswp3_ma3_cma_c1 = i_mul_zlaswp3_bs1_merged_bit_select_c;
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
    ) i_mul_zlaswp3_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_zlaswp3_ma3_cma_ena2, i_mul_zlaswp3_ma3_cma_ena1, i_mul_zlaswp3_ma3_cma_ena0 }),
        .aclr({ i_mul_zlaswp3_ma3_cma_reset, i_mul_zlaswp3_ma3_cma_reset }),
        .ay(i_mul_zlaswp3_ma3_cma_a1),
        .by(i_mul_zlaswp3_ma3_cma_a0),
        .ax(i_mul_zlaswp3_ma3_cma_c1),
        .bx(i_mul_zlaswp3_ma3_cma_c0),
        .resulta(i_mul_zlaswp3_ma3_cma_s0),
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
    i_mul_zlaswp3_ma3_cma_delay ( .xin(i_mul_zlaswp3_ma3_cma_s0), .xout(i_mul_zlaswp3_ma3_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_zlaswp3_ma3_cma_q = $unsigned(i_mul_zlaswp3_ma3_cma_qq[32:0]);

    // i_mul_zlaswp3_sums_align_1(BITSHIFT,38)@69
    assign i_mul_zlaswp3_sums_align_1_qint = { i_mul_zlaswp3_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_zlaswp3_sums_align_1_q = i_mul_zlaswp3_sums_align_1_qint[50:0];

    // i_mul_zlaswp3_im0_cma(CHAINMULTADD,41)@66 + 3
    assign i_mul_zlaswp3_im0_cma_reset = ~ (resetn);
    assign i_mul_zlaswp3_im0_cma_ena0 = in_enable[0];
    assign i_mul_zlaswp3_im0_cma_ena1 = i_mul_zlaswp3_im0_cma_ena0;
    assign i_mul_zlaswp3_im0_cma_ena2 = i_mul_zlaswp3_im0_cma_ena0;

    assign i_mul_zlaswp3_im0_cma_a0 = i_mul_zlaswp3_bs1_merged_bit_select_b;
    assign i_mul_zlaswp3_im0_cma_c0 = i_mul_zlaswp3_bs2_merged_bit_select_b;
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
    ) i_mul_zlaswp3_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_zlaswp3_im0_cma_ena2, i_mul_zlaswp3_im0_cma_ena1, i_mul_zlaswp3_im0_cma_ena0 }),
        .aclr({ i_mul_zlaswp3_im0_cma_reset, i_mul_zlaswp3_im0_cma_reset }),
        .ay(i_mul_zlaswp3_im0_cma_a0),
        .ax(i_mul_zlaswp3_im0_cma_c0),
        .resulta(i_mul_zlaswp3_im0_cma_s0),
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
    i_mul_zlaswp3_im0_cma_delay ( .xin(i_mul_zlaswp3_im0_cma_s0), .xout(i_mul_zlaswp3_im0_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_zlaswp3_im0_cma_q = $unsigned(i_mul_zlaswp3_im0_cma_qq[27:0]);

    // i_mul_zlaswp3_im8_cma(CHAINMULTADD,42)@66 + 3
    assign i_mul_zlaswp3_im8_cma_reset = ~ (resetn);
    assign i_mul_zlaswp3_im8_cma_ena0 = in_enable[0];
    assign i_mul_zlaswp3_im8_cma_ena1 = i_mul_zlaswp3_im8_cma_ena0;
    assign i_mul_zlaswp3_im8_cma_ena2 = i_mul_zlaswp3_im8_cma_ena0;

    assign i_mul_zlaswp3_im8_cma_a0 = i_mul_zlaswp3_bs1_merged_bit_select_c;
    assign i_mul_zlaswp3_im8_cma_c0 = i_mul_zlaswp3_bs2_merged_bit_select_c;
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
    ) i_mul_zlaswp3_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_zlaswp3_im8_cma_ena2, i_mul_zlaswp3_im8_cma_ena1, i_mul_zlaswp3_im8_cma_ena0 }),
        .aclr({ i_mul_zlaswp3_im8_cma_reset, i_mul_zlaswp3_im8_cma_reset }),
        .ay(i_mul_zlaswp3_im8_cma_a0),
        .ax(i_mul_zlaswp3_im8_cma_c0),
        .resulta(i_mul_zlaswp3_im8_cma_s0),
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
    i_mul_zlaswp3_im8_cma_delay ( .xin(i_mul_zlaswp3_im8_cma_s0), .xout(i_mul_zlaswp3_im8_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_zlaswp3_im8_cma_q = $unsigned(i_mul_zlaswp3_im8_cma_qq[35:0]);

    // i_mul_zlaswp3_sums_join_0(BITJOIN,37)@69
    assign i_mul_zlaswp3_sums_join_0_q = {i_mul_zlaswp3_im0_cma_q, i_mul_zlaswp3_im8_cma_q};

    // i_mul_zlaswp3_sums_result_add_0_0(ADD,40)@69
    assign i_mul_zlaswp3_sums_result_add_0_0_a = {1'b0, i_mul_zlaswp3_sums_join_0_q};
    assign i_mul_zlaswp3_sums_result_add_0_0_b = {14'b00000000000000, i_mul_zlaswp3_sums_align_1_q};
    assign i_mul_zlaswp3_sums_result_add_0_0_o = $unsigned(i_mul_zlaswp3_sums_result_add_0_0_a) + $unsigned(i_mul_zlaswp3_sums_result_add_0_0_b);
    assign i_mul_zlaswp3_sums_result_add_0_0_q = i_mul_zlaswp3_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_zlaswp3_sel_x(BITSELECT,17)@69
    assign bgTrunc_i_mul_zlaswp3_sel_x_in = i_mul_zlaswp3_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_zlaswp3_sel_x_b = bgTrunc_i_mul_zlaswp3_sel_x_in[31:0];

    // redist3_bgTrunc_i_mul_zlaswp3_sel_x_b_1(DELAY,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_mul_zlaswp3_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_bgTrunc_i_mul_zlaswp3_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_zlaswp3_sel_x_b);
        end
    end

    // i_add3_zlaswp4(ADD,9)@70
    assign i_add3_zlaswp4_a = {1'b0, redist3_bgTrunc_i_mul_zlaswp3_sel_x_b_1_q};
    assign i_add3_zlaswp4_b = {1'b0, c_i32_110_q};
    assign i_add3_zlaswp4_o = $unsigned(i_add3_zlaswp4_a) + $unsigned(i_add3_zlaswp4_b);
    assign i_add3_zlaswp4_q = i_add3_zlaswp4_o[32:0];

    // bgTrunc_i_add3_zlaswp4_sel_x(BITSELECT,16)@70
    assign bgTrunc_i_add3_zlaswp4_sel_x_b = i_add3_zlaswp4_q[31:0];

    // redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4(DELAY,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_0 <= '0;
            redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_1 <= '0;
            redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_2 <= '0;
            redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_0 <= $unsigned(in_c0_eni4_3_tpl);
            redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_1 <= redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_0;
            redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_2 <= redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_1;
            redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_q <= redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_delay_2;
        end
    end

    // i_select88_zlaswp5(MUX,12)@70
    assign i_select88_zlaswp5_s = redist0_sync_together11_aunroll_x_in_c0_eni4_3_tpl_4_q;
    always @(i_select88_zlaswp5_s or bgTrunc_i_add3_zlaswp4_sel_x_b or redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_outputreg0_q)
    begin
        unique case (i_select88_zlaswp5_s)
            1'b0 : i_select88_zlaswp5_q = bgTrunc_i_add3_zlaswp4_sel_x_b;
            1'b1 : i_select88_zlaswp5_q = redist1_sync_together11_aunroll_x_in_c0_eni4_4_tpl_4_outputreg0_q;
            default : i_select88_zlaswp5_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp11_zlaswp6(BLACKBOX,10)@70
    // out out_intel_reserved_ffwd_7_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_11_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp11_zlaswp6 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_select88_zlaswp5_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp11_zlaswp6_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,14)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp11_zlaswp6_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg0(REG,21)@69 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together11_aunroll_x_in_i_valid_3_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,19)@70
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zlaswp12_0_tpl = GND_q;
    assign out_unnamed_zlaswp13 = GND_q;

endmodule
