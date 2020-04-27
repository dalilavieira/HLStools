// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _poly5_HH_
#define _poly5_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "poly5_mac_muladd_16s_16s_17ns_32_1_1.h"
#include "poly5_mac_muladd_16s_8ns_15s_23_1_1.h"
#include "poly5_mac_muladd_16s_23s_32s_32_1_1.h"
#include "poly5_am_addmul_24s_22s_16s_32_1_1.h"
#include "poly5_ama_addmuladd_16s_9s_16s_13ns_32_1_1.h"
#include "poly5_mac_mulsub_16s_18s_32s_32_1_1.h"
#include "poly5_mul_mul_16s_16s_32_1_1.h"

namespace ap_rtl {

struct poly5 : public sc_module {
    // Port declarations 24
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<7> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_in< sc_lv<16> > a_q0;
    sc_out< sc_lv<7> > a_address1;
    sc_out< sc_logic > a_ce1;
    sc_in< sc_lv<16> > a_q1;
    sc_out< sc_lv<7> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<16> > b_q0;
    sc_out< sc_lv<7> > c_address0;
    sc_out< sc_logic > c_ce0;
    sc_in< sc_lv<16> > c_q0;
    sc_out< sc_lv<7> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<32> > out_r_d0;
    sc_in< sc_lv<32> > out_r_q0;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    poly5(sc_module_name name);
    SC_HAS_PROCESS(poly5);

    ~poly5();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    poly5_mac_muladd_16s_16s_17ns_32_1_1<1,1,16,16,17,32>* poly5_mac_muladd_16s_16s_17ns_32_1_1_U1;
    poly5_mac_muladd_16s_8ns_15s_23_1_1<1,1,16,8,15,23>* poly5_mac_muladd_16s_8ns_15s_23_1_1_U2;
    poly5_mac_muladd_16s_23s_32s_32_1_1<1,1,16,23,32,32>* poly5_mac_muladd_16s_23s_32s_32_1_1_U3;
    poly5_am_addmul_24s_22s_16s_32_1_1<1,1,24,22,16,32>* poly5_am_addmul_24s_22s_16s_32_1_1_U4;
    poly5_ama_addmuladd_16s_9s_16s_13ns_32_1_1<1,1,16,9,16,13,32>* poly5_ama_addmuladd_16s_9s_16s_13ns_32_1_1_U5;
    poly5_mac_mulsub_16s_18s_32s_32_1_1<1,1,16,18,32,32>* poly5_mac_mulsub_16s_18s_32s_32_1_1_U6;
    poly5_mul_mul_16s_16s_32_1_1<1,1,16,16,32>* poly5_mul_mul_16s_16s_32_1_1_U7;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > i_fu_158_p2;
    sc_signal< sc_lv<7> > i_reg_388;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > k_fu_174_p2;
    sc_signal< sc_lv<7> > k_reg_396;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > zext_ln13_fu_180_p1;
    sc_signal< sc_lv<64> > zext_ln13_reg_401;
    sc_signal< sc_lv<1> > icmp_ln12_fu_168_p2;
    sc_signal< sc_lv<32> > add_ln13_2_fu_215_p2;
    sc_signal< sc_lv<32> > add_ln13_2_reg_426;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > sext_ln13_3_fu_221_p1;
    sc_signal< sc_lv<32> > sext_ln13_3_reg_431;
    sc_signal< sc_lv<32> > grp_fu_340_p3;
    sc_signal< sc_lv<32> > add_ln13_5_reg_436;
    sc_signal< sc_lv<16> > c_load_reg_441;
    sc_signal< sc_lv<32> > grp_fu_366_p3;
    sc_signal< sc_lv<32> > sub_ln13_1_reg_446;
    sc_signal< sc_lv<7> > i_0_reg_130;
    sc_signal< sc_lv<7> > k_0_reg_141;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln10_fu_152_p2;
    sc_signal< sc_lv<64> > sext_ln13_1_fu_193_p1;
    sc_signal< sc_lv<10> > zext_ln12_fu_164_p1;
    sc_signal< sc_lv<10> > add_ln13_fu_187_p2;
    sc_signal< sc_lv<16> > sext_ln13_fu_198_p0;
    sc_signal< sc_lv<16> > mul_ln13_1_fu_210_p0;
    sc_signal< sc_lv<32> > sext_ln13_fu_198_p1;
    sc_signal< sc_lv<32> > grp_fu_322_p3;
    sc_signal< sc_lv<32> > mul_ln13_1_fu_210_p2;
    sc_signal< sc_lv<23> > grp_fu_331_p3;
    sc_signal< sc_lv<16> > shl_ln_fu_232_p1;
    sc_signal< sc_lv<24> > shl_ln_fu_232_p3;
    sc_signal< sc_lv<16> > shl_ln13_1_fu_244_p1;
    sc_signal< sc_lv<21> > shl_ln13_1_fu_244_p3;
    sc_signal< sc_lv<22> > sext_ln13_9_fu_252_p1;
    sc_signal< sc_lv<22> > add_ln13_8_fu_256_p2;
    sc_signal< sc_lv<16> > sext_ln13_12_fu_266_p0;
    sc_signal< sc_lv<16> > shl_ln13_2_fu_270_p1;
    sc_signal< sc_lv<17> > shl_ln13_2_fu_270_p3;
    sc_signal< sc_lv<18> > sext_ln13_14_fu_278_p1;
    sc_signal< sc_lv<18> > add_ln13_7_fu_282_p2;
    sc_signal< sc_lv<18> > sext_ln13_12_fu_266_p1;
    sc_signal< sc_lv<18> > sub_ln13_fu_288_p2;
    sc_signal< sc_lv<16> > mul_ln13_8_fu_305_p0;
    sc_signal< sc_lv<32> > sext_ln13_4_fu_302_p1;
    sc_signal< sc_lv<32> > mul_ln13_8_fu_305_p2;
    sc_signal< sc_lv<32> > mul_ln13_5_fu_298_p2;
    sc_signal< sc_lv<32> > tmp_fu_310_p2;
    sc_signal< sc_lv<32> > mul_ln13_9_fu_374_p2;
    sc_signal< sc_lv<16> > grp_fu_322_p1;
    sc_signal< sc_lv<17> > grp_fu_322_p2;
    sc_signal< sc_lv<8> > grp_fu_331_p1;
    sc_signal< sc_lv<15> > grp_fu_331_p2;
    sc_signal< sc_lv<16> > grp_fu_340_p0;
    sc_signal< sc_lv<32> > grp_fu_347_p3;
    sc_signal< sc_lv<16> > grp_fu_347_p2;
    sc_signal< sc_lv<9> > grp_fu_356_p1;
    sc_signal< sc_lv<16> > grp_fu_356_p2;
    sc_signal< sc_lv<13> > grp_fu_356_p3;
    sc_signal< sc_lv<16> > grp_fu_366_p0;
    sc_signal< sc_lv<32> > grp_fu_356_p4;
    sc_signal< sc_lv<16> > mul_ln13_9_fu_374_p0;
    sc_signal< sc_lv<16> > mul_ln13_9_fu_374_p1;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<10> ap_const_lv10_250;
    static const sc_lv<32> ap_const_lv32_FFD27000;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<22> ap_const_lv22_3FEBC0;
    static const sc_lv<18> ap_const_lv18_90;
    static const sc_lv<32> ap_const_lv32_F300;
    static const sc_lv<23> ap_const_lv23_4E;
    static const sc_lv<23> ap_const_lv23_7FDAE0;
    static const sc_lv<17> ap_const_lv17_1FF31;
    static const sc_lv<32> ap_const_lv32_D80;
    static const sc_lv<32> ap_const_lv32_5;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_address1();
    void thread_a_ce0();
    void thread_a_ce1();
    void thread_add_ln13_2_fu_215_p2();
    void thread_add_ln13_7_fu_282_p2();
    void thread_add_ln13_8_fu_256_p2();
    void thread_add_ln13_fu_187_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_b_address0();
    void thread_b_ce0();
    void thread_c_address0();
    void thread_c_ce0();
    void thread_grp_fu_322_p1();
    void thread_grp_fu_322_p2();
    void thread_grp_fu_331_p1();
    void thread_grp_fu_331_p2();
    void thread_grp_fu_340_p0();
    void thread_grp_fu_347_p2();
    void thread_grp_fu_356_p1();
    void thread_grp_fu_356_p2();
    void thread_grp_fu_356_p3();
    void thread_grp_fu_366_p0();
    void thread_i_fu_158_p2();
    void thread_icmp_ln10_fu_152_p2();
    void thread_icmp_ln12_fu_168_p2();
    void thread_k_fu_174_p2();
    void thread_mul_ln13_1_fu_210_p0();
    void thread_mul_ln13_1_fu_210_p2();
    void thread_mul_ln13_5_fu_298_p2();
    void thread_mul_ln13_8_fu_305_p0();
    void thread_mul_ln13_8_fu_305_p2();
    void thread_mul_ln13_9_fu_374_p0();
    void thread_mul_ln13_9_fu_374_p1();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_sext_ln13_12_fu_266_p0();
    void thread_sext_ln13_12_fu_266_p1();
    void thread_sext_ln13_14_fu_278_p1();
    void thread_sext_ln13_1_fu_193_p1();
    void thread_sext_ln13_3_fu_221_p1();
    void thread_sext_ln13_4_fu_302_p1();
    void thread_sext_ln13_9_fu_252_p1();
    void thread_sext_ln13_fu_198_p0();
    void thread_sext_ln13_fu_198_p1();
    void thread_shl_ln13_1_fu_244_p1();
    void thread_shl_ln13_1_fu_244_p3();
    void thread_shl_ln13_2_fu_270_p1();
    void thread_shl_ln13_2_fu_270_p3();
    void thread_shl_ln_fu_232_p1();
    void thread_shl_ln_fu_232_p3();
    void thread_sub_ln13_fu_288_p2();
    void thread_tmp_fu_310_p2();
    void thread_zext_ln12_fu_164_p1();
    void thread_zext_ln13_fu_180_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
