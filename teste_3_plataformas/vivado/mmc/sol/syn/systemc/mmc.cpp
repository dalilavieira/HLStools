// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "mmc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic mmc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic mmc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> mmc::ap_ST_fsm_state1 = "1";
const sc_lv<2> mmc::ap_ST_fsm_state2 = "10";
const sc_lv<32> mmc::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> mmc::ap_const_lv32_1 = "1";
const sc_lv<1> mmc::ap_const_lv1_0 = "0";
const sc_lv<1> mmc::ap_const_lv1_1 = "1";
const bool mmc::ap_const_boolean_1 = true;

mmc::mmc(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_F1_1_fu_66_p3);
    sensitive << ( F1_0_reg_26 );
    sensitive << ( icmp_ln8_fu_50_p2 );
    sensitive << ( F1_fu_61_p2 );

    SC_METHOD(thread_F1_fu_61_p2);
    sensitive << ( a );
    sensitive << ( F1_0_reg_26 );

    SC_METHOD(thread_F2_1_fu_74_p3);
    sensitive << ( F2_0_reg_35 );
    sensitive << ( icmp_ln8_fu_50_p2 );
    sensitive << ( F2_fu_56_p2 );

    SC_METHOD(thread_F2_fu_56_p2);
    sensitive << ( b );
    sensitive << ( F2_0_reg_35 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_44_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_44_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_44_p2 );
    sensitive << ( F1_0_reg_26 );

    SC_METHOD(thread_icmp_ln7_fu_44_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( F1_0_reg_26 );
    sensitive << ( F2_0_reg_35 );

    SC_METHOD(thread_icmp_ln8_fu_50_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_44_p2 );
    sensitive << ( F1_0_reg_26 );
    sensitive << ( F2_0_reg_35 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_44_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "mmc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, b, "(port)b");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, F1_1_fu_66_p3, "F1_1_fu_66_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln7_fu_44_p2, "icmp_ln7_fu_44_p2");
    sc_trace(mVcdFile, F2_1_fu_74_p3, "F2_1_fu_74_p3");
    sc_trace(mVcdFile, F1_0_reg_26, "F1_0_reg_26");
    sc_trace(mVcdFile, F2_0_reg_35, "F2_0_reg_35");
    sc_trace(mVcdFile, icmp_ln8_fu_50_p2, "icmp_ln8_fu_50_p2");
    sc_trace(mVcdFile, F1_fu_61_p2, "F1_fu_61_p2");
    sc_trace(mVcdFile, F2_fu_56_p2, "F2_fu_56_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("mmc.hdltvin.dat");
    mHdltvoutHandle.open("mmc.hdltvout.dat");
}

mmc::~mmc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void mmc::thread_ap_clk_no_reset_() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_44_p2.read(), ap_const_lv1_0))) {
        F1_0_reg_26 = F1_1_fu_66_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        F1_0_reg_26 = a.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_44_p2.read(), ap_const_lv1_0))) {
        F2_0_reg_35 = F2_1_fu_74_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        F2_0_reg_35 = b.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
}

void mmc::thread_F1_1_fu_66_p3() {
    F1_1_fu_66_p3 = (!icmp_ln8_fu_50_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln8_fu_50_p2.read()[0].to_bool())? F1_0_reg_26.read(): F1_fu_61_p2.read());
}

void mmc::thread_F1_fu_61_p2() {
    F1_fu_61_p2 = (!F1_0_reg_26.read().is_01() || !a.read().is_01())? sc_lv<32>(): (sc_biguint<32>(F1_0_reg_26.read()) + sc_biguint<32>(a.read()));
}

void mmc::thread_F2_1_fu_74_p3() {
    F2_1_fu_74_p3 = (!icmp_ln8_fu_50_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln8_fu_50_p2.read()[0].to_bool())? F2_fu_56_p2.read(): F2_0_reg_35.read());
}

void mmc::thread_F2_fu_56_p2() {
    F2_fu_56_p2 = (!F2_0_reg_35.read().is_01() || !b.read().is_01())? sc_lv<32>(): (sc_biguint<32>(F2_0_reg_35.read()) + sc_biguint<32>(b.read()));
}

void mmc::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void mmc::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void mmc::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_44_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void mmc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void mmc::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_44_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void mmc::thread_ap_return() {
    ap_return = F1_0_reg_26.read();
}

void mmc::thread_icmp_ln7_fu_44_p2() {
    icmp_ln7_fu_44_p2 = (!F1_0_reg_26.read().is_01() || !F2_0_reg_35.read().is_01())? sc_lv<1>(): sc_lv<1>(F1_0_reg_26.read() == F2_0_reg_35.read());
}

void mmc::thread_icmp_ln8_fu_50_p2() {
    icmp_ln8_fu_50_p2 = (!F1_0_reg_26.read().is_01() || !F2_0_reg_35.read().is_01())? sc_lv<1>(): (sc_bigint<32>(F1_0_reg_26.read()) > sc_bigint<32>(F2_0_reg_35.read()));
}

void mmc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln7_fu_44_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void mmc::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a\" :  \"" << a.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b\" :  \"" << b.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

