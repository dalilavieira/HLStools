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

// SystemVerilog created from sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr26730_sobel_filter0
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr26730_sobel_filter0 (
    input wire [31:0] in_memdep_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_sobel_filter_avm_writeack,
    input wire [0:0] in_memdep_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_sobel_filter_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_memdep_sobel_filter_avm_address,
    output wire [0:0] out_memdep_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_sobel_filter_avm_read,
    output wire [0:0] out_memdep_sobel_filter_avm_write,
    output wire [31:0] out_memdep_sobel_filter_avm_writedata,
    output wire [3:0] out_memdep_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_sobel_filter_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sobel_filter3,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [17:0] c_i18_10239847_q;
    wire [17:0] c_i18_149_q;
    wire [31:0] c_i32_045_q;
    wire [31:0] c_i32_146_q;
    wire [3:0] c_i4_742_q;
    wire [63:0] c_sobel_filter_gray_pmem_q;
    wire [1:0] i_arrayidx86_sobel_filter14_vt_const_1_q;
    wire [63:0] i_arrayidx86_sobel_filter14_vt_join_q;
    wire [61:0] i_arrayidx86_sobel_filter14_vt_select_63_b;
    wire [3:0] i_cleanups_shl144_sobel_filter5_vt_join_q;
    wire [2:0] i_cleanups_shl144_sobel_filter5_vt_select_3_b;
    wire [18:0] i_fpga_indvars_iv_next_sobel_filter26_a;
    wire [18:0] i_fpga_indvars_iv_next_sobel_filter26_b;
    logic [18:0] i_fpga_indvars_iv_next_sobel_filter26_o;
    wire [18:0] i_fpga_indvars_iv_next_sobel_filter26_q;
    wire [63:0] i_idxprom_sobel_filter13_vt_join_q;
    wire [31:0] i_idxprom_sobel_filter13_vt_select_31_b;
    wire [32:0] i_inc_sobel_filter16_a;
    wire [32:0] i_inc_sobel_filter16_b;
    logic [32:0] i_inc_sobel_filter16_o;
    wire [32:0] i_inc_sobel_filter16_q;
    wire [31:0] i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_pipeline_valid_out;
    wire [17:0] i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_feedback_stall_out_23;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_feedback_stall_out_25;
    wire [3:0] i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_push_i18_fpga_indvars_iv_push22_sobel_filter27_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i18_fpga_indvars_iv_push22_sobel_filter27_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration142_sobel_filter11_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration142_sobel_filter11_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond150_sobel_filter22_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond150_sobel_filter22_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_i_0143_push23_sobel_filter17_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_i_0143_push23_sobel_filter17_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i4_cleanups143_push25_sobel_filter25_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i4_cleanups143_push25_sobel_filter25_out_feedback_valid_out_25;
    wire [7:0] i_llvm_fpga_push_i4_initerations138_push24_sobel_filter9_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i4_initerations138_push24_sobel_filter9_out_feedback_valid_out_24;
    wire [0:0] i_masked149_sobel_filter28_qi;
    reg [0:0] i_masked149_sobel_filter28_q;
    wire [0:0] i_next_cleanups148_sobel_filter24_s;
    reg [3:0] i_next_cleanups148_sobel_filter24_q;
    wire [3:0] i_next_initerations139_sobel_filter8_vt_join_q;
    wire [2:0] i_next_initerations139_sobel_filter8_vt_select_2_b;
    wire [0:0] i_notcmp136_sobel_filter21_q;
    wire [0:0] i_or147_sobel_filter23_q;
    wire [0:0] i_xor146_sobel_filter4_q;
    wire [17:0] bgTrunc_i_fpga_indvars_iv_next_sobel_filter26_sel_x_b;
    wire [31:0] bgTrunc_i_inc_sobel_filter16_sel_x_b;
    wire [64:0] i_arrayidx86_sobel_filter0_add_x_a;
    wire [64:0] i_arrayidx86_sobel_filter0_add_x_b;
    logic [64:0] i_arrayidx86_sobel_filter0_add_x_o;
    wire [64:0] i_arrayidx86_sobel_filter0_add_x_q;
    wire [127:0] i_arrayidx86_sobel_filter0_mult_extender_x_q;
    wire [60:0] i_arrayidx86_sobel_filter0_mult_multconst_x_q;
    wire [63:0] i_arrayidx86_sobel_filter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx86_sobel_filter0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup145_sobel_filter3_sel_x_b;
    wire [63:0] i_idxprom_sobel_filter13_sel_x_b;
    wire [0:0] i_last_initeration141_sobel_filter10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond_sobel_filter19_cmp_nsign_q;
    wire [35:0] i_arrayidx86_sobel_filter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx86_sobel_filter0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx86_sobel_filter0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx86_sobel_filter0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx86_sobel_filter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx86_sobel_filter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx86_sobel_filter0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx86_sobel_filter0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl144_sobel_filter0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl144_sobel_filter0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid132_i_cleanups_shl144_sobel_filter0_shift_x_q;
    wire [0:0] leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_s;
    reg [3:0] leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid138_i_next_initerations139_sobel_filter0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid140_i_next_initerations139_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_s;
    reg [3:0] rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_q;
    wire [11:0] i_arrayidx86_sobel_filter0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx86_sobel_filter0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx86_sobel_filter0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx86_sobel_filter0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx86_sobel_filter0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx86_sobel_filter0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx86_sobel_filter0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx86_sobel_filter0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together64_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together64_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together64_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_3_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together64_aunroll_x_in_i_valid_1(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together64_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together64_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together64_aunroll_x_in_i_valid_2(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together64_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together64_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together64_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_1(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_2(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_2_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl144_sobel_filter0_shift_x(BITSELECT,130)@3
    assign leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl144_sobel_filter0_shift_x_in = i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl144_sobel_filter0_shift_x_b = leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl144_sobel_filter0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid132_i_cleanups_shl144_sobel_filter0_shift_x(BITJOIN,131)@3
    assign leftShiftStage0Idx1_uid132_i_cleanups_shl144_sobel_filter0_shift_x_q = {leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl144_sobel_filter0_shift_x_b, GND_q};

    // leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x(MUX,133)@3
    assign leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_s or i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_data_out or leftShiftStage0Idx1_uid132_i_cleanups_shl144_sobel_filter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_s)
            1'b0 : leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_q = i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_data_out;
            1'b1 : leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_q = leftShiftStage0Idx1_uid132_i_cleanups_shl144_sobel_filter0_shift_x_q;
            default : leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl144_sobel_filter5_vt_select_3(BITSELECT,31)@3
    assign i_cleanups_shl144_sobel_filter5_vt_select_3_b = leftShiftStage0_uid134_i_cleanups_shl144_sobel_filter0_shift_x_q[3:1];

    // i_cleanups_shl144_sobel_filter5_vt_join(BITJOIN,30)@3
    assign i_cleanups_shl144_sobel_filter5_vt_join_q = {i_cleanups_shl144_sobel_filter5_vt_select_3_b, GND_q};

    // i_xor146_sobel_filter4(LOGICAL,60)@3
    assign i_xor146_sobel_filter4_q = i_first_cleanup145_sobel_filter3_sel_x_b ^ VCC_q;

    // i_notcmp136_sobel_filter21(LOGICAL,58)@3
    assign i_notcmp136_sobel_filter21_q = i_exitcond_sobel_filter19_cmp_nsign_q ^ VCC_q;

    // i_or147_sobel_filter23(LOGICAL,59)@3
    assign i_or147_sobel_filter23_q = i_notcmp136_sobel_filter21_q | i_xor146_sobel_filter4_q;

    // i_next_cleanups148_sobel_filter24(MUX,54)@3
    assign i_next_cleanups148_sobel_filter24_s = i_or147_sobel_filter23_q;
    always @(i_next_cleanups148_sobel_filter24_s or i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_data_out or i_cleanups_shl144_sobel_filter5_vt_join_q)
    begin
        unique case (i_next_cleanups148_sobel_filter24_s)
            1'b0 : i_next_cleanups148_sobel_filter24_q = i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_data_out;
            1'b1 : i_next_cleanups148_sobel_filter24_q = i_cleanups_shl144_sobel_filter5_vt_join_q;
            default : i_next_cleanups148_sobel_filter24_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups143_push25_sobel_filter25(BLACKBOX,51)@3
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    sobel_filter_i_llvm_fpga_push_i4_cleanups143_push25_0 thei_llvm_fpga_push_i4_cleanups143_push25_sobel_filter25 (
        .in_data_in(i_next_cleanups148_sobel_filter24_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_feedback_stall_out_25),
        .in_keep_going140(redist6_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together64_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i4_cleanups143_push25_sobel_filter25_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i4_cleanups143_push25_sobel_filter25_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together64_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together64_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together64_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together64_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together64_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together64_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together64_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_742(CONSTANT,22)
    assign c_i4_742_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2(BLACKBOX,45)@3
    // out out_feedback_stall_out_25@20000000
    sobel_filter_i_llvm_fpga_pop_i4_cleanups143_pop25_0 thei_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2 (
        .in_data_in(c_i4_742_q),
        .in_dir(redist1_sync_together64_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_25(i_llvm_fpga_push_i4_cleanups143_push25_sobel_filter25_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i4_cleanups143_push25_sobel_filter25_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together64_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup145_sobel_filter3_sel_x(BITSELECT,84)@3
    assign i_first_cleanup145_sobel_filter3_sel_x_b = i_llvm_fpga_pop_i4_cleanups143_pop25_sobel_filter2_out_data_out[0:0];

    // c_i18_149(CONSTANT,5)
    assign c_i18_149_q = $unsigned(18'b111111111111111111);

    // i_fpga_indvars_iv_next_sobel_filter26(ADD,34)@3
    assign i_fpga_indvars_iv_next_sobel_filter26_a = {1'b0, i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18_out_data_out};
    assign i_fpga_indvars_iv_next_sobel_filter26_b = {1'b0, c_i18_149_q};
    assign i_fpga_indvars_iv_next_sobel_filter26_o = $unsigned(i_fpga_indvars_iv_next_sobel_filter26_a) + $unsigned(i_fpga_indvars_iv_next_sobel_filter26_b);
    assign i_fpga_indvars_iv_next_sobel_filter26_q = i_fpga_indvars_iv_next_sobel_filter26_o[18:0];

    // bgTrunc_i_fpga_indvars_iv_next_sobel_filter26_sel_x(BITSELECT,66)@3
    assign bgTrunc_i_fpga_indvars_iv_next_sobel_filter26_sel_x_b = i_fpga_indvars_iv_next_sobel_filter26_q[17:0];

    // i_llvm_fpga_push_i18_fpga_indvars_iv_push22_sobel_filter27(BLACKBOX,47)@3
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    sobel_filter_i_llvm_fpga_push_i18_fpga_indvars_iv_push22_0 thei_llvm_fpga_push_i18_fpga_indvars_iv_push22_sobel_filter27 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_sobel_filter26_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18_out_feedback_stall_out_22),
        .in_keep_going140(redist6_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together64_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i18_fpga_indvars_iv_push22_sobel_filter27_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i18_fpga_indvars_iv_push22_sobel_filter27_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i18_10239847(CONSTANT,4)
    assign c_i18_10239847_q = $unsigned(18'b011000111111111110);

    // i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18(BLACKBOX,43)@3
    // out out_feedback_stall_out_22@20000000
    sobel_filter_i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_0 thei_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18 (
        .in_data_in(c_i18_10239847_q),
        .in_dir(redist1_sync_together64_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_22(i_llvm_fpga_push_i18_fpga_indvars_iv_push22_sobel_filter27_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i18_fpga_indvars_iv_push22_sobel_filter27_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together64_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_sobel_filter19_cmp_nsign(LOGICAL,108)@3
    assign i_exitcond_sobel_filter19_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i18_fpga_indvars_iv_pop22_sobel_filter18_out_data_out[17:17]));

    // i_llvm_fpga_push_i1_notexitcond150_sobel_filter22(BLACKBOX,49)@3
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    sobel_filter_i_llvm_fpga_push_i1_notexitcond150_0 thei_llvm_fpga_push_i1_notexitcond150_sobel_filter22 (
        .in_data_in(i_exitcond_sobel_filter19_cmp_nsign_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_not_exitcond_stall_out),
        .in_first_cleanup145(i_first_cleanup145_sobel_filter3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together64_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_notexitcond150_sobel_filter22_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_notexitcond150_sobel_filter22_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,96)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid138_i_next_initerations139_sobel_filter0_shift_x(BITSELECT,137)@2
    assign rightShiftStage0Idx1Rng1_uid138_i_next_initerations139_sobel_filter0_shift_x_b = i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid140_i_next_initerations139_sobel_filter0_shift_x(BITJOIN,139)@2
    assign rightShiftStage0Idx1_uid140_i_next_initerations139_sobel_filter0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid138_i_next_initerations139_sobel_filter0_shift_x_b};

    // valid_fanout_reg1(REG,94)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,95)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i4_initerations138_push24_sobel_filter9(BLACKBOX,52)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    sobel_filter_i_llvm_fpga_push_i4_initerations138_push24_0 thei_llvm_fpga_push_i4_initerations138_push24_sobel_filter9 (
        .in_data_in(i_next_initerations139_sobel_filter8_vt_join_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7_out_feedback_stall_out_24),
        .in_keep_going140(redist5_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i4_initerations138_push24_sobel_filter9_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i4_initerations138_push24_sobel_filter9_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7(BLACKBOX,46)@2
    // out out_feedback_stall_out_24@20000000
    sobel_filter_i_llvm_fpga_pop_i4_initerations138_pop24_0 thei_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7 (
        .in_data_in(c_i4_742_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i4_initerations138_push24_sobel_filter9_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i4_initerations138_push24_sobel_filter9_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x(MUX,141)@2
    assign rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_s or i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7_out_data_out or rightShiftStage0Idx1_uid140_i_next_initerations139_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_q = i_llvm_fpga_pop_i4_initerations138_pop24_sobel_filter7_out_data_out;
            1'b1 : rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid140_i_next_initerations139_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations139_sobel_filter8_vt_select_2(BITSELECT,57)@2
    assign i_next_initerations139_sobel_filter8_vt_select_2_b = rightShiftStage0_uid142_i_next_initerations139_sobel_filter0_shift_x_q[2:0];

    // i_next_initerations139_sobel_filter8_vt_join(BITJOIN,56)@2
    assign i_next_initerations139_sobel_filter8_vt_join_q = {GND_q, i_next_initerations139_sobel_filter8_vt_select_2_b};

    // i_last_initeration141_sobel_filter10_sel_x(BITSELECT,86)@2
    assign i_last_initeration141_sobel_filter10_sel_x_b = i_next_initerations139_sobel_filter8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration142_sobel_filter11(BLACKBOX,48)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    sobel_filter_i_llvm_fpga_push_i1_lastiniteration142_0 thei_llvm_fpga_push_i1_lastiniteration142_sobel_filter11 (
        .in_data_in(i_last_initeration141_sobel_filter10_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_initeration_stall_out),
        .in_keep_going140(redist5_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_lastiniteration142_sobel_filter11_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_lastiniteration142_sobel_filter11_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going140_sobel_filter6(BLACKBOX,42)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    sobel_filter_i_llvm_fpga_pipeline_keep_going140_0 thei_llvm_fpga_pipeline_keep_going140_sobel_filter6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration142_sobel_filter11_out_feedback_out_18),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration142_sobel_filter11_out_feedback_valid_out_18),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond150_sobel_filter22_out_feedback_out_19),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond150_sobel_filter22_out_feedback_valid_out_19),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_pipeline_valid_out;

    // valid_fanout_reg4(REG,97)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,99)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_146(CONSTANT,20)
    assign c_i32_146_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_sobel_filter16(ADD,39)@2
    assign i_inc_sobel_filter16_a = {1'b0, i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out};
    assign i_inc_sobel_filter16_b = {1'b0, c_i32_146_q};
    assign i_inc_sobel_filter16_o = $unsigned(i_inc_sobel_filter16_a) + $unsigned(i_inc_sobel_filter16_b);
    assign i_inc_sobel_filter16_q = i_inc_sobel_filter16_o[32:0];

    // bgTrunc_i_inc_sobel_filter16_sel_x(BITSELECT,67)@2
    assign bgTrunc_i_inc_sobel_filter16_sel_x_b = i_inc_sobel_filter16_q[31:0];

    // i_llvm_fpga_push_i32_i_0143_push23_sobel_filter17(BLACKBOX,50)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    sobel_filter_i_llvm_fpga_push_i32_i_0143_push23_0 thei_llvm_fpga_push_i32_i_0143_push23_sobel_filter17 (
        .in_data_in(bgTrunc_i_inc_sobel_filter16_sel_x_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_feedback_stall_out_23),
        .in_keep_going140(redist5_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_i_0143_push23_sobel_filter17_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_i_0143_push23_sobel_filter17_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_045(CONSTANT,19)
    assign c_i32_045_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12(BLACKBOX,44)@2
    // out out_feedback_stall_out_23@20000000
    sobel_filter_i_llvm_fpga_pop_i32_i_0143_pop23_0 thei_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12 (
        .in_data_in(c_i32_045_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_i_0143_push23_sobel_filter17_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_i_0143_push23_sobel_filter17_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out_1(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out);
        end
    end

    // valid_fanout_reg5(REG,98)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together64_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx86_sobel_filter0_mult_multconst_x(CONSTANT,77)
    assign i_arrayidx86_sobel_filter0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom_sobel_filter13_sel_x(BITSELECT,85)@3
    assign i_idxprom_sobel_filter13_sel_x_b = {32'b00000000000000000000000000000000, redist4_i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out_1_q[31:0]};

    // i_idxprom_sobel_filter13_vt_select_31(BITSELECT,38)@3
    assign i_idxprom_sobel_filter13_vt_select_31_b = i_idxprom_sobel_filter13_sel_x_b[31:0];

    // i_idxprom_sobel_filter13_vt_join(BITJOIN,37)@3
    assign i_idxprom_sobel_filter13_vt_join_q = {c_i32_045_q, i_idxprom_sobel_filter13_vt_select_31_b};

    // i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select(BITSELECT,147)@3
    assign i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_b = i_idxprom_sobel_filter13_vt_join_q[63:54];
    assign i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_c = i_idxprom_sobel_filter13_vt_join_q[53:36];
    assign i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_d = i_idxprom_sobel_filter13_vt_join_q[35:18];
    assign i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_e = i_idxprom_sobel_filter13_vt_join_q[17:0];

    // i_arrayidx86_sobel_filter0_mult_x_im0_shift0(BITSHIFT,143)@3
    assign i_arrayidx86_sobel_filter0_mult_x_im0_shift0_qint = { i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx86_sobel_filter0_mult_x_im0_shift0_q = i_arrayidx86_sobel_filter0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx86_sobel_filter0_mult_x_sums_align_3(BITSHIFT,124)@3
    assign i_arrayidx86_sobel_filter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx86_sobel_filter0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx86_sobel_filter0_mult_x_sums_align_3_q = i_arrayidx86_sobel_filter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx86_sobel_filter0_mult_x_im6_shift0(BITSHIFT,145)@3
    assign i_arrayidx86_sobel_filter0_mult_x_im6_shift0_qint = { i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx86_sobel_filter0_mult_x_im6_shift0_q = i_arrayidx86_sobel_filter0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx86_sobel_filter0_mult_x_sums_align_2(BITSHIFT,123)@3
    assign i_arrayidx86_sobel_filter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx86_sobel_filter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx86_sobel_filter0_mult_x_sums_align_2_q = i_arrayidx86_sobel_filter0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx86_sobel_filter0_mult_x_sums_join_4(BITJOIN,125)@3
    assign i_arrayidx86_sobel_filter0_mult_x_sums_join_4_q = {i_arrayidx86_sobel_filter0_mult_x_sums_align_3_q, i_arrayidx86_sobel_filter0_mult_x_sums_align_2_q};

    // i_arrayidx86_sobel_filter0_mult_x_im3_shift0(BITSHIFT,144)@3
    assign i_arrayidx86_sobel_filter0_mult_x_im3_shift0_qint = { i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx86_sobel_filter0_mult_x_im3_shift0_q = i_arrayidx86_sobel_filter0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx86_sobel_filter0_mult_x_sums_align_0(BITSHIFT,121)@3
    assign i_arrayidx86_sobel_filter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx86_sobel_filter0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx86_sobel_filter0_mult_x_sums_align_0_q = i_arrayidx86_sobel_filter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx86_sobel_filter0_mult_x_im9_shift0(BITSHIFT,146)@3
    assign i_arrayidx86_sobel_filter0_mult_x_im9_shift0_qint = { i_arrayidx86_sobel_filter0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx86_sobel_filter0_mult_x_im9_shift0_q = i_arrayidx86_sobel_filter0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx86_sobel_filter0_mult_x_sums_join_1(BITJOIN,122)@3
    assign i_arrayidx86_sobel_filter0_mult_x_sums_join_1_q = {i_arrayidx86_sobel_filter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx86_sobel_filter0_mult_x_im9_shift0_q}};

    // i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0(ADD,126)@3
    assign i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx86_sobel_filter0_mult_x_sums_join_1_q};
    assign i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx86_sobel_filter0_mult_x_sums_join_4_q};
    assign i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_q = i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx86_sobel_filter0_mult_extender_x(BITJOIN,76)@3
    assign i_arrayidx86_sobel_filter0_mult_extender_x_q = {i_arrayidx86_sobel_filter0_mult_multconst_x_q, i_arrayidx86_sobel_filter0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx86_sobel_filter0_trunc_sel_x(BITSELECT,78)@3
    assign i_arrayidx86_sobel_filter0_trunc_sel_x_b = i_arrayidx86_sobel_filter0_mult_extender_x_q[63:0];

    // c_sobel_filter_gray_pmem(CONSTANT,23)
    assign c_sobel_filter_gray_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx86_sobel_filter0_add_x(ADD,70)@3
    assign i_arrayidx86_sobel_filter0_add_x_a = {1'b0, c_sobel_filter_gray_pmem_q};
    assign i_arrayidx86_sobel_filter0_add_x_b = {1'b0, i_arrayidx86_sobel_filter0_trunc_sel_x_b};
    assign i_arrayidx86_sobel_filter0_add_x_o = $unsigned(i_arrayidx86_sobel_filter0_add_x_a) + $unsigned(i_arrayidx86_sobel_filter0_add_x_b);
    assign i_arrayidx86_sobel_filter0_add_x_q = i_arrayidx86_sobel_filter0_add_x_o[64:0];

    // i_arrayidx86_sobel_filter0_dupName_0_trunc_sel_x(BITSELECT,79)@3
    assign i_arrayidx86_sobel_filter0_dupName_0_trunc_sel_x_b = i_arrayidx86_sobel_filter0_add_x_q[63:0];

    // i_arrayidx86_sobel_filter14_vt_select_63(BITSELECT,28)@3
    assign i_arrayidx86_sobel_filter14_vt_select_63_b = i_arrayidx86_sobel_filter0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx86_sobel_filter14_vt_const_1(CONSTANT,26)
    assign i_arrayidx86_sobel_filter14_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx86_sobel_filter14_vt_join(BITJOIN,27)@3
    assign i_arrayidx86_sobel_filter14_vt_join_q = {i_arrayidx86_sobel_filter14_vt_select_63_b, i_arrayidx86_sobel_filter14_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_sobel_filter15(BLACKBOX,41)@3
    // out out_memdep_sobel_filter_avm_address@20000000
    // out out_memdep_sobel_filter_avm_burstcount@20000000
    // out out_memdep_sobel_filter_avm_byteenable@20000000
    // out out_memdep_sobel_filter_avm_enable@20000000
    // out out_memdep_sobel_filter_avm_read@20000000
    // out out_memdep_sobel_filter_avm_write@20000000
    // out out_memdep_sobel_filter_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    sobel_filter_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_sobel_filter15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx86_sobel_filter14_vt_join_q),
        .in_i_predicate(i_xor146_sobel_filter4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(redist4_i_llvm_fpga_pop_i32_i_0143_pop23_sobel_filter12_out_data_out_1_q),
        .in_memdep_sobel_filter_avm_readdata(in_memdep_sobel_filter_avm_readdata),
        .in_memdep_sobel_filter_avm_readdatavalid(in_memdep_sobel_filter_avm_readdatavalid),
        .in_memdep_sobel_filter_avm_waitrequest(in_memdep_sobel_filter_avm_waitrequest),
        .in_memdep_sobel_filter_avm_writeack(in_memdep_sobel_filter_avm_writeack),
        .out_memdep_sobel_filter_avm_address(i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_address),
        .out_memdep_sobel_filter_avm_burstcount(i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_burstcount),
        .out_memdep_sobel_filter_avm_byteenable(i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_byteenable),
        .out_memdep_sobel_filter_avm_enable(i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_enable),
        .out_memdep_sobel_filter_avm_read(i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_read),
        .out_memdep_sobel_filter_avm_write(i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_write),
        .out_memdep_sobel_filter_avm_writedata(i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,69)
    assign out_memdep_sobel_filter_avm_address = i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_address;
    assign out_memdep_sobel_filter_avm_enable = i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_enable;
    assign out_memdep_sobel_filter_avm_read = i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_read;
    assign out_memdep_sobel_filter_avm_write = i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_write;
    assign out_memdep_sobel_filter_avm_writedata = i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_writedata;
    assign out_memdep_sobel_filter_avm_byteenable = i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_byteenable;
    assign out_memdep_sobel_filter_avm_burstcount = i_llvm_fpga_mem_memdep_sobel_filter15_out_memdep_sobel_filter_avm_burstcount;

    // valid_fanout_reg0(REG,93)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_masked149_sobel_filter28(LOGICAL,53)@3 + 1
    assign i_masked149_sobel_filter28_qi = i_notcmp136_sobel_filter21_q & i_first_cleanup145_sobel_filter3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked149_sobel_filter28_delay ( .xin(i_masked149_sobel_filter28_qi), .xout(i_masked149_sobel_filter28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_3(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_3_q <= $unsigned(redist6_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,91)@4
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going140_sobel_filter6_out_data_out_3_q;
    assign out_c0_exi2_2_tpl = i_masked149_sobel_filter28_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_sobel_filter3 = GND_q;

endmodule
