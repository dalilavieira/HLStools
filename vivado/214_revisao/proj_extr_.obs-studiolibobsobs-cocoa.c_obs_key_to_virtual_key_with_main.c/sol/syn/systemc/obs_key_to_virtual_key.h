// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _obs_key_to_virtual_key_HH_
#define _obs_key_to_virtual_key_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct obs_key_to_virtual_key : public sc_module {
    // Port declarations 6
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > code;
    sc_out< sc_lv<32> > ap_return;
    // Port declarations for the virtual clock. 
    sc_in_clk ap_virtual_clock;


    // Module declarations
    obs_key_to_virtual_key(sc_module_name name);
    SC_HAS_PROCESS(obs_key_to_virtual_key);

    ~obs_key_to_virtual_key();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
