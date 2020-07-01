// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _update_knn_HH_
#define _update_knn_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "DigitRec_sw_mux_32_32_1_1.h"
#include "DigitRec_sw_mux_42_1_1_1.h"

namespace ap_rtl {

struct update_knn : public sc_module {
    // Port declarations 30
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<17> > train_inst_address0;
    sc_out< sc_logic > train_inst_ce0;
    sc_in< sc_lv<64> > train_inst_q0;
    sc_in< sc_lv<17> > train_inst_offset;
    sc_out< sc_lv<13> > test_inst_address0;
    sc_out< sc_logic > test_inst_ce0;
    sc_in< sc_lv<64> > test_inst_q0;
    sc_in< sc_lv<13> > test_inst_offset;
    sc_in< sc_lv<32> > dists_0_read_5;
    sc_in< sc_lv<32> > dists_0_read;
    sc_in< sc_lv<32> > dists_1_read_5;
    sc_in< sc_lv<32> > dists_1_read;
    sc_in< sc_lv<32> > dists_2_read_5;
    sc_in< sc_lv<32> > dists_2_read;
    sc_in< sc_lv<32> > labels_0_read;
    sc_in< sc_lv<32> > labels_1_read;
    sc_in< sc_lv<32> > labels_2_read;
    sc_in< sc_lv<4> > label_r;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_out< sc_lv<32> > ap_return_3;
    sc_out< sc_lv<32> > ap_return_4;
    sc_out< sc_lv<32> > ap_return_5;
    sc_signal< sc_lv<1> > ap_var_for_const1;
    sc_signal< sc_lv<1> > ap_var_for_const0;


    // Module declarations
    update_knn(sc_module_name name);
    SC_HAS_PROCESS(update_knn);

    ~update_knn();

    sc_trace_file* mVcdFile;

    DigitRec_sw_mux_32_32_1_1<1,1,32,32,32,2,32>* DigitRec_sw_mux_32_32_1_1_U1;
    DigitRec_sw_mux_42_1_1_1<1,1,1,1,1,1,2,1>* DigitRec_sw_mux_42_1_1_1_U2;
    DigitRec_sw_mux_42_1_1_1<1,1,1,1,1,1,2,1>* DigitRec_sw_mux_42_1_1_1_U3;
    DigitRec_sw_mux_42_1_1_1<1,1,1,1,1,1,2,1>* DigitRec_sw_mux_42_1_1_1_U4;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > label_cast_fu_468_p1;
    sc_signal< sc_lv<32> > label_cast_reg_1986;
    sc_signal< sc_lv<3> > i_fu_478_p2;
    sc_signal< sc_lv<3> > i_reg_1996;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln33_fu_472_p2;
    sc_signal< sc_lv<32> > zext_ln33_fu_512_p1;
    sc_signal< sc_lv<32> > zext_ln33_reg_2011;
    sc_signal< sc_lv<2> > trunc_ln21_fu_918_p1;
    sc_signal< sc_lv<2> > trunc_ln21_reg_2019;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<2> > tmp_32_fu_932_p4;
    sc_signal< sc_lv<2> > tmp_32_reg_2025;
    sc_signal< sc_lv<2> > tmp_33_fu_942_p4;
    sc_signal< sc_lv<2> > tmp_33_reg_2030;
    sc_signal< sc_lv<2> > tmp_34_fu_952_p4;
    sc_signal< sc_lv<2> > tmp_34_reg_2035;
    sc_signal< sc_lv<2> > tmp_35_fu_962_p4;
    sc_signal< sc_lv<2> > tmp_35_reg_2040;
    sc_signal< sc_lv<2> > tmp_36_fu_972_p4;
    sc_signal< sc_lv<2> > tmp_36_reg_2045;
    sc_signal< sc_lv<2> > tmp_37_fu_982_p4;
    sc_signal< sc_lv<2> > tmp_37_reg_2050;
    sc_signal< sc_lv<2> > tmp_38_fu_992_p4;
    sc_signal< sc_lv<2> > tmp_38_reg_2055;
    sc_signal< sc_lv<2> > tmp_39_fu_1002_p4;
    sc_signal< sc_lv<2> > tmp_39_reg_2060;
    sc_signal< sc_lv<2> > tmp_40_fu_1012_p4;
    sc_signal< sc_lv<2> > tmp_40_reg_2065;
    sc_signal< sc_lv<2> > tmp_41_fu_1022_p4;
    sc_signal< sc_lv<2> > tmp_41_reg_2070;
    sc_signal< sc_lv<2> > tmp_42_fu_1032_p4;
    sc_signal< sc_lv<2> > tmp_42_reg_2075;
    sc_signal< sc_lv<2> > tmp_43_fu_1042_p4;
    sc_signal< sc_lv<2> > tmp_43_reg_2080;
    sc_signal< sc_lv<2> > tmp_44_fu_1052_p4;
    sc_signal< sc_lv<2> > tmp_44_reg_2085;
    sc_signal< sc_lv<2> > tmp_45_fu_1062_p4;
    sc_signal< sc_lv<2> > tmp_45_reg_2090;
    sc_signal< sc_lv<2> > trunc_ln21_2_fu_1142_p4;
    sc_signal< sc_lv<2> > trunc_ln21_2_reg_2095;
    sc_signal< sc_lv<2> > tmp_47_fu_1162_p4;
    sc_signal< sc_lv<2> > tmp_47_reg_2101;
    sc_signal< sc_lv<2> > tmp_48_fu_1172_p4;
    sc_signal< sc_lv<2> > tmp_48_reg_2106;
    sc_signal< sc_lv<2> > tmp_49_fu_1182_p4;
    sc_signal< sc_lv<2> > tmp_49_reg_2111;
    sc_signal< sc_lv<2> > tmp_50_fu_1192_p4;
    sc_signal< sc_lv<2> > tmp_50_reg_2116;
    sc_signal< sc_lv<2> > tmp_51_fu_1202_p4;
    sc_signal< sc_lv<2> > tmp_51_reg_2121;
    sc_signal< sc_lv<2> > tmp_52_fu_1212_p4;
    sc_signal< sc_lv<2> > tmp_52_reg_2126;
    sc_signal< sc_lv<2> > tmp_53_fu_1222_p4;
    sc_signal< sc_lv<2> > tmp_53_reg_2131;
    sc_signal< sc_lv<2> > tmp_54_fu_1232_p4;
    sc_signal< sc_lv<2> > tmp_54_reg_2136;
    sc_signal< sc_lv<2> > tmp_55_fu_1242_p4;
    sc_signal< sc_lv<2> > tmp_55_reg_2141;
    sc_signal< sc_lv<2> > tmp_56_fu_1252_p4;
    sc_signal< sc_lv<2> > tmp_56_reg_2146;
    sc_signal< sc_lv<2> > tmp_57_fu_1262_p4;
    sc_signal< sc_lv<2> > tmp_57_reg_2151;
    sc_signal< sc_lv<2> > tmp_58_fu_1272_p4;
    sc_signal< sc_lv<2> > tmp_58_reg_2156;
    sc_signal< sc_lv<2> > tmp_59_fu_1282_p4;
    sc_signal< sc_lv<2> > tmp_59_reg_2161;
    sc_signal< sc_lv<2> > tmp_60_fu_1292_p4;
    sc_signal< sc_lv<2> > tmp_60_reg_2166;
    sc_signal< sc_lv<59> > tmp_61_reg_2171;
    sc_signal< sc_lv<4> > trunc_ln1_reg_2176;
    sc_signal< sc_lv<4> > add_ln22_2_fu_1528_p2;
    sc_signal< sc_lv<4> > add_ln22_2_reg_2181;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > tmp_68_fu_1594_p4;
    sc_signal< sc_lv<4> > tmp_68_reg_2186;
    sc_signal< sc_lv<7> > add_ln26_2_fu_1736_p2;
    sc_signal< sc_lv<7> > add_ln26_2_reg_2191;
    sc_signal< sc_lv<9> > dist_fu_1767_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > k_fu_1783_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > select_ln45_fu_1804_p3;
    sc_signal< sc_lv<1> > icmp_ln43_fu_1777_p2;
    sc_signal< sc_lv<32> > select_ln45_1_fu_1812_p3;
    sc_signal< sc_lv<1> > write_flag_fu_1829_p6;
    sc_signal< sc_lv<1> > icmp_ln53_fu_1820_p2;
    sc_signal< sc_lv<1> > write_flag7_fu_1843_p6;
    sc_signal< sc_lv<1> > write_flag4_fu_1857_p6;
    sc_signal< sc_lv<9> > dists_0_0_reg_328;
    sc_signal< sc_lv<3> > i_0_reg_340;
    sc_signal< sc_lv<32> > max_dist_0_reg_351;
    sc_signal< sc_lv<32> > max_dist_id_0_reg_362;
    sc_signal< sc_lv<2> > max_dist_id_reg_373;
    sc_signal< sc_lv<1> > write_flag4_1_reg_384;
    sc_signal< sc_lv<2> > trunc_ln55_fu_1825_p1;
    sc_signal< sc_lv<1> > write_flag7_1_reg_399;
    sc_signal< sc_lv<1> > write_flag_1_reg_414;
    sc_signal< sc_lv<32> > phi_ln59_reg_429;
    sc_signal< sc_lv<32> > phi_ln59_1_reg_442;
    sc_signal< sc_lv<32> > phi_ln59_2_reg_455;
    sc_signal< sc_lv<64> > zext_ln35_2_fu_497_p1;
    sc_signal< sc_lv<64> > zext_ln35_3_fu_507_p1;
    sc_signal< sc_lv<13> > zext_ln35_1_fu_488_p1;
    sc_signal< sc_lv<13> > add_ln35_fu_492_p2;
    sc_signal< sc_lv<17> > zext_ln35_fu_484_p1;
    sc_signal< sc_lv<17> > add_ln35_1_fu_502_p2;
    sc_signal< sc_lv<64> > diff_fu_516_p2;
    sc_signal< sc_lv<1> > tmp_fu_522_p3;
    sc_signal< sc_lv<1> > tmp_1_fu_530_p3;
    sc_signal< sc_lv<1> > tmp_2_fu_538_p3;
    sc_signal< sc_lv<1> > tmp_3_fu_546_p3;
    sc_signal< sc_lv<1> > tmp_4_fu_554_p3;
    sc_signal< sc_lv<1> > tmp_5_fu_562_p3;
    sc_signal< sc_lv<1> > tmp_6_fu_570_p3;
    sc_signal< sc_lv<1> > tmp_7_fu_578_p3;
    sc_signal< sc_lv<1> > tmp_8_fu_586_p3;
    sc_signal< sc_lv<1> > tmp_9_fu_594_p3;
    sc_signal< sc_lv<1> > tmp_10_fu_602_p3;
    sc_signal< sc_lv<1> > tmp_11_fu_610_p3;
    sc_signal< sc_lv<1> > tmp_12_fu_618_p3;
    sc_signal< sc_lv<1> > tmp_13_fu_626_p3;
    sc_signal< sc_lv<1> > tmp_14_fu_634_p3;
    sc_signal< sc_lv<1> > tmp_15_fu_642_p3;
    sc_signal< sc_lv<1> > tmp_16_fu_650_p3;
    sc_signal< sc_lv<1> > tmp_17_fu_658_p3;
    sc_signal< sc_lv<1> > tmp_18_fu_666_p3;
    sc_signal< sc_lv<1> > tmp_19_fu_674_p3;
    sc_signal< sc_lv<1> > tmp_20_fu_682_p3;
    sc_signal< sc_lv<1> > tmp_21_fu_690_p3;
    sc_signal< sc_lv<1> > tmp_22_fu_698_p3;
    sc_signal< sc_lv<1> > tmp_23_fu_706_p3;
    sc_signal< sc_lv<1> > tmp_24_fu_714_p3;
    sc_signal< sc_lv<1> > tmp_25_fu_722_p3;
    sc_signal< sc_lv<1> > tmp_26_fu_730_p3;
    sc_signal< sc_lv<1> > tmp_27_fu_738_p3;
    sc_signal< sc_lv<1> > tmp_28_fu_746_p3;
    sc_signal< sc_lv<1> > tmp_29_fu_754_p3;
    sc_signal< sc_lv<1> > tmp_30_fu_762_p3;
    sc_signal< sc_lv<1> > tmp_31_fu_770_p3;
    sc_signal< sc_lv<63> > and_ln_fu_778_p64;
    sc_signal< sc_lv<64> > zext_ln20_fu_908_p1;
    sc_signal< sc_lv<64> > sub_ln20_fu_912_p2;
    sc_signal< sc_lv<2> > tmp_s_fu_922_p4;
    sc_signal< sc_lv<62> > and_ln1_fu_1072_p32;
    sc_signal< sc_lv<2> > tmp_46_fu_1152_p4;
    sc_signal< sc_lv<62> > and_ln21_1_fu_1302_p32;
    sc_signal< sc_lv<63> > zext_ln21_fu_1138_p1;
    sc_signal< sc_lv<63> > zext_ln21_1_fu_1368_p1;
    sc_signal< sc_lv<63> > add_ln21_1_fu_1378_p2;
    sc_signal< sc_lv<62> > add_ln21_fu_1372_p2;
    sc_signal< sc_lv<60> > trunc_ln21_3_fu_1410_p31;
    sc_signal< sc_lv<60> > trunc_ln21_4_fu_1459_p31;
    sc_signal< sc_lv<60> > add_ln22_fu_1508_p2;
    sc_signal< sc_lv<60> > zext_ln22_3_fu_1514_p1;
    sc_signal< sc_lv<4> > zext_ln22_1_fu_1407_p1;
    sc_signal< sc_lv<4> > add_ln22_3_fu_1523_p2;
    sc_signal< sc_lv<4> > zext_ln22_fu_1404_p1;
    sc_signal< sc_lv<60> > add_ln22_1_fu_1517_p2;
    sc_signal< sc_lv<4> > tmp_62_fu_1534_p4;
    sc_signal< sc_lv<4> > tmp_63_fu_1544_p4;
    sc_signal< sc_lv<4> > tmp_64_fu_1554_p4;
    sc_signal< sc_lv<4> > tmp_65_fu_1564_p4;
    sc_signal< sc_lv<4> > tmp_66_fu_1574_p4;
    sc_signal< sc_lv<4> > tmp_67_fu_1584_p4;
    sc_signal< sc_lv<4> > trunc_ln22_fu_1604_p1;
    sc_signal< sc_lv<60> > x_assign_3_fu_1608_p16;
    sc_signal< sc_lv<52> > lshr_ln_fu_1646_p14;
    sc_signal< sc_lv<60> > zext_ln23_1_fu_1676_p1;
    sc_signal< sc_lv<61> > zext_ln22_2_fu_1642_p1;
    sc_signal< sc_lv<61> > zext_ln23_fu_1680_p1;
    sc_signal< sc_lv<61> > add_ln23_1_fu_1690_p2;
    sc_signal< sc_lv<45> > lshr_ln1_fu_1696_p4;
    sc_signal< sc_lv<60> > add_ln23_fu_1684_p2;
    sc_signal< sc_lv<61> > zext_ln24_fu_1706_p1;
    sc_signal< sc_lv<61> > add_ln24_fu_1720_p2;
    sc_signal< sc_lv<7> > trunc_ln26_1_fu_1710_p4;
    sc_signal< sc_lv<7> > trunc_ln26_2_fu_1726_p4;
    sc_signal< sc_lv<7> > trunc_ln2_fu_1745_p3;
    sc_signal< sc_lv<7> > zext_ln26_fu_1742_p1;
    sc_signal< sc_lv<7> > add_ln26_1_fu_1752_p2;
    sc_signal< sc_lv<7> > add_ln26_fu_1758_p2;
    sc_signal< sc_lv<9> > zext_ln26_1_fu_1763_p1;
    sc_signal< sc_lv<32> > max_dist_fu_1789_p5;
    sc_signal< sc_lv<1> > icmp_ln45_fu_1798_p2;
    sc_signal< sc_lv<32> > zext_ln48_fu_1773_p1;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > select_ln59_fu_1871_p3;
    sc_signal< sc_lv<32> > select_ln59_1_fu_1877_p3;
    sc_signal< sc_lv<32> > select_ln59_2_fu_1883_p3;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<32> > ap_return_2_preg;
    sc_signal< sc_lv<32> > ap_return_3_preg;
    sc_signal< sc_lv<32> > ap_return_4_preg;
    sc_signal< sc_lv<32> > ap_return_5_preg;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_39;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_35;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_2D;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<32> ap_const_lv32_3A;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln21_1_fu_1378_p2();
    void thread_add_ln21_fu_1372_p2();
    void thread_add_ln22_1_fu_1517_p2();
    void thread_add_ln22_2_fu_1528_p2();
    void thread_add_ln22_3_fu_1523_p2();
    void thread_add_ln22_fu_1508_p2();
    void thread_add_ln23_1_fu_1690_p2();
    void thread_add_ln23_fu_1684_p2();
    void thread_add_ln24_fu_1720_p2();
    void thread_add_ln26_1_fu_1752_p2();
    void thread_add_ln26_2_fu_1736_p2();
    void thread_add_ln26_fu_1758_p2();
    void thread_add_ln35_1_fu_502_p2();
    void thread_add_ln35_fu_492_p2();
    void thread_and_ln1_fu_1072_p32();
    void thread_and_ln21_1_fu_1302_p32();
    void thread_and_ln_fu_778_p64();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_diff_fu_516_p2();
    void thread_dist_fu_1767_p2();
    void thread_i_fu_478_p2();
    void thread_icmp_ln33_fu_472_p2();
    void thread_icmp_ln43_fu_1777_p2();
    void thread_icmp_ln45_fu_1798_p2();
    void thread_icmp_ln53_fu_1820_p2();
    void thread_k_fu_1783_p2();
    void thread_label_cast_fu_468_p1();
    void thread_lshr_ln1_fu_1696_p4();
    void thread_lshr_ln_fu_1646_p14();
    void thread_select_ln45_1_fu_1812_p3();
    void thread_select_ln45_fu_1804_p3();
    void thread_select_ln59_1_fu_1877_p3();
    void thread_select_ln59_2_fu_1883_p3();
    void thread_select_ln59_fu_1871_p3();
    void thread_sub_ln20_fu_912_p2();
    void thread_test_inst_address0();
    void thread_test_inst_ce0();
    void thread_tmp_10_fu_602_p3();
    void thread_tmp_11_fu_610_p3();
    void thread_tmp_12_fu_618_p3();
    void thread_tmp_13_fu_626_p3();
    void thread_tmp_14_fu_634_p3();
    void thread_tmp_15_fu_642_p3();
    void thread_tmp_16_fu_650_p3();
    void thread_tmp_17_fu_658_p3();
    void thread_tmp_18_fu_666_p3();
    void thread_tmp_19_fu_674_p3();
    void thread_tmp_1_fu_530_p3();
    void thread_tmp_20_fu_682_p3();
    void thread_tmp_21_fu_690_p3();
    void thread_tmp_22_fu_698_p3();
    void thread_tmp_23_fu_706_p3();
    void thread_tmp_24_fu_714_p3();
    void thread_tmp_25_fu_722_p3();
    void thread_tmp_26_fu_730_p3();
    void thread_tmp_27_fu_738_p3();
    void thread_tmp_28_fu_746_p3();
    void thread_tmp_29_fu_754_p3();
    void thread_tmp_2_fu_538_p3();
    void thread_tmp_30_fu_762_p3();
    void thread_tmp_31_fu_770_p3();
    void thread_tmp_32_fu_932_p4();
    void thread_tmp_33_fu_942_p4();
    void thread_tmp_34_fu_952_p4();
    void thread_tmp_35_fu_962_p4();
    void thread_tmp_36_fu_972_p4();
    void thread_tmp_37_fu_982_p4();
    void thread_tmp_38_fu_992_p4();
    void thread_tmp_39_fu_1002_p4();
    void thread_tmp_3_fu_546_p3();
    void thread_tmp_40_fu_1012_p4();
    void thread_tmp_41_fu_1022_p4();
    void thread_tmp_42_fu_1032_p4();
    void thread_tmp_43_fu_1042_p4();
    void thread_tmp_44_fu_1052_p4();
    void thread_tmp_45_fu_1062_p4();
    void thread_tmp_46_fu_1152_p4();
    void thread_tmp_47_fu_1162_p4();
    void thread_tmp_48_fu_1172_p4();
    void thread_tmp_49_fu_1182_p4();
    void thread_tmp_4_fu_554_p3();
    void thread_tmp_50_fu_1192_p4();
    void thread_tmp_51_fu_1202_p4();
    void thread_tmp_52_fu_1212_p4();
    void thread_tmp_53_fu_1222_p4();
    void thread_tmp_54_fu_1232_p4();
    void thread_tmp_55_fu_1242_p4();
    void thread_tmp_56_fu_1252_p4();
    void thread_tmp_57_fu_1262_p4();
    void thread_tmp_58_fu_1272_p4();
    void thread_tmp_59_fu_1282_p4();
    void thread_tmp_5_fu_562_p3();
    void thread_tmp_60_fu_1292_p4();
    void thread_tmp_62_fu_1534_p4();
    void thread_tmp_63_fu_1544_p4();
    void thread_tmp_64_fu_1554_p4();
    void thread_tmp_65_fu_1564_p4();
    void thread_tmp_66_fu_1574_p4();
    void thread_tmp_67_fu_1584_p4();
    void thread_tmp_68_fu_1594_p4();
    void thread_tmp_6_fu_570_p3();
    void thread_tmp_7_fu_578_p3();
    void thread_tmp_8_fu_586_p3();
    void thread_tmp_9_fu_594_p3();
    void thread_tmp_fu_522_p3();
    void thread_tmp_s_fu_922_p4();
    void thread_train_inst_address0();
    void thread_train_inst_ce0();
    void thread_trunc_ln21_2_fu_1142_p4();
    void thread_trunc_ln21_3_fu_1410_p31();
    void thread_trunc_ln21_4_fu_1459_p31();
    void thread_trunc_ln21_fu_918_p1();
    void thread_trunc_ln22_fu_1604_p1();
    void thread_trunc_ln26_1_fu_1710_p4();
    void thread_trunc_ln26_2_fu_1726_p4();
    void thread_trunc_ln2_fu_1745_p3();
    void thread_trunc_ln55_fu_1825_p1();
    void thread_x_assign_3_fu_1608_p16();
    void thread_zext_ln20_fu_908_p1();
    void thread_zext_ln21_1_fu_1368_p1();
    void thread_zext_ln21_fu_1138_p1();
    void thread_zext_ln22_1_fu_1407_p1();
    void thread_zext_ln22_2_fu_1642_p1();
    void thread_zext_ln22_3_fu_1514_p1();
    void thread_zext_ln22_fu_1404_p1();
    void thread_zext_ln23_1_fu_1676_p1();
    void thread_zext_ln23_fu_1680_p1();
    void thread_zext_ln24_fu_1706_p1();
    void thread_zext_ln26_1_fu_1763_p1();
    void thread_zext_ln26_fu_1742_p1();
    void thread_zext_ln33_fu_512_p1();
    void thread_zext_ln35_1_fu_488_p1();
    void thread_zext_ln35_2_fu_497_p1();
    void thread_zext_ln35_3_fu_507_p1();
    void thread_zext_ln35_fu_484_p1();
    void thread_zext_ln48_fu_1773_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
