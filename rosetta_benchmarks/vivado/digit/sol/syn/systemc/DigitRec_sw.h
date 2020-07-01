// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _DigitRec_sw_HH_
#define _DigitRec_sw_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "update_knn.h"
#include "DigitRec_sw_mux_42_32_1_1.h"
#include "DigitRec_sw_mux_32_32_1_1.h"
#include "DigitRec_sw_votes.h"

namespace ap_rtl {

struct DigitRec_sw : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<17> > training_set_address0;
    sc_out< sc_logic > training_set_ce0;
    sc_in< sc_lv<64> > training_set_q0;
    sc_out< sc_lv<13> > test_set_address0;
    sc_out< sc_logic > test_set_ce0;
    sc_in< sc_lv<64> > test_set_q0;
    sc_out< sc_lv<11> > results_address0;
    sc_out< sc_logic > results_ce0;
    sc_out< sc_logic > results_we0;
    sc_out< sc_lv<8> > results_d0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    DigitRec_sw(sc_module_name name);
    SC_HAS_PROCESS(DigitRec_sw);

    ~DigitRec_sw();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    DigitRec_sw_votes* votes_U;
    update_knn* grp_update_knn_fu_454;
    DigitRec_sw_mux_42_32_1_1<1,1,32,32,32,32,2,32>* DigitRec_sw_mux_42_32_1_1_U23;
    DigitRec_sw_mux_42_32_1_1<1,1,32,32,32,32,2,32>* DigitRec_sw_mux_42_32_1_1_U24;
    DigitRec_sw_mux_42_32_1_1<1,1,32,32,32,32,2,32>* DigitRec_sw_mux_42_32_1_1_U25;
    DigitRec_sw_mux_42_32_1_1<1,1,32,32,32,32,2,32>* DigitRec_sw_mux_42_32_1_1_U26;
    DigitRec_sw_mux_42_32_1_1<1,1,32,32,32,32,2,32>* DigitRec_sw_mux_42_32_1_1_U27;
    DigitRec_sw_mux_42_32_1_1<1,1,32,32,32,32,2,32>* DigitRec_sw_mux_42_32_1_1_U28;
    DigitRec_sw_mux_32_32_1_1<1,1,32,32,32,2,32>* DigitRec_sw_mux_32_32_1_1_U29;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > t_fu_489_p2;
    sc_signal< sc_lv<11> > t_reg_765;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > i_fu_501_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > dists_0_2_fu_507_p6;
    sc_signal< sc_lv<1> > icmp_ln99_fu_495_p2;
    sc_signal< sc_lv<32> > dists_1_2_fu_521_p6;
    sc_signal< sc_lv<32> > dists_2_2_fu_535_p6;
    sc_signal< sc_lv<32> > labels_0_2_fu_549_p6;
    sc_signal< sc_lv<32> > labels_1_2_fu_563_p6;
    sc_signal< sc_lv<32> > labels_2_2_fu_577_p6;
    sc_signal< sc_lv<13> > shl_ln_fu_591_p3;
    sc_signal< sc_lv<13> > shl_ln_reg_808;
    sc_signal< sc_lv<15> > i_1_fu_605_p2;
    sc_signal< sc_lv<15> > i_1_reg_816;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<17> > shl_ln108_1_fu_611_p3;
    sc_signal< sc_lv<17> > shl_ln108_1_reg_821;
    sc_signal< sc_lv<1> > icmp_ln107_fu_599_p2;
    sc_signal< sc_lv<30> > add_ln108_fu_620_p2;
    sc_signal< sc_lv<30> > add_ln108_reg_826;
    sc_signal< sc_lv<4> > trunc_ln_reg_831;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > grp_update_knn_fu_454_ap_ready;
    sc_signal< sc_logic > grp_update_knn_fu_454_ap_done;
    sc_signal< sc_lv<4> > add_ln67_fu_661_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > i_2_fu_684_p2;
    sc_signal< sc_lv<2> > i_2_reg_877;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > votes_addr_1_reg_882;
    sc_signal< sc_lv<1> > icmp_ln69_fu_678_p2;
    sc_signal< sc_lv<4> > i_3_fu_720_p2;
    sc_signal< sc_lv<4> > i_3_reg_890;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > icmp_ln72_fu_714_p2;
    sc_signal< sc_lv<8> > select_ln74_fu_746_p3;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > select_ln74_1_fu_754_p3;
    sc_signal< sc_lv<4> > votes_address0;
    sc_signal< sc_logic > votes_ce0;
    sc_signal< sc_logic > votes_we0;
    sc_signal< sc_lv<32> > votes_d0;
    sc_signal< sc_lv<32> > votes_q0;
    sc_signal< sc_logic > grp_update_knn_fu_454_ap_start;
    sc_signal< sc_logic > grp_update_knn_fu_454_ap_idle;
    sc_signal< sc_lv<17> > grp_update_knn_fu_454_train_inst_address0;
    sc_signal< sc_logic > grp_update_knn_fu_454_train_inst_ce0;
    sc_signal< sc_lv<13> > grp_update_knn_fu_454_test_inst_address0;
    sc_signal< sc_logic > grp_update_knn_fu_454_test_inst_ce0;
    sc_signal< sc_lv<32> > grp_update_knn_fu_454_ap_return_0;
    sc_signal< sc_lv<32> > grp_update_knn_fu_454_ap_return_1;
    sc_signal< sc_lv<32> > grp_update_knn_fu_454_ap_return_2;
    sc_signal< sc_lv<32> > grp_update_knn_fu_454_ap_return_3;
    sc_signal< sc_lv<32> > grp_update_knn_fu_454_ap_return_4;
    sc_signal< sc_lv<32> > grp_update_knn_fu_454_ap_return_5;
    sc_signal< sc_lv<32> > labels_2_read_assig_reg_301;
    sc_signal< sc_lv<32> > labels_2_0_reg_140;
    sc_signal< sc_lv<32> > labels_1_read_assig_reg_313;
    sc_signal< sc_lv<32> > labels_1_0_reg_152;
    sc_signal< sc_lv<32> > labels_0_read_assig_reg_325;
    sc_signal< sc_lv<32> > labels_0_0_reg_164;
    sc_signal< sc_lv<32> > dists_2_3_reg_337;
    sc_signal< sc_lv<32> > dists_2_0_reg_176;
    sc_signal< sc_lv<32> > dists_1_3_reg_349;
    sc_signal< sc_lv<32> > dists_1_0_reg_188;
    sc_signal< sc_lv<32> > dists_0_3_reg_361;
    sc_signal< sc_lv<32> > dists_0_0_reg_200;
    sc_signal< sc_lv<11> > t_0_reg_212;
    sc_signal< sc_lv<32> > labels_2_112_reg_224;
    sc_signal< sc_lv<1> > icmp_ln96_fu_483_p2;
    sc_signal< sc_lv<32> > labels_1_111_reg_235;
    sc_signal< sc_lv<32> > labels_0_110_reg_246;
    sc_signal< sc_lv<32> > dists_2_1_reg_257;
    sc_signal< sc_lv<32> > dists_1_1_reg_268;
    sc_signal< sc_lv<32> > dists_0_1_reg_279;
    sc_signal< sc_lv<2> > i_0_reg_290;
    sc_signal< sc_lv<15> > i1_0_reg_373;
    sc_signal< sc_lv<30> > phi_mul_reg_384;
    sc_signal< sc_lv<4> > phi_ln67_i_reg_395;
    sc_signal< sc_lv<1> > icmp_ln67_fu_672_p2;
    sc_signal< sc_lv<2> > i_0_i_reg_406;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > max_vote_reg_417;
    sc_signal< sc_lv<32> > max_vote_0_i_reg_430;
    sc_signal< sc_lv<4> > i1_0_i_reg_442;
    sc_signal< sc_logic > grp_update_knn_fu_454_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln67_fu_667_p1;
    sc_signal< sc_lv<64> > sext_ln70_fu_702_p1;
    sc_signal< sc_lv<64> > zext_ln74_fu_726_p1;
    sc_signal< sc_lv<64> > zext_ln112_fu_731_p1;
    sc_signal< sc_lv<32> > add_ln70_fu_707_p2;
    sc_signal< sc_lv<32> > tmp_1_fu_690_p5;
    sc_signal< sc_lv<1> > icmp_ln74_fu_736_p2;
    sc_signal< sc_lv<8> > max_label_fu_742_p1;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<30> ap_const_lv30_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<11> ap_const_lv11_7D0;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_100;
    static const sc_lv<15> ap_const_lv15_4650;
    static const sc_lv<15> ap_const_lv15_1;
    static const sc_lv<30> ap_const_lv30_91A3;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_A;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln108_fu_620_p2();
    void thread_add_ln67_fu_661_p2();
    void thread_add_ln70_fu_707_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_update_knn_fu_454_ap_start();
    void thread_i_1_fu_605_p2();
    void thread_i_2_fu_684_p2();
    void thread_i_3_fu_720_p2();
    void thread_i_fu_501_p2();
    void thread_icmp_ln107_fu_599_p2();
    void thread_icmp_ln67_fu_672_p2();
    void thread_icmp_ln69_fu_678_p2();
    void thread_icmp_ln72_fu_714_p2();
    void thread_icmp_ln74_fu_736_p2();
    void thread_icmp_ln96_fu_483_p2();
    void thread_icmp_ln99_fu_495_p2();
    void thread_max_label_fu_742_p1();
    void thread_results_address0();
    void thread_results_ce0();
    void thread_results_d0();
    void thread_results_we0();
    void thread_select_ln74_1_fu_754_p3();
    void thread_select_ln74_fu_746_p3();
    void thread_sext_ln70_fu_702_p1();
    void thread_shl_ln108_1_fu_611_p3();
    void thread_shl_ln_fu_591_p3();
    void thread_t_fu_489_p2();
    void thread_test_set_address0();
    void thread_test_set_ce0();
    void thread_training_set_address0();
    void thread_training_set_ce0();
    void thread_votes_address0();
    void thread_votes_ce0();
    void thread_votes_d0();
    void thread_votes_we0();
    void thread_zext_ln112_fu_731_p1();
    void thread_zext_ln67_fu_667_p1();
    void thread_zext_ln74_fu_726_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
