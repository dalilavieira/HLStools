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

// SystemVerilog created from sobel_filter_bb_B18_stall_region
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B18_stall_region (
    input wire [31:0] in_memdep_20_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_20_sobel_filter_avm_writeack,
    input wire [0:0] in_memdep_20_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_20_sobel_filter_avm_readdatavalid,
    output wire [31:0] out_memdep_20_sobel_filter_avm_address,
    output wire [0:0] out_memdep_20_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_20_sobel_filter_avm_read,
    output wire [0:0] out_memdep_20_sobel_filter_avm_write,
    output wire [31:0] out_memdep_20_sobel_filter_avm_writedata,
    output wire [3:0] out_memdep_20_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_20_sobel_filter_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe23394,
    input wire [0:0] in_c0_exe43416,
    input wire [0:0] in_c0_exe53428,
    input wire [0:0] in_c0_exe634310,
    input wire [0:0] in_c0_exe734411,
    input wire [63:0] in_c0_exe834512,
    input wire [0:0] in_c0_exe934613,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe43416,
    output wire [0:0] out_c0_exe53428,
    output wire [0:0] out_c0_exe634310,
    output wire [0:0] out_c0_exe934613,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_sobel_filter_sobel_h_res_pmem_q;
    wire [1:0] i_arrayidx8_i97_sobel_filter0_vt_const_1_q;
    wire [63:0] i_arrayidx8_i97_sobel_filter0_vt_join_q;
    wire [61:0] i_arrayidx8_i97_sobel_filter0_vt_select_63_b;
    wire [31:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_20_sobel_filter1_out_o_valid;
    wire [64:0] i_arrayidx8_i97_sobel_filter0_add_x_a;
    wire [64:0] i_arrayidx8_i97_sobel_filter0_add_x_b;
    logic [64:0] i_arrayidx8_i97_sobel_filter0_add_x_o;
    wire [64:0] i_arrayidx8_i97_sobel_filter0_add_x_q;
    wire [127:0] i_arrayidx8_i97_sobel_filter0_mult_extender_x_q;
    wire [60:0] i_arrayidx8_i97_sobel_filter0_mult_multconst_x_q;
    wire [63:0] i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_i97_sobel_filter0_dupName_0_trunc_sel_x_b;
    wire [35:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_q;
    wire [11:0] i_arrayidx8_i97_sobel_filter0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx8_i97_sobel_filter0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx8_i97_sobel_filter0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx8_i97_sobel_filter0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx8_i97_sobel_filter0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx8_i97_sobel_filter0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx8_i97_sobel_filter0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx8_i97_sobel_filter0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_e;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [3:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    reg [63:0] redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_q;
    reg [32:0] coalesced_delay_0_0_q;
    reg [3:0] coalesced_delay_1_0_q;
    reg [3:0] coalesced_delay_1_1_q;
    wire [100:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_or0;
    wire [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_V0;
    wire [0:0] SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_V1;
    reg [0:0] SE_coalesced_delay_1_1_R_v_0;
    wire [0:0] SE_coalesced_delay_1_1_v_s_0;
    wire [0:0] SE_coalesced_delay_1_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_1_backEN;
    wire [0:0] SE_coalesced_delay_1_1_backStall;
    wire [0:0] SE_coalesced_delay_1_1_V0;


    // SE_coalesced_delay_1_1(STALLENABLE,104)
    // Valid signal propagation
    assign SE_coalesced_delay_1_1_V0 = SE_coalesced_delay_1_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_1_s_tv_0 = SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_backStall & SE_coalesced_delay_1_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_1_backEN = ~ (SE_coalesced_delay_1_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_1_v_s_0 = SE_coalesced_delay_1_1_backEN & SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_1_1_backStall = ~ (SE_coalesced_delay_1_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_1_R_v_0 <= SE_coalesced_delay_1_1_R_v_0 & SE_coalesced_delay_1_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_1_R_v_0 <= SE_coalesced_delay_1_1_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,80)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backStall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0(STALLENABLE,101)
    // Valid signal propagation
    assign SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_V0 = SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_V1 = SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_s_tv_0 = SE_coalesced_delay_1_1_backStall & SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_s_tv_1 = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_o_stall & SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_or0 = SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_s_tv_0;
    assign SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_s_tv_1 | SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_v_s_0 = SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_0 & SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_1 & SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_V0 = SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_and0 = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_wireValid = SE_coalesced_delay_1_1_V0 & SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_stall_entry(BITJOIN,73)
    assign bubble_join_stall_entry_q = {in_c0_exe934613, in_c0_exe834512, in_c0_exe734411, in_c0_exe634310, in_c0_exe53428, in_c0_exe43416, in_c0_exe23394};

    // bubble_select_stall_entry(BITSELECT,74)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[100:100]);

    // join_for_coalesced_delay_0(BITJOIN,62)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_f, bubble_select_stall_entry_b};

    // coalesced_delay_0_0(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,63)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);

    // i_arrayidx8_i97_sobel_filter0_mult_multconst_x(CONSTANT,28)
    assign i_arrayidx8_i97_sobel_filter0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select(BITSELECT,53)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_b = bubble_select_stall_entry_g[63:54];
    assign i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_c = bubble_select_stall_entry_g[53:36];
    assign i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_d = bubble_select_stall_entry_g[35:18];
    assign i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_e = bubble_select_stall_entry_g[17:0];

    // i_arrayidx8_i97_sobel_filter0_mult_x_im0_shift0(BITSHIFT,49)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_im0_shift0_qint = { i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx8_i97_sobel_filter0_mult_x_im0_shift0_q = i_arrayidx8_i97_sobel_filter0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_3(BITSHIFT,46)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx8_i97_sobel_filter0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_3_q = i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx8_i97_sobel_filter0_mult_x_im6_shift0(BITSHIFT,51)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_im6_shift0_qint = { i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx8_i97_sobel_filter0_mult_x_im6_shift0_q = i_arrayidx8_i97_sobel_filter0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_2(BITSHIFT,45)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx8_i97_sobel_filter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_2_q = i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx8_i97_sobel_filter0_mult_x_sums_join_4(BITJOIN,47)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_join_4_q = {i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_3_q, i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_2_q};

    // i_arrayidx8_i97_sobel_filter0_mult_x_im3_shift0(BITSHIFT,50)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_im3_shift0_qint = { i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx8_i97_sobel_filter0_mult_x_im3_shift0_q = i_arrayidx8_i97_sobel_filter0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_0(BITSHIFT,43)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx8_i97_sobel_filter0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_0_q = i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx8_i97_sobel_filter0_mult_x_im9_shift0(BITSHIFT,52)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_im9_shift0_qint = { i_arrayidx8_i97_sobel_filter0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx8_i97_sobel_filter0_mult_x_im9_shift0_q = i_arrayidx8_i97_sobel_filter0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx8_i97_sobel_filter0_mult_x_sums_join_1(BITJOIN,44)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_join_1_q = {i_arrayidx8_i97_sobel_filter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx8_i97_sobel_filter0_mult_x_im9_shift0_q}};

    // i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0(ADD,48)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx8_i97_sobel_filter0_mult_x_sums_join_1_q};
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx8_i97_sobel_filter0_mult_x_sums_join_4_q};
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_q = i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx8_i97_sobel_filter0_mult_extender_x(BITJOIN,27)@0
    assign i_arrayidx8_i97_sobel_filter0_mult_extender_x_q = {i_arrayidx8_i97_sobel_filter0_mult_multconst_x_q, i_arrayidx8_i97_sobel_filter0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx8_i97_sobel_filter0_trunc_sel_x(BITSELECT,29)@0
    assign i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b = i_arrayidx8_i97_sobel_filter0_mult_extender_x_q[63:0];

    // redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b);
        end
    end

    // c_sobel_filter_sobel_h_res_pmem(CONSTANT,3)
    assign c_sobel_filter_sobel_h_res_pmem_q = $unsigned(64'b0100000000001010000000000000000000000000000000000000000000000000);

    // i_arrayidx8_i97_sobel_filter0_add_x(ADD,21)@1
    assign i_arrayidx8_i97_sobel_filter0_add_x_a = {1'b0, c_sobel_filter_sobel_h_res_pmem_q};
    assign i_arrayidx8_i97_sobel_filter0_add_x_b = {1'b0, redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx8_i97_sobel_filter0_add_x_o = $unsigned(i_arrayidx8_i97_sobel_filter0_add_x_a) + $unsigned(i_arrayidx8_i97_sobel_filter0_add_x_b);
    assign i_arrayidx8_i97_sobel_filter0_add_x_q = i_arrayidx8_i97_sobel_filter0_add_x_o[64:0];

    // i_arrayidx8_i97_sobel_filter0_dupName_0_trunc_sel_x(BITSELECT,30)@1
    assign i_arrayidx8_i97_sobel_filter0_dupName_0_trunc_sel_x_b = i_arrayidx8_i97_sobel_filter0_add_x_q[63:0];

    // i_arrayidx8_i97_sobel_filter0_vt_select_63(BITSELECT,10)@1
    assign i_arrayidx8_i97_sobel_filter0_vt_select_63_b = i_arrayidx8_i97_sobel_filter0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx8_i97_sobel_filter0_vt_const_1(CONSTANT,8)
    assign i_arrayidx8_i97_sobel_filter0_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx8_i97_sobel_filter0_vt_join(BITJOIN,9)@1
    assign i_arrayidx8_i97_sobel_filter0_vt_join_q = {i_arrayidx8_i97_sobel_filter0_vt_select_63_b, i_arrayidx8_i97_sobel_filter0_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_20_sobel_filter1(BLACKBOX,11)@1
    // in in_i_stall@20000000
    // out out_memdep_20_sobel_filter_avm_address@20000000
    // out out_memdep_20_sobel_filter_avm_burstcount@20000000
    // out out_memdep_20_sobel_filter_avm_byteenable@20000000
    // out out_memdep_20_sobel_filter_avm_enable@20000000
    // out out_memdep_20_sobel_filter_avm_read@20000000
    // out out_memdep_20_sobel_filter_avm_write@20000000
    // out out_memdep_20_sobel_filter_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_o_writeack@2
    sobel_filter_i_llvm_fpga_mem_memdep_20_0 thei_llvm_fpga_mem_memdep_20_sobel_filter1 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx8_i97_sobel_filter0_vt_join_q),
        .in_i_dependence(sel_for_coalesced_delay_0_c),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_backStall),
        .in_i_valid(SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_V1),
        .in_i_writedata(sel_for_coalesced_delay_0_b),
        .in_memdep_20_sobel_filter_avm_readdata(in_memdep_20_sobel_filter_avm_readdata),
        .in_memdep_20_sobel_filter_avm_readdatavalid(in_memdep_20_sobel_filter_avm_readdatavalid),
        .in_memdep_20_sobel_filter_avm_waitrequest(in_memdep_20_sobel_filter_avm_waitrequest),
        .in_memdep_20_sobel_filter_avm_writeack(in_memdep_20_sobel_filter_avm_writeack),
        .out_memdep_20_sobel_filter_avm_address(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_address),
        .out_memdep_20_sobel_filter_avm_burstcount(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_burstcount),
        .out_memdep_20_sobel_filter_avm_byteenable(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_byteenable),
        .out_memdep_20_sobel_filter_avm_enable(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_enable),
        .out_memdep_20_sobel_filter_avm_read(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_read),
        .out_memdep_20_sobel_filter_avm_write(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_write),
        .out_memdep_20_sobel_filter_avm_writedata(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_20_sobel_filter1_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_20_sobel_filter_avm_address = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_address;
    assign out_memdep_20_sobel_filter_avm_enable = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_enable;
    assign out_memdep_20_sobel_filter_avm_read = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_read;
    assign out_memdep_20_sobel_filter_avm_write = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_write;
    assign out_memdep_20_sobel_filter_avm_writedata = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_writedata;
    assign out_memdep_20_sobel_filter_avm_byteenable = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_byteenable;
    assign out_memdep_20_sobel_filter_avm_burstcount = i_llvm_fpga_mem_memdep_20_sobel_filter1_out_memdep_20_sobel_filter_avm_burstcount;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // join_for_coalesced_delay_1(BITJOIN,65)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_h, bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_c};

    // coalesced_delay_1_0(REG,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_arrayidx8_i97_sobel_filter0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // coalesced_delay_1_1(REG,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(4'b0000);
        end
        else if (SE_coalesced_delay_1_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(coalesced_delay_1_0_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,66)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_1_q[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_1_q[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(coalesced_delay_1_1_q[2:2]);
    assign sel_for_coalesced_delay_1_e = $unsigned(coalesced_delay_1_1_q[3:3]);

    // dupName_0_sync_out_x(GPOUT,20)@2
    assign out_c0_exe43416 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe53428 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe634310 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe934613 = sel_for_coalesced_delay_1_e;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_20_sobel_filter1_V0;

endmodule
