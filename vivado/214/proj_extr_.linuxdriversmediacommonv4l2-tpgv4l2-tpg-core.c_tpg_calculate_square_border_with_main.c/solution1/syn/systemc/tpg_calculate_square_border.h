// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _tpg_calculate_square_border_HH_
#define _tpg_calculate_square_border_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct tpg_calculate_square_border : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > tpg_src_width;
    sc_in< sc_lv<32> > tpg_src_height;
    sc_in< sc_lv<32> > tpg_vid_aspect;
    sc_in< sc_lv<32> > tpg_pix_aspect;
    sc_out< sc_lv<32> > tpg_border_left;
    sc_out< sc_logic > tpg_border_left_ap_vld;
    sc_out< sc_lv<32> > tpg_border_width;
    sc_out< sc_logic > tpg_border_width_ap_vld;
    sc_out< sc_lv<32> > tpg_border_top;
    sc_out< sc_logic > tpg_border_top_ap_vld;
    sc_out< sc_lv<32> > tpg_border_height;
    sc_out< sc_logic > tpg_border_height_ap_vld;
    sc_out< sc_lv<32> > tpg_square_width;
    sc_out< sc_logic > tpg_square_width_ap_vld;
    sc_out< sc_lv<32> > tpg_square_left;
    sc_out< sc_logic > tpg_square_left_ap_vld;
    sc_out< sc_lv<32> > tpg_square_height;
    sc_out< sc_logic > tpg_square_height_ap_vld;
    sc_out< sc_lv<32> > tpg_square_top;
    sc_out< sc_logic > tpg_square_top_ap_vld;


    // Module declarations
    tpg_calculate_square_border(sc_module_name name);
    SC_HAS_PROCESS(tpg_calculate_square_border);

    ~tpg_calculate_square_border();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<29> > tmp_1_reg_1133;
    sc_signal< sc_lv<1> > tmp_2_reg_1138;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<31> > sq_w_3_fu_422_p3;
    sc_signal< sc_lv<32> > tpg_vid_aspect_read_read_fu_148_p2;
    sc_signal< sc_lv<1> > icmp_ln45_fu_527_p2;
    sc_signal< sc_lv<1> > icmp_ln45_reg_1171;
    sc_signal< sc_lv<32> > add_ln46_fu_553_p2;
    sc_signal< sc_lv<32> > add_ln46_reg_1175;
    sc_signal< sc_lv<31> > zext_ln46_1_fu_578_p1;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln91_fu_637_p2;
    sc_signal< sc_lv<1> > icmp_ln91_reg_1190;
    sc_signal< sc_lv<28> > tmp_11_reg_1194;
    sc_signal< sc_lv<32> > zext_ln98_fu_681_p1;
    sc_signal< sc_lv<1> > icmp_ln75_fu_741_p2;
    sc_signal< sc_lv<1> > icmp_ln75_reg_1214;
    sc_signal< sc_lv<28> > tmp_8_reg_1218;
    sc_signal< sc_lv<28> > tmp_7_reg_1223;
    sc_signal< sc_lv<1> > icmp_ln59_fu_802_p2;
    sc_signal< sc_lv<1> > icmp_ln59_reg_1228;
    sc_signal< sc_lv<30> > tmp_5_reg_1232;
    sc_signal< sc_lv<32> > zext_ln66_fu_846_p1;
    sc_signal< sc_lv<31> > sq_h_1_reg_216;
    sc_signal< sc_lv<31> > ap_phi_mux_tpg_border_left_new_s_phi_fu_229_p20;
    sc_signal< sc_lv<31> > tpg_border_left_new_s_reg_225;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > ap_phi_mux_tpg_border_width_new_phi_fu_261_p20;
    sc_signal< sc_lv<32> > tpg_border_width_new_reg_258;
    sc_signal< sc_lv<32> > sext_ln93_fu_915_p1;
    sc_signal< sc_lv<32> > sext_ln77_fu_986_p1;
    sc_signal< sc_lv<32> > select_ln61_fu_1073_p3;
    sc_signal< sc_lv<31> > ap_phi_mux_tpg_border_top_new_0_phi_fu_288_p20;
    sc_signal< sc_lv<31> > tpg_border_top_new_0_reg_284;
    sc_signal< sc_lv<32> > ap_phi_mux_tpg_border_height_ne_phi_fu_320_p20;
    sc_signal< sc_lv<32> > tpg_border_height_ne_reg_315;
    sc_signal< sc_lv<32> > zext_ln82_fu_1014_p1;
    sc_signal< sc_lv<32> > select_ln37_fu_498_p3;
    sc_signal< sc_lv<32> > zext_ln49_fu_582_p1;
    sc_signal< sc_lv<32> > shl_ln32_fu_345_p2;
    sc_signal< sc_lv<32> > mul_ln32_fu_355_p1;
    sc_signal< sc_lv<65> > mul_ln32_fu_355_p2;
    sc_signal< sc_lv<1> > tmp_fu_375_p3;
    sc_signal< sc_lv<2> > trunc_ln33_fu_371_p1;
    sc_signal< sc_lv<2> > and_ln_fu_383_p3;
    sc_signal< sc_lv<2> > sub_ln33_fu_391_p2;
    sc_signal< sc_lv<30> > sq_w_fu_405_p3;
    sc_signal< sc_lv<31> > zext_ln32_fu_412_p1;
    sc_signal< sc_lv<31> > sq_w_1_fu_416_p2;
    sc_signal< sc_lv<29> > lshr_ln_fu_439_p4;
    sc_signal< sc_lv<31> > and_ln1_fu_453_p3;
    sc_signal< sc_lv<32> > zext_ln38_1_fu_461_p1;
    sc_signal< sc_lv<32> > zext_ln38_fu_449_p1;
    sc_signal< sc_lv<32> > ana_sq_w_fu_465_p2;
    sc_signal< sc_lv<32> > sub_ln40_fu_471_p2;
    sc_signal< sc_lv<1> > tmp_3_fu_476_p3;
    sc_signal< sc_lv<32> > ana_sq_w_1_fu_484_p2;
    sc_signal< sc_lv<1> > icmp_ln37_fu_433_p2;
    sc_signal< sc_lv<32> > select_ln40_fu_490_p3;
    sc_signal< sc_lv<32> > zext_ln33_fu_429_p1;
    sc_signal< sc_lv<32> > sub_ln44_fu_507_p2;
    sc_signal< sc_lv<31> > lshr_ln1_fu_512_p4;
    sc_signal< sc_lv<29> > trunc_ln46_fu_533_p1;
    sc_signal< sc_lv<32> > shl_ln46_1_fu_545_p3;
    sc_signal< sc_lv<32> > shl_ln1_fu_537_p3;
    sc_signal< sc_lv<32> > mul_ln46_fu_562_p1;
    sc_signal< sc_lv<65> > mul_ln46_fu_562_p2;
    sc_signal< sc_lv<29> > tmp_4_fu_568_p4;
    sc_signal< sc_lv<32> > sub_ln50_fu_587_p2;
    sc_signal< sc_lv<31> > lshr_ln2_fu_592_p4;
    sc_signal< sc_lv<32> > add_ln88_fu_607_p2;
    sc_signal< sc_lv<32> > shl_ln91_fu_622_p2;
    sc_signal< sc_lv<32> > add_ln91_fu_627_p2;
    sc_signal< sc_lv<32> > shl_ln91_1_fu_632_p2;
    sc_signal< sc_lv<32> > mul_ln92_fu_647_p0;
    sc_signal< sc_lv<65> > mul_ln92_fu_647_p2;
    sc_signal< sc_lv<27> > tmp_10_fu_663_p4;
    sc_signal< sc_lv<28> > and_ln6_fu_673_p3;
    sc_signal< sc_lv<32> > sub_ln99_fu_685_p2;
    sc_signal< sc_lv<32> > add_ln72_fu_700_p2;
    sc_signal< sc_lv<32> > shl_ln75_fu_715_p2;
    sc_signal< sc_lv<32> > shl_ln75_1_fu_725_p2;
    sc_signal< sc_lv<32> > shl_ln75_2_fu_730_p2;
    sc_signal< sc_lv<32> > add_ln75_fu_720_p2;
    sc_signal< sc_lv<32> > sub_ln75_fu_735_p2;
    sc_signal< sc_lv<32> > mul_ln76_fu_751_p0;
    sc_signal< sc_lv<65> > mul_ln76_fu_751_p2;
    sc_signal< sc_lv<32> > mul_ln82_fu_771_p0;
    sc_signal< sc_lv<65> > mul_ln82_fu_771_p2;
    sc_signal< sc_lv<32> > shl_ln59_fu_787_p2;
    sc_signal< sc_lv<32> > sub_ln59_fu_792_p2;
    sc_signal< sc_lv<32> > shl_ln59_1_fu_797_p2;
    sc_signal< sc_lv<32> > mul_ln60_fu_812_p0;
    sc_signal< sc_lv<65> > mul_ln60_fu_812_p2;
    sc_signal< sc_lv<29> > tmp_s_fu_828_p4;
    sc_signal< sc_lv<30> > and_ln2_fu_838_p3;
    sc_signal< sc_lv<32> > sub_ln67_fu_850_p2;
    sc_signal< sc_lv<29> > and_ln7_fu_865_p3;
    sc_signal< sc_lv<32> > zext_ln92_1_fu_876_p1;
    sc_signal< sc_lv<32> > sub_ln93_fu_880_p2;
    sc_signal< sc_lv<30> > tmp_12_fu_885_p4;
    sc_signal< sc_lv<30> > zext_ln92_fu_872_p1;
    sc_signal< sc_lv<1> > icmp_ln93_fu_895_p2;
    sc_signal< sc_lv<30> > add_ln94_fu_901_p2;
    sc_signal< sc_lv<30> > select_ln93_fu_907_p3;
    sc_signal< sc_lv<32> > sub_ln95_fu_920_p2;
    sc_signal< sc_lv<29> > and_ln5_fu_936_p3;
    sc_signal< sc_lv<32> > zext_ln76_1_fu_947_p1;
    sc_signal< sc_lv<32> > sub_ln77_fu_951_p2;
    sc_signal< sc_lv<30> > tmp_9_fu_956_p4;
    sc_signal< sc_lv<30> > zext_ln76_fu_943_p1;
    sc_signal< sc_lv<1> > icmp_ln77_fu_966_p2;
    sc_signal< sc_lv<30> > add_ln78_fu_972_p2;
    sc_signal< sc_lv<30> > select_ln77_fu_978_p3;
    sc_signal< sc_lv<32> > sub_ln79_fu_991_p2;
    sc_signal< sc_lv<29> > and_ln4_fu_1007_p3;
    sc_signal< sc_lv<32> > sub_ln83_fu_1019_p2;
    sc_signal< sc_lv<31> > and_ln3_fu_1035_p3;
    sc_signal< sc_lv<32> > zext_ln60_fu_1042_p1;
    sc_signal< sc_lv<32> > sub_ln61_fu_1046_p2;
    sc_signal< sc_lv<30> > tmp_6_fu_1051_p4;
    sc_signal< sc_lv<1> > icmp_ln61_fu_1061_p2;
    sc_signal< sc_lv<32> > add_ln62_fu_1067_p2;
    sc_signal< sc_lv<32> > sub_ln63_fu_1082_p2;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_lv<65> > mul_ln32_fu_355_p10;
    sc_signal< sc_lv<65> > mul_ln46_fu_562_p10;
    sc_signal< sc_lv<65> > mul_ln60_fu_812_p00;
    sc_signal< sc_lv<65> > mul_ln76_fu_751_p00;
    sc_signal< sc_lv<65> > mul_ln82_fu_771_p00;
    sc_signal< sc_lv<65> > mul_ln92_fu_647_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_81;
    static const sc_lv<32> ap_const_lv32_82;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1BA;
    static const sc_lv<32> ap_const_lv32_1FA;
    static const sc_lv<65> ap_const_lv65_19999999A;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<31> ap_const_lv31_2;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<65> ap_const_lv65_1745D1746;
    static const sc_lv<32> ap_const_lv32_FFFFFE46;
    static const sc_lv<65> ap_const_lv65_1C71C71C8;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_FFFFFE06;
    static const sc_lv<65> ap_const_lv65_124924925;
    static const sc_lv<65> ap_const_lv65_155555556;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<30> ap_const_lv30_0;
    static const sc_lv<30> ap_const_lv30_3FFFFFFE;
    static const sc_lv<32> ap_const_lv32_FFFFFFFE;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln46_fu_553_p2();
    void thread_add_ln62_fu_1067_p2();
    void thread_add_ln72_fu_700_p2();
    void thread_add_ln75_fu_720_p2();
    void thread_add_ln78_fu_972_p2();
    void thread_add_ln88_fu_607_p2();
    void thread_add_ln91_fu_627_p2();
    void thread_add_ln94_fu_901_p2();
    void thread_ana_sq_w_1_fu_484_p2();
    void thread_ana_sq_w_fu_465_p2();
    void thread_and_ln1_fu_453_p3();
    void thread_and_ln2_fu_838_p3();
    void thread_and_ln3_fu_1035_p3();
    void thread_and_ln4_fu_1007_p3();
    void thread_and_ln5_fu_936_p3();
    void thread_and_ln6_fu_673_p3();
    void thread_and_ln7_fu_865_p3();
    void thread_and_ln_fu_383_p3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_tpg_border_height_ne_phi_fu_320_p20();
    void thread_ap_phi_mux_tpg_border_left_new_s_phi_fu_229_p20();
    void thread_ap_phi_mux_tpg_border_top_new_0_phi_fu_288_p20();
    void thread_ap_phi_mux_tpg_border_width_new_phi_fu_261_p20();
    void thread_ap_ready();
    void thread_icmp_ln37_fu_433_p2();
    void thread_icmp_ln45_fu_527_p2();
    void thread_icmp_ln59_fu_802_p2();
    void thread_icmp_ln61_fu_1061_p2();
    void thread_icmp_ln75_fu_741_p2();
    void thread_icmp_ln77_fu_966_p2();
    void thread_icmp_ln91_fu_637_p2();
    void thread_icmp_ln93_fu_895_p2();
    void thread_lshr_ln1_fu_512_p4();
    void thread_lshr_ln2_fu_592_p4();
    void thread_lshr_ln_fu_439_p4();
    void thread_mul_ln32_fu_355_p1();
    void thread_mul_ln32_fu_355_p10();
    void thread_mul_ln32_fu_355_p2();
    void thread_mul_ln46_fu_562_p1();
    void thread_mul_ln46_fu_562_p10();
    void thread_mul_ln46_fu_562_p2();
    void thread_mul_ln60_fu_812_p0();
    void thread_mul_ln60_fu_812_p00();
    void thread_mul_ln60_fu_812_p2();
    void thread_mul_ln76_fu_751_p0();
    void thread_mul_ln76_fu_751_p00();
    void thread_mul_ln76_fu_751_p2();
    void thread_mul_ln82_fu_771_p0();
    void thread_mul_ln82_fu_771_p00();
    void thread_mul_ln82_fu_771_p2();
    void thread_mul_ln92_fu_647_p0();
    void thread_mul_ln92_fu_647_p00();
    void thread_mul_ln92_fu_647_p2();
    void thread_select_ln37_fu_498_p3();
    void thread_select_ln40_fu_490_p3();
    void thread_select_ln61_fu_1073_p3();
    void thread_select_ln77_fu_978_p3();
    void thread_select_ln93_fu_907_p3();
    void thread_sext_ln77_fu_986_p1();
    void thread_sext_ln93_fu_915_p1();
    void thread_shl_ln1_fu_537_p3();
    void thread_shl_ln32_fu_345_p2();
    void thread_shl_ln46_1_fu_545_p3();
    void thread_shl_ln59_1_fu_797_p2();
    void thread_shl_ln59_fu_787_p2();
    void thread_shl_ln75_1_fu_725_p2();
    void thread_shl_ln75_2_fu_730_p2();
    void thread_shl_ln75_fu_715_p2();
    void thread_shl_ln91_1_fu_632_p2();
    void thread_shl_ln91_fu_622_p2();
    void thread_sq_w_1_fu_416_p2();
    void thread_sq_w_3_fu_422_p3();
    void thread_sq_w_fu_405_p3();
    void thread_sub_ln33_fu_391_p2();
    void thread_sub_ln40_fu_471_p2();
    void thread_sub_ln44_fu_507_p2();
    void thread_sub_ln50_fu_587_p2();
    void thread_sub_ln59_fu_792_p2();
    void thread_sub_ln61_fu_1046_p2();
    void thread_sub_ln63_fu_1082_p2();
    void thread_sub_ln67_fu_850_p2();
    void thread_sub_ln75_fu_735_p2();
    void thread_sub_ln77_fu_951_p2();
    void thread_sub_ln79_fu_991_p2();
    void thread_sub_ln83_fu_1019_p2();
    void thread_sub_ln93_fu_880_p2();
    void thread_sub_ln95_fu_920_p2();
    void thread_sub_ln99_fu_685_p2();
    void thread_tmp_10_fu_663_p4();
    void thread_tmp_12_fu_885_p4();
    void thread_tmp_3_fu_476_p3();
    void thread_tmp_4_fu_568_p4();
    void thread_tmp_6_fu_1051_p4();
    void thread_tmp_9_fu_956_p4();
    void thread_tmp_fu_375_p3();
    void thread_tmp_s_fu_828_p4();
    void thread_tpg_border_height();
    void thread_tpg_border_height_ap_vld();
    void thread_tpg_border_left();
    void thread_tpg_border_left_ap_vld();
    void thread_tpg_border_top();
    void thread_tpg_border_top_ap_vld();
    void thread_tpg_border_width();
    void thread_tpg_border_width_ap_vld();
    void thread_tpg_square_height();
    void thread_tpg_square_height_ap_vld();
    void thread_tpg_square_left();
    void thread_tpg_square_left_ap_vld();
    void thread_tpg_square_top();
    void thread_tpg_square_top_ap_vld();
    void thread_tpg_square_width();
    void thread_tpg_square_width_ap_vld();
    void thread_tpg_vid_aspect_read_read_fu_148_p2();
    void thread_trunc_ln33_fu_371_p1();
    void thread_trunc_ln46_fu_533_p1();
    void thread_zext_ln32_fu_412_p1();
    void thread_zext_ln33_fu_429_p1();
    void thread_zext_ln38_1_fu_461_p1();
    void thread_zext_ln38_fu_449_p1();
    void thread_zext_ln46_1_fu_578_p1();
    void thread_zext_ln49_fu_582_p1();
    void thread_zext_ln60_fu_1042_p1();
    void thread_zext_ln66_fu_846_p1();
    void thread_zext_ln76_1_fu_947_p1();
    void thread_zext_ln76_fu_943_p1();
    void thread_zext_ln82_fu_1014_p1();
    void thread_zext_ln92_1_fu_876_p1();
    void thread_zext_ln92_fu_872_p1();
    void thread_zext_ln98_fu_681_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
