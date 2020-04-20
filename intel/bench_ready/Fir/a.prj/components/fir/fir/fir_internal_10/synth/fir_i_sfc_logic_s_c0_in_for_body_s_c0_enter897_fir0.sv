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

// SystemVerilog created from fir_i_sfc_logic_s_c0_in_for_body_s_c0_enter897_fir0
// SystemVerilog created on Sun Apr 19 22:13:18 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_i_sfc_logic_s_c0_in_for_body_s_c0_enter897_fir0 (
    input wire [15:0] in_memdep_fir_avm_readdata,
    input wire [0:0] in_memdep_fir_avm_writeack,
    input wire [0:0] in_memdep_fir_avm_waitrequest,
    input wire [0:0] in_memdep_fir_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_fir6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_fir6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_memdep_fir_avm_address,
    output wire [0:0] out_memdep_fir_avm_enable,
    output wire [0:0] out_memdep_fir_avm_read,
    output wire [0:0] out_memdep_fir_avm_write,
    output wire [15:0] out_memdep_fir_avm_writedata,
    output wire [1:0] out_memdep_fir_avm_byteenable,
    output wire [0:0] out_memdep_fir_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_fir1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_fir_coef_pmem_q;
    wire [31:0] c_i32_046_q;
    wire [31:0] c_i32_147_q;
    wire [3:0] c_i4_743_q;
    wire [6:0] c_i7_150_q;
    wire [6:0] c_i7_6148_q;
    wire [32:0] i_add_fir13_a;
    wire [32:0] i_add_fir13_b;
    logic [32:0] i_add_fir13_o;
    wire [32:0] i_add_fir13_q;
    wire [63:0] i_arrayidx1_fir17_vt_join_q;
    wire [62:0] i_arrayidx1_fir17_vt_select_63_b;
    wire [3:0] i_cleanups_shl59_fir5_vt_join_q;
    wire [2:0] i_cleanups_shl59_fir5_vt_select_3_b;
    wire [7:0] i_fpga_indvars_iv_next_fir27_a;
    wire [7:0] i_fpga_indvars_iv_next_fir27_b;
    logic [7:0] i_fpga_indvars_iv_next_fir27_o;
    wire [7:0] i_fpga_indvars_iv_next_fir27_q;
    wire [63:0] i_idxprom_fir16_vt_join_q;
    wire [31:0] i_idxprom_fir16_vt_select_31_b;
    wire [31:0] i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_fir6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_feedback_stall_out_15;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_feedback_stall_out_17;
    wire [3:0] i_llvm_fpga_pop_i4_initerations53_pop16_fir7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations53_pop16_fir7_out_feedback_stall_out_16;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration57_fir11_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration57_fir11_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond65_fir23_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond65_fir23_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_k_031_push15_fir14_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_k_031_push15_fir14_out_feedback_valid_out_15;
    wire [7:0] i_llvm_fpga_push_i4_cleanups58_push17_fir26_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i4_cleanups58_push17_fir26_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i4_initerations53_push16_fir9_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i4_initerations53_push16_fir9_out_feedback_valid_out_16;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push14_fir28_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push14_fir28_out_feedback_valid_out_14;
    wire [0:0] i_masked64_fir29_qi;
    reg [0:0] i_masked64_fir29_q;
    wire [0:0] i_next_cleanups63_fir25_s;
    reg [3:0] i_next_cleanups63_fir25_q;
    wire [3:0] i_next_initerations54_fir8_vt_join_q;
    wire [2:0] i_next_initerations54_fir8_vt_select_2_b;
    wire [0:0] i_notcmp51_fir22_q;
    wire [0:0] i_or62_fir24_q;
    wire [0:0] i_xor61_fir4_q;
    wire [31:0] bgTrunc_i_add_fir13_sel_x_b;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next_fir27_sel_x_b;
    wire [64:0] i_arrayidx1_fir0_add_x_a;
    wire [64:0] i_arrayidx1_fir0_add_x_b;
    logic [64:0] i_arrayidx1_fir0_add_x_o;
    wire [64:0] i_arrayidx1_fir0_add_x_q;
    wire [127:0] i_arrayidx1_fir0_mult_extender_x_q;
    wire [61:0] i_arrayidx1_fir0_mult_multconst_x_q;
    wire [63:0] i_arrayidx1_fir0_trunc_sel_x_b;
    wire [63:0] i_arrayidx1_fir0_dupName_0_trunc_sel_x_b;
    wire [15:0] i_conv_fir15_sel_x_b;
    wire [0:0] i_first_cleanup60_fir3_sel_x_b;
    wire [63:0] i_idxprom_fir16_sel_x_b;
    wire [0:0] i_last_initeration56_fir10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond_fir20_cmp_nsign_q;
    wire [35:0] i_arrayidx1_fir0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx1_fir0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx1_fir0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx1_fir0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx1_fir0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx1_fir0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx1_fir0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx1_fir0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx1_fir0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx1_fir0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx1_fir0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx1_fir0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid134_i_cleanups_shl59_fir0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid134_i_cleanups_shl59_fir0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid135_i_cleanups_shl59_fir0_shift_x_q;
    wire [0:0] leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_s;
    reg [3:0] leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid141_i_next_initerations54_fir0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid143_i_next_initerations54_fir0_shift_x_q;
    wire [0:0] rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_s;
    reg [3:0] rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_q;
    wire [10:0] i_arrayidx1_fir0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx1_fir0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx1_fir0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx1_fir0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx1_fir0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx1_fir0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx1_fir0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx1_fir0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together65_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together65_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together65_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_3_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together65_aunroll_x_in_i_valid_1(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together65_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together65_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together65_aunroll_x_in_i_valid_2(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together65_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together65_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_1(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_2(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_2_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid134_i_cleanups_shl59_fir0_shift_x(BITSELECT,133)@3
    assign leftShiftStage0Idx1Rng1_uid134_i_cleanups_shl59_fir0_shift_x_in = i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid134_i_cleanups_shl59_fir0_shift_x_b = leftShiftStage0Idx1Rng1_uid134_i_cleanups_shl59_fir0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid135_i_cleanups_shl59_fir0_shift_x(BITJOIN,134)@3
    assign leftShiftStage0Idx1_uid135_i_cleanups_shl59_fir0_shift_x_q = {leftShiftStage0Idx1Rng1_uid134_i_cleanups_shl59_fir0_shift_x_b, GND_q};

    // leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x(MUX,136)@3
    assign leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_s or i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_data_out or leftShiftStage0Idx1_uid135_i_cleanups_shl59_fir0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_s)
            1'b0 : leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_q = i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_data_out;
            1'b1 : leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_q = leftShiftStage0Idx1_uid135_i_cleanups_shl59_fir0_shift_x_q;
            default : leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl59_fir5_vt_select_3(BITSELECT,32)@3
    assign i_cleanups_shl59_fir5_vt_select_3_b = leftShiftStage0_uid137_i_cleanups_shl59_fir0_shift_x_q[3:1];

    // i_cleanups_shl59_fir5_vt_join(BITJOIN,31)@3
    assign i_cleanups_shl59_fir5_vt_join_q = {i_cleanups_shl59_fir5_vt_select_3_b, GND_q};

    // i_xor61_fir4(LOGICAL,61)@3
    assign i_xor61_fir4_q = i_first_cleanup60_fir3_sel_x_b ^ VCC_q;

    // i_notcmp51_fir22(LOGICAL,59)@3
    assign i_notcmp51_fir22_q = i_exitcond_fir20_cmp_nsign_q ^ VCC_q;

    // i_or62_fir24(LOGICAL,60)@3
    assign i_or62_fir24_q = i_notcmp51_fir22_q | i_xor61_fir4_q;

    // i_next_cleanups63_fir25(MUX,55)@3
    assign i_next_cleanups63_fir25_s = i_or62_fir24_q;
    always @(i_next_cleanups63_fir25_s or i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_data_out or i_cleanups_shl59_fir5_vt_join_q)
    begin
        unique case (i_next_cleanups63_fir25_s)
            1'b0 : i_next_cleanups63_fir25_q = i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_data_out;
            1'b1 : i_next_cleanups63_fir25_q = i_cleanups_shl59_fir5_vt_join_q;
            default : i_next_cleanups63_fir25_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups58_push17_fir26(BLACKBOX,51)@3
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    fir_i_llvm_fpga_push_i4_cleanups58_push17_0 thei_llvm_fpga_push_i4_cleanups58_push17_fir26 (
        .in_data_in(i_next_cleanups63_fir25_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_feedback_stall_out_17),
        .in_keep_going55(redist6_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together65_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i4_cleanups58_push17_fir26_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i4_cleanups58_push17_fir26_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together65_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together65_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together65_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_743(CONSTANT,21)
    assign c_i4_743_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups58_pop17_fir2(BLACKBOX,45)@3
    // out out_feedback_stall_out_17@20000000
    fir_i_llvm_fpga_pop_i4_cleanups58_pop17_0 thei_llvm_fpga_pop_i4_cleanups58_pop17_fir2 (
        .in_data_in(c_i4_743_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_17(i_llvm_fpga_push_i4_cleanups58_push17_fir26_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i4_cleanups58_push17_fir26_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together65_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup60_fir3_sel_x(BITSELECT,86)@3
    assign i_first_cleanup60_fir3_sel_x_b = i_llvm_fpga_pop_i4_cleanups58_pop17_fir2_out_data_out[0:0];

    // c_i7_150(CONSTANT,22)
    assign c_i7_150_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next_fir27(ADD,36)@3
    assign i_fpga_indvars_iv_next_fir27_a = {1'b0, i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19_out_data_out};
    assign i_fpga_indvars_iv_next_fir27_b = {1'b0, c_i7_150_q};
    assign i_fpga_indvars_iv_next_fir27_o = $unsigned(i_fpga_indvars_iv_next_fir27_a) + $unsigned(i_fpga_indvars_iv_next_fir27_b);
    assign i_fpga_indvars_iv_next_fir27_q = i_fpga_indvars_iv_next_fir27_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next_fir27_sel_x(BITSELECT,68)@3
    assign bgTrunc_i_fpga_indvars_iv_next_fir27_sel_x_b = i_fpga_indvars_iv_next_fir27_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv_push14_fir28(BLACKBOX,53)@3
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    fir_i_llvm_fpga_push_i7_fpga_indvars_iv_push14_0 thei_llvm_fpga_push_i7_fpga_indvars_iv_push14_fir28 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_fir27_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19_out_feedback_stall_out_14),
        .in_keep_going55(redist6_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together65_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i7_fpga_indvars_iv_push14_fir28_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i7_fpga_indvars_iv_push14_fir28_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_6148(CONSTANT,23)
    assign c_i7_6148_q = $unsigned(7'b0111101);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19(BLACKBOX,47)@3
    // out out_feedback_stall_out_14@20000000
    fir_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19 (
        .in_data_in(c_i7_6148_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_14(i_llvm_fpga_push_i7_fpga_indvars_iv_push14_fir28_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i7_fpga_indvars_iv_push14_fir28_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together65_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_fir20_cmp_nsign(LOGICAL,111)@3
    assign i_exitcond_fir20_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i7_fpga_indvars_iv_pop14_fir19_out_data_out[6:6]));

    // i_llvm_fpga_push_i1_notexitcond65_fir23(BLACKBOX,49)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    fir_i_llvm_fpga_push_i1_notexitcond65_0 thei_llvm_fpga_push_i1_notexitcond65_fir23 (
        .in_data_in(i_exitcond_fir20_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going55_fir6_out_not_exitcond_stall_out),
        .in_first_cleanup60(i_first_cleanup60_fir3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together65_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond65_fir23_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond65_fir23_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,98)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid141_i_next_initerations54_fir0_shift_x(BITSELECT,140)@2
    assign rightShiftStage0Idx1Rng1_uid141_i_next_initerations54_fir0_shift_x_b = i_llvm_fpga_pop_i4_initerations53_pop16_fir7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid143_i_next_initerations54_fir0_shift_x(BITJOIN,142)@2
    assign rightShiftStage0Idx1_uid143_i_next_initerations54_fir0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid141_i_next_initerations54_fir0_shift_x_b};

    // valid_fanout_reg1(REG,96)@1 + 1
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

    // valid_fanout_reg2(REG,97)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations53_push16_fir9(BLACKBOX,52)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    fir_i_llvm_fpga_push_i4_initerations53_push16_0 thei_llvm_fpga_push_i4_initerations53_push16_fir9 (
        .in_data_in(i_next_initerations54_fir8_vt_join_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i4_initerations53_pop16_fir7_out_feedback_stall_out_16),
        .in_keep_going55(redist5_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i4_initerations53_push16_fir9_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i4_initerations53_push16_fir9_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations53_pop16_fir7(BLACKBOX,46)@2
    // out out_feedback_stall_out_16@20000000
    fir_i_llvm_fpga_pop_i4_initerations53_pop16_0 thei_llvm_fpga_pop_i4_initerations53_pop16_fir7 (
        .in_data_in(c_i4_743_q),
        .in_dir(redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i4_initerations53_push16_fir9_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i4_initerations53_push16_fir9_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations53_pop16_fir7_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i4_initerations53_pop16_fir7_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x(MUX,144)@2
    assign rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_s or i_llvm_fpga_pop_i4_initerations53_pop16_fir7_out_data_out or rightShiftStage0Idx1_uid143_i_next_initerations54_fir0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_s)
            1'b0 : rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_q = i_llvm_fpga_pop_i4_initerations53_pop16_fir7_out_data_out;
            1'b1 : rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_q = rightShiftStage0Idx1_uid143_i_next_initerations54_fir0_shift_x_q;
            default : rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations54_fir8_vt_select_2(BITSELECT,58)@2
    assign i_next_initerations54_fir8_vt_select_2_b = rightShiftStage0_uid145_i_next_initerations54_fir0_shift_x_q[2:0];

    // i_next_initerations54_fir8_vt_join(BITJOIN,57)@2
    assign i_next_initerations54_fir8_vt_join_q = {GND_q, i_next_initerations54_fir8_vt_select_2_b};

    // i_last_initeration56_fir10_sel_x(BITSELECT,88)@2
    assign i_last_initeration56_fir10_sel_x_b = i_next_initerations54_fir8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration57_fir11(BLACKBOX,48)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    fir_i_llvm_fpga_push_i1_lastiniteration57_0 thei_llvm_fpga_push_i1_lastiniteration57_fir11 (
        .in_data_in(i_last_initeration56_fir10_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going55_fir6_out_initeration_stall_out),
        .in_keep_going55(redist5_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration57_fir11_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration57_fir11_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going55_fir6(BLACKBOX,43)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    fir_i_llvm_fpga_pipeline_keep_going55_0 thei_llvm_fpga_pipeline_keep_going55_fir6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration57_fir11_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration57_fir11_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond65_fir23_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond65_fir23_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going55_fir6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going55_fir6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going55_fir6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going55_fir6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going55_fir6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_fir6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going55_fir6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_fir6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going55_fir6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going55_fir6_out_pipeline_valid_out;

    // c_i32_147(CONSTANT,19)
    assign c_i32_147_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg4(REG,99)@1 + 1
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

    // valid_fanout_reg5(REG,100)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_k_031_push15_fir14(BLACKBOX,50)@3
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    fir_i_llvm_fpga_push_i32_k_031_push15_0 thei_llvm_fpga_push_i32_k_031_push15_fir14 (
        .in_data_in(bgTrunc_i_add_fir13_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_feedback_stall_out_15),
        .in_keep_going55(redist6_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_k_031_push15_fir14_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_k_031_push15_fir14_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_046(CONSTANT,18)
    assign c_i32_046_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_031_pop15_fir12(BLACKBOX,44)@2
    // out out_feedback_stall_out_15@20000000
    fir_i_llvm_fpga_pop_i32_k_031_pop15_0 thei_llvm_fpga_pop_i32_k_031_pop15_fir12 (
        .in_data_in(c_i32_046_q),
        .in_dir(redist0_sync_together65_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_k_031_push15_fir14_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_k_031_push15_fir14_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out_1(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out);
        end
    end

    // i_add_fir13(ADD,26)@3
    assign i_add_fir13_a = {1'b0, redist4_i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out_1_q};
    assign i_add_fir13_b = {1'b0, c_i32_147_q};
    assign i_add_fir13_o = $unsigned(i_add_fir13_a) + $unsigned(i_add_fir13_b);
    assign i_add_fir13_q = i_add_fir13_o[32:0];

    // bgTrunc_i_add_fir13_sel_x(BITSELECT,67)@3
    assign bgTrunc_i_add_fir13_sel_x_b = i_add_fir13_q[31:0];

    // i_conv_fir15_sel_x(BITSELECT,85)@3
    assign i_conv_fir15_sel_x_b = bgTrunc_i_add_fir13_sel_x_b[15:0];

    // valid_fanout_reg6(REG,101)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx1_fir0_mult_multconst_x(CONSTANT,78)
    assign i_arrayidx1_fir0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom_fir16_sel_x(BITSELECT,87)@3
    assign i_idxprom_fir16_sel_x_b = {32'b00000000000000000000000000000000, redist4_i_llvm_fpga_pop_i32_k_031_pop15_fir12_out_data_out_1_q[31:0]};

    // i_idxprom_fir16_vt_select_31(BITSELECT,40)@3
    assign i_idxprom_fir16_vt_select_31_b = i_idxprom_fir16_sel_x_b[31:0];

    // i_idxprom_fir16_vt_join(BITJOIN,39)@3
    assign i_idxprom_fir16_vt_join_q = {c_i32_046_q, i_idxprom_fir16_vt_select_31_b};

    // i_arrayidx1_fir0_mult_x_bs1_merged_bit_select(BITSELECT,150)@3
    assign i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_b = i_idxprom_fir16_vt_join_q[63:54];
    assign i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_c = i_idxprom_fir16_vt_join_q[53:36];
    assign i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_d = i_idxprom_fir16_vt_join_q[35:18];
    assign i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_e = i_idxprom_fir16_vt_join_q[17:0];

    // i_arrayidx1_fir0_mult_x_im0_shift0(BITSHIFT,146)@3
    assign i_arrayidx1_fir0_mult_x_im0_shift0_qint = { i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx1_fir0_mult_x_im0_shift0_q = i_arrayidx1_fir0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx1_fir0_mult_x_sums_align_3(BITSHIFT,127)@3
    assign i_arrayidx1_fir0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx1_fir0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1_fir0_mult_x_sums_align_3_q = i_arrayidx1_fir0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx1_fir0_mult_x_im6_shift0(BITSHIFT,148)@3
    assign i_arrayidx1_fir0_mult_x_im6_shift0_qint = { i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx1_fir0_mult_x_im6_shift0_q = i_arrayidx1_fir0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx1_fir0_mult_x_sums_align_2(BITSHIFT,126)@3
    assign i_arrayidx1_fir0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx1_fir0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx1_fir0_mult_x_sums_align_2_q = i_arrayidx1_fir0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx1_fir0_mult_x_sums_join_4(BITJOIN,128)@3
    assign i_arrayidx1_fir0_mult_x_sums_join_4_q = {i_arrayidx1_fir0_mult_x_sums_align_3_q, i_arrayidx1_fir0_mult_x_sums_align_2_q};

    // i_arrayidx1_fir0_mult_x_im3_shift0(BITSHIFT,147)@3
    assign i_arrayidx1_fir0_mult_x_im3_shift0_qint = { i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx1_fir0_mult_x_im3_shift0_q = i_arrayidx1_fir0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx1_fir0_mult_x_sums_align_0(BITSHIFT,124)@3
    assign i_arrayidx1_fir0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx1_fir0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1_fir0_mult_x_sums_align_0_q = i_arrayidx1_fir0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx1_fir0_mult_x_im9_shift0(BITSHIFT,149)@3
    assign i_arrayidx1_fir0_mult_x_im9_shift0_qint = { i_arrayidx1_fir0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx1_fir0_mult_x_im9_shift0_q = i_arrayidx1_fir0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx1_fir0_mult_x_sums_join_1(BITJOIN,125)@3
    assign i_arrayidx1_fir0_mult_x_sums_join_1_q = {i_arrayidx1_fir0_mult_x_sums_align_0_q, {1'b0, i_arrayidx1_fir0_mult_x_im9_shift0_q}};

    // i_arrayidx1_fir0_mult_x_sums_result_add_0_0(ADD,129)@3
    assign i_arrayidx1_fir0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx1_fir0_mult_x_sums_join_1_q};
    assign i_arrayidx1_fir0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx1_fir0_mult_x_sums_join_4_q};
    assign i_arrayidx1_fir0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx1_fir0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx1_fir0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx1_fir0_mult_x_sums_result_add_0_0_q = i_arrayidx1_fir0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx1_fir0_mult_extender_x(BITJOIN,77)@3
    assign i_arrayidx1_fir0_mult_extender_x_q = {i_arrayidx1_fir0_mult_multconst_x_q, i_arrayidx1_fir0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx1_fir0_trunc_sel_x(BITSELECT,79)@3
    assign i_arrayidx1_fir0_trunc_sel_x_b = i_arrayidx1_fir0_mult_extender_x_q[63:0];

    // c_fir_coef_pmem(CONSTANT,4)
    assign c_fir_coef_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx1_fir0_add_x(ADD,71)@3
    assign i_arrayidx1_fir0_add_x_a = {1'b0, c_fir_coef_pmem_q};
    assign i_arrayidx1_fir0_add_x_b = {1'b0, i_arrayidx1_fir0_trunc_sel_x_b};
    assign i_arrayidx1_fir0_add_x_o = $unsigned(i_arrayidx1_fir0_add_x_a) + $unsigned(i_arrayidx1_fir0_add_x_b);
    assign i_arrayidx1_fir0_add_x_q = i_arrayidx1_fir0_add_x_o[64:0];

    // i_arrayidx1_fir0_dupName_0_trunc_sel_x(BITSELECT,80)@3
    assign i_arrayidx1_fir0_dupName_0_trunc_sel_x_b = i_arrayidx1_fir0_add_x_q[63:0];

    // i_arrayidx1_fir17_vt_select_63(BITSELECT,29)@3
    assign i_arrayidx1_fir17_vt_select_63_b = i_arrayidx1_fir0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx1_fir17_vt_join(BITJOIN,28)@3
    assign i_arrayidx1_fir17_vt_join_q = {i_arrayidx1_fir17_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_fir18(BLACKBOX,42)@3
    // out out_memdep_fir_avm_address@20000000
    // out out_memdep_fir_avm_burstcount@20000000
    // out out_memdep_fir_avm_byteenable@20000000
    // out out_memdep_fir_avm_enable@20000000
    // out out_memdep_fir_avm_read@20000000
    // out out_memdep_fir_avm_write@20000000
    // out out_memdep_fir_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    fir_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_fir18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_fir17_vt_join_q),
        .in_i_predicate(i_xor61_fir4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(i_conv_fir15_sel_x_b),
        .in_memdep_fir_avm_readdata(in_memdep_fir_avm_readdata),
        .in_memdep_fir_avm_readdatavalid(in_memdep_fir_avm_readdatavalid),
        .in_memdep_fir_avm_waitrequest(in_memdep_fir_avm_waitrequest),
        .in_memdep_fir_avm_writeack(in_memdep_fir_avm_writeack),
        .out_memdep_fir_avm_address(i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_address),
        .out_memdep_fir_avm_burstcount(i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_burstcount),
        .out_memdep_fir_avm_byteenable(i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_byteenable),
        .out_memdep_fir_avm_enable(i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_enable),
        .out_memdep_fir_avm_read(i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_read),
        .out_memdep_fir_avm_write(i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_write),
        .out_memdep_fir_avm_writedata(i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,70)
    assign out_memdep_fir_avm_address = i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_address;
    assign out_memdep_fir_avm_enable = i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_enable;
    assign out_memdep_fir_avm_read = i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_read;
    assign out_memdep_fir_avm_write = i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_write;
    assign out_memdep_fir_avm_writedata = i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_writedata;
    assign out_memdep_fir_avm_byteenable = i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_byteenable;
    assign out_memdep_fir_avm_burstcount = i_llvm_fpga_mem_memdep_fir18_out_memdep_fir_avm_burstcount;

    // valid_fanout_reg0(REG,95)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together65_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_masked64_fir29(LOGICAL,54)@3 + 1
    assign i_masked64_fir29_qi = i_notcmp51_fir22_q & i_first_cleanup60_fir3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked64_fir29_delay ( .xin(i_masked64_fir29_qi), .xout(i_masked64_fir29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_3(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_3_q <= $unsigned(redist6_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,93)@4
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going55_fir6_out_data_out_3_q;
    assign out_c0_exi2_2_tpl = i_masked64_fir29_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_fir1 = GND_q;

endmodule
