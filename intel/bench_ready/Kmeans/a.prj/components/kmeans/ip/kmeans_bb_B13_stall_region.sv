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

// SystemVerilog created from kmeans_bb_B13_stall_region
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B13_stall_region (
    input wire [15:0] in_memdep_5_kmeans_avm_readdata,
    input wire [0:0] in_memdep_5_kmeans_avm_writeack,
    input wire [0:0] in_memdep_5_kmeans_avm_waitrequest,
    input wire [0:0] in_memdep_5_kmeans_avm_readdatavalid,
    output wire [31:0] out_memdep_5_kmeans_avm_address,
    output wire [0:0] out_memdep_5_kmeans_avm_enable,
    output wire [0:0] out_memdep_5_kmeans_avm_read,
    output wire [0:0] out_memdep_5_kmeans_avm_write,
    output wire [15:0] out_memdep_5_kmeans_avm_writedata,
    output wire [1:0] out_memdep_5_kmeans_avm_byteenable,
    output wire [0:0] out_memdep_5_kmeans_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [15:0] in_c0_exe12251,
    input wire [31:0] in_c0_exe22512,
    input wire [0:0] in_c0_exe52546,
    input wire [0:0] in_c0_exe62558,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe52546,
    output wire [0:0] out_c0_exe62558,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_kmeans_data_out_pmem_q;
    wire [63:0] i_arrayidx642_kmeans1_vt_join_q;
    wire [62:0] i_arrayidx642_kmeans1_vt_select_63_b;
    wire [31:0] i_idxprom63_kmeans0_vt_const_63_q;
    wire [63:0] i_idxprom63_kmeans0_vt_join_q;
    wire [31:0] i_idxprom63_kmeans0_vt_select_31_b;
    wire [63:0] i_unnamed_kmeans3_vt_join_q;
    wire [62:0] i_unnamed_kmeans3_vt_select_63_b;
    wire [64:0] i_arrayidx642_kmeans0_add_x_a;
    wire [64:0] i_arrayidx642_kmeans0_add_x_b;
    logic [64:0] i_arrayidx642_kmeans0_add_x_o;
    wire [64:0] i_arrayidx642_kmeans0_add_x_q;
    wire [127:0] i_arrayidx642_kmeans0_mult_extender_x_q;
    wire [61:0] i_arrayidx642_kmeans0_mult_multconst_x_q;
    wire [63:0] i_arrayidx642_kmeans0_trunc_sel_x_b;
    wire [63:0] i_arrayidx642_kmeans0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom63_kmeans0_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_o_valid;
    wire [35:0] i_arrayidx642_kmeans0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx642_kmeans0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx642_kmeans0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx642_kmeans0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx642_kmeans0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx642_kmeans0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx642_kmeans0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx642_kmeans0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_q;
    wire [10:0] i_arrayidx642_kmeans0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx642_kmeans0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx642_kmeans0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx642_kmeans0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx642_kmeans0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx642_kmeans0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx642_kmeans0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx642_kmeans0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_e;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [15:0] redist0_stall_entry_o4_1_0_q;
    reg [31:0] redist3_i_idxprom63_kmeans0_vt_select_31_b_1_0_q;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
    wire [49:0] bubble_join_stall_entry_q;
    wire [15:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_V0;
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_0;
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_1;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_1;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_or0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V1;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;


    // bubble_join_stall_entry(BITJOIN,75)
    assign bubble_join_stall_entry_q = {in_c0_exe62558, in_c0_exe52546, in_c0_exe22512, in_c0_exe12251};

    // bubble_select_stall_entry(BITSELECT,76)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[15:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[47:16]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[48:48]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[49:49]);

    // redist0_stall_entry_o4_1_0(REG,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(16'b0000000000000000);
        end
        else if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,110)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_redist0_stall_entry_o4_1_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,85)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = SE_redist0_stall_entry_o4_1_0_backStall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist0_stall_entry_o4_1_0(STALLENABLE,107)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_1_0_V0 = SE_redist0_stall_entry_o4_1_0_R_v_0;
    assign SE_redist0_stall_entry_o4_1_0_V1 = SE_redist0_stall_entry_o4_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_1_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_redist0_stall_entry_o4_1_0_R_v_0;
    assign SE_redist0_stall_entry_o4_1_0_s_tv_1 = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_o_stall & SE_redist0_stall_entry_o4_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_1_0_or0 = SE_redist0_stall_entry_o4_1_0_s_tv_0;
    assign SE_redist0_stall_entry_o4_1_0_backEN = ~ (SE_redist0_stall_entry_o4_1_0_s_tv_1 | SE_redist0_stall_entry_o4_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_1_0_v_s_0 = SE_redist0_stall_entry_o4_1_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_1_0_backStall = ~ (SE_redist0_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_1_0_R_v_0 <= 1'b0;
            SE_redist0_stall_entry_o4_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_R_v_0 & SE_redist0_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_1 <= SE_redist0_stall_entry_o4_1_0_R_v_1 & SE_redist0_stall_entry_o4_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_1 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x(STALLENABLE,93)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_and0 = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_wireValid = SE_coalesced_delay_0_1_V0 & SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_arrayidx642_kmeans0_mult_multconst_x(CONSTANT,34)
    assign i_arrayidx642_kmeans0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_idxprom63_kmeans0_vt_const_63(CONSTANT,12)
    assign i_idxprom63_kmeans0_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom63_kmeans0_sel_x(BITSELECT,37)@0
    assign i_idxprom63_kmeans0_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_stall_entry_c[31:0]};

    // i_idxprom63_kmeans0_vt_select_31(BITSELECT,14)@0
    assign i_idxprom63_kmeans0_vt_select_31_b = i_idxprom63_kmeans0_sel_x_b[31:0];

    // redist3_i_idxprom63_kmeans0_vt_select_31_b_1_0(REG,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_idxprom63_kmeans0_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist3_i_idxprom63_kmeans0_vt_select_31_b_1_0_q <= $unsigned(i_idxprom63_kmeans0_vt_select_31_b);
        end
    end

    // i_idxprom63_kmeans0_vt_join(BITJOIN,13)@1
    assign i_idxprom63_kmeans0_vt_join_q = {i_idxprom63_kmeans0_vt_const_63_q, redist3_i_idxprom63_kmeans0_vt_select_31_b_1_0_q};

    // i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select(BITSELECT,62)@1
    assign i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_b = i_idxprom63_kmeans0_vt_join_q[63:54];
    assign i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_c = i_idxprom63_kmeans0_vt_join_q[53:36];
    assign i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_d = i_idxprom63_kmeans0_vt_join_q[35:18];
    assign i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_e = i_idxprom63_kmeans0_vt_join_q[17:0];

    // i_arrayidx642_kmeans0_mult_x_im0_shift0(BITSHIFT,58)@1
    assign i_arrayidx642_kmeans0_mult_x_im0_shift0_qint = { i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx642_kmeans0_mult_x_im0_shift0_q = i_arrayidx642_kmeans0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx642_kmeans0_mult_x_sums_align_3(BITSHIFT,55)@1
    assign i_arrayidx642_kmeans0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx642_kmeans0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx642_kmeans0_mult_x_sums_align_3_q = i_arrayidx642_kmeans0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx642_kmeans0_mult_x_im6_shift0(BITSHIFT,60)@1
    assign i_arrayidx642_kmeans0_mult_x_im6_shift0_qint = { i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx642_kmeans0_mult_x_im6_shift0_q = i_arrayidx642_kmeans0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx642_kmeans0_mult_x_sums_align_2(BITSHIFT,54)@1
    assign i_arrayidx642_kmeans0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx642_kmeans0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx642_kmeans0_mult_x_sums_align_2_q = i_arrayidx642_kmeans0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx642_kmeans0_mult_x_sums_join_4(BITJOIN,56)@1
    assign i_arrayidx642_kmeans0_mult_x_sums_join_4_q = {i_arrayidx642_kmeans0_mult_x_sums_align_3_q, i_arrayidx642_kmeans0_mult_x_sums_align_2_q};

    // i_arrayidx642_kmeans0_mult_x_im3_shift0(BITSHIFT,59)@1
    assign i_arrayidx642_kmeans0_mult_x_im3_shift0_qint = { i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx642_kmeans0_mult_x_im3_shift0_q = i_arrayidx642_kmeans0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx642_kmeans0_mult_x_sums_align_0(BITSHIFT,52)@1
    assign i_arrayidx642_kmeans0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx642_kmeans0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx642_kmeans0_mult_x_sums_align_0_q = i_arrayidx642_kmeans0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx642_kmeans0_mult_x_im9_shift0(BITSHIFT,61)@1
    assign i_arrayidx642_kmeans0_mult_x_im9_shift0_qint = { i_arrayidx642_kmeans0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx642_kmeans0_mult_x_im9_shift0_q = i_arrayidx642_kmeans0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx642_kmeans0_mult_x_sums_join_1(BITJOIN,53)@1
    assign i_arrayidx642_kmeans0_mult_x_sums_join_1_q = {i_arrayidx642_kmeans0_mult_x_sums_align_0_q, {1'b0, i_arrayidx642_kmeans0_mult_x_im9_shift0_q}};

    // i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0(ADD,57)@1
    assign i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx642_kmeans0_mult_x_sums_join_1_q};
    assign i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx642_kmeans0_mult_x_sums_join_4_q};
    assign i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_q = i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx642_kmeans0_mult_extender_x(BITJOIN,33)@1
    assign i_arrayidx642_kmeans0_mult_extender_x_q = {i_arrayidx642_kmeans0_mult_multconst_x_q, i_arrayidx642_kmeans0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx642_kmeans0_trunc_sel_x(BITSELECT,35)@1
    assign i_arrayidx642_kmeans0_trunc_sel_x_b = i_arrayidx642_kmeans0_mult_extender_x_q[63:0];

    // c_kmeans_data_out_pmem(CONSTANT,3)
    assign c_kmeans_data_out_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx642_kmeans0_add_x(ADD,27)@1
    assign i_arrayidx642_kmeans0_add_x_a = {1'b0, c_kmeans_data_out_pmem_q};
    assign i_arrayidx642_kmeans0_add_x_b = {1'b0, i_arrayidx642_kmeans0_trunc_sel_x_b};
    assign i_arrayidx642_kmeans0_add_x_o = $unsigned(i_arrayidx642_kmeans0_add_x_a) + $unsigned(i_arrayidx642_kmeans0_add_x_b);
    assign i_arrayidx642_kmeans0_add_x_q = i_arrayidx642_kmeans0_add_x_o[64:0];

    // i_arrayidx642_kmeans0_dupName_0_trunc_sel_x(BITSELECT,36)@1
    assign i_arrayidx642_kmeans0_dupName_0_trunc_sel_x_b = i_arrayidx642_kmeans0_add_x_q[63:0];

    // i_arrayidx642_kmeans1_vt_select_63(BITSELECT,10)@1
    assign i_arrayidx642_kmeans1_vt_select_63_b = i_arrayidx642_kmeans0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx642_kmeans1_vt_join(BITJOIN,9)@1
    assign i_arrayidx642_kmeans1_vt_join_q = {i_arrayidx642_kmeans1_vt_select_63_b, GND_q};

    // i_unnamed_kmeans3_vt_select_63(BITSELECT,17)@1
    assign i_unnamed_kmeans3_vt_select_63_b = i_arrayidx642_kmeans1_vt_join_q[63:1];

    // i_unnamed_kmeans3_vt_join(BITJOIN,16)@1
    assign i_unnamed_kmeans3_vt_join_q = {i_unnamed_kmeans3_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x(BLACKBOX,38)@1
    // in in_i_stall@20000000
    // out out_memdep_5_kmeans_avm_address@20000000
    // out out_memdep_5_kmeans_avm_burstcount@20000000
    // out out_memdep_5_kmeans_avm_byteenable@20000000
    // out out_memdep_5_kmeans_avm_enable@20000000
    // out out_memdep_5_kmeans_avm_read@20000000
    // out out_memdep_5_kmeans_avm_write@20000000
    // out out_memdep_5_kmeans_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_o_writeack@2
    kmeans_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_unnamed_kmeans3_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_backStall),
        .in_i_valid(SE_redist0_stall_entry_o4_1_0_V1),
        .in_memdep_5_kmeans_avm_readdata(in_memdep_5_kmeans_avm_readdata),
        .in_memdep_5_kmeans_avm_readdatavalid(in_memdep_5_kmeans_avm_readdatavalid),
        .in_memdep_5_kmeans_avm_waitrequest(in_memdep_5_kmeans_avm_waitrequest),
        .in_memdep_5_kmeans_avm_writeack(in_memdep_5_kmeans_avm_writeack),
        .in_i_writedata_0_tpl(redist0_stall_entry_o4_1_0_q),
        .out_memdep_5_kmeans_avm_address(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_address),
        .out_memdep_5_kmeans_avm_burstcount(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_burstcount),
        .out_memdep_5_kmeans_avm_byteenable(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_byteenable),
        .out_memdep_5_kmeans_avm_enable(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_enable),
        .out_memdep_5_kmeans_avm_read(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_read),
        .out_memdep_5_kmeans_avm_write(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_write),
        .out_memdep_5_kmeans_avm_writedata(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_5_kmeans_avm_address = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_address;
    assign out_memdep_5_kmeans_avm_enable = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_enable;
    assign out_memdep_5_kmeans_avm_read = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_read;
    assign out_memdep_5_kmeans_avm_write = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_write;
    assign out_memdep_5_kmeans_avm_writedata = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_writedata;
    assign out_memdep_5_kmeans_avm_byteenable = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_byteenable;
    assign out_memdep_5_kmeans_avm_burstcount = i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_out_memdep_5_kmeans_avm_burstcount;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // join_for_coalesced_delay_0(BITJOIN,68)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d};

    // coalesced_delay_0_0(REG,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,69)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_1_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_1_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,26)@2
    assign out_c0_exe52546 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe62558 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_5_kmeans4_vunroll_x_V0;

endmodule
