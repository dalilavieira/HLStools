// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "foo.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic foo::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<32> foo::ap_const_lv32_1 = "1";
const sc_lv<32> foo::ap_const_lv32_1F = "11111";
const sc_lv<31> foo::ap_const_lv31_0 = "0000000000000000000000000000000";
const sc_lv<32> foo::ap_const_lv32_11 = "10001";
const sc_lv<32> foo::ap_const_lv32_D = "1101";
const sc_logic foo::ap_const_logic_0 = sc_dt::Log_0;
const bool foo::ap_const_boolean_1 = true;

foo::foo(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_start );
    sensitive << ( icmp_ln15_fu_40_p2 );

    SC_METHOD(thread_icmp_ln15_fu_40_p2);
    sensitive << ( ap_start );
    sensitive << ( tmp_fu_30_p4 );

    SC_METHOD(thread_tmp_fu_30_p4);
    sensitive << ( t );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "foo_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, t, "(port)t");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, tmp_fu_30_p4, "tmp_fu_30_p4");
    sc_trace(mVcdFile, icmp_ln15_fu_40_p2, "icmp_ln15_fu_40_p2");
#endif

    }
    mHdltvinHandle.open("foo.hdltvin.dat");
    mHdltvoutHandle.open("foo.hdltvout.dat");
}

foo::~foo() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void foo::thread_ap_done() {
    ap_done = ap_start.read();
}

void foo::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void foo::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void foo::thread_ap_return() {
    ap_return = (!icmp_ln15_fu_40_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln15_fu_40_p2.read()[0].to_bool())? ap_const_lv32_11: ap_const_lv32_D);
}

void foo::thread_icmp_ln15_fu_40_p2() {
    icmp_ln15_fu_40_p2 = (!tmp_fu_30_p4.read().is_01() || !ap_const_lv31_0.is_01())? sc_lv<1>(): (sc_bigint<31>(tmp_fu_30_p4.read()) > sc_bigint<31>(ap_const_lv31_0));
}

void foo::thread_tmp_fu_30_p4() {
    tmp_fu_30_p4 = t.read().range(31, 1);
}

void foo::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"t\" :  \"" << t.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

