// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mmc_HH_
#define _mmc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct mmc : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > a;
    sc_in< sc_lv<32> > b;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    mmc(sc_module_name name);
    SC_HAS_PROCESS(mmc);

    ~mmc();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > F1_1_fu_66_p3;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln7_fu_44_p2;
    sc_signal< sc_lv<32> > F2_1_fu_74_p3;
    sc_signal< sc_lv<32> > F1_0_reg_26;
    sc_signal< sc_lv<32> > F2_0_reg_35;
    sc_signal< sc_lv<1> > icmp_ln8_fu_50_p2;
    sc_signal< sc_lv<32> > F1_fu_61_p2;
    sc_signal< sc_lv<32> > F2_fu_56_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_F1_1_fu_66_p3();
    void thread_F1_fu_61_p2();
    void thread_F2_1_fu_74_p3();
    void thread_F2_fu_56_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_icmp_ln7_fu_44_p2();
    void thread_icmp_ln8_fu_50_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif