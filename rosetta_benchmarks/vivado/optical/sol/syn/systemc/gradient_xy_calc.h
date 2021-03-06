// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _gradient_xy_calc_HH_
#define _gradient_xy_calc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1.h"
#include "optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1.h"
#include "optical_flow_sw_fdiv_32ns_32ns_32_9_1.h"
#include "optical_flow_sw_sitofp_32s_32_4_1.h"
#include "gradient_xy_calc_GRAD_WEIGHTS.h"

namespace ap_rtl {

struct gradient_xy_calc : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<19> > frame_address0;
    sc_out< sc_logic > frame_ce0;
    sc_in< sc_lv<32> > frame_q0;
    sc_out< sc_lv<19> > frame_address1;
    sc_out< sc_logic > frame_ce1;
    sc_in< sc_lv<32> > frame_q1;
    sc_out< sc_lv<19> > gradient_x_address0;
    sc_out< sc_logic > gradient_x_ce0;
    sc_out< sc_logic > gradient_x_we0;
    sc_out< sc_lv<32> > gradient_x_d0;
    sc_out< sc_lv<19> > gradient_y_address0;
    sc_out< sc_logic > gradient_y_ce0;
    sc_out< sc_logic > gradient_y_we0;
    sc_out< sc_lv<32> > gradient_y_d0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;


    // Module declarations
    gradient_xy_calc(sc_module_name name);
    SC_HAS_PROCESS(gradient_xy_calc);

    ~gradient_xy_calc();

    sc_trace_file* mVcdFile;

    gradient_xy_calc_GRAD_WEIGHTS* GRAD_WEIGHTS_U;
    optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1<1,4,32,32,32>* optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U1;
    optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1<1,4,32,32,32>* optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U2;
    optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1<1,3,32,32,32>* optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U3;
    optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1<1,3,32,32,32>* optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U4;
    optical_flow_sw_fdiv_32ns_32ns_32_9_1<1,9,32,32,32>* optical_flow_sw_fdiv_32ns_32ns_32_9_1_U5;
    optical_flow_sw_fdiv_32ns_32ns_32_9_1<1,9,32,32,32>* optical_flow_sw_fdiv_32ns_32ns_32_9_1_U6;
    optical_flow_sw_sitofp_32s_32_4_1<1,4,32,32>* optical_flow_sw_sitofp_32s_32_4_1_U7;
    sc_signal< sc_lv<25> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > GRAD_WEIGHTS_address0;
    sc_signal< sc_logic > GRAD_WEIGHTS_ce0;
    sc_signal< sc_lv<5> > GRAD_WEIGHTS_q0;
    sc_signal< sc_lv<9> > r_fu_266_p2;
    sc_signal< sc_lv<9> > r_reg_518;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln34_fu_304_p2;
    sc_signal< sc_lv<1> > icmp_ln34_reg_523;
    sc_signal< sc_lv<1> > icmp_ln18_fu_260_p2;
    sc_signal< sc_lv<20> > tmp_1_fu_316_p3;
    sc_signal< sc_lv<20> > tmp_1_reg_528;
    sc_signal< sc_lv<1> > and_ln24_fu_324_p2;
    sc_signal< sc_lv<1> > and_ln24_reg_535;
    sc_signal< sc_lv<11> > c_fu_336_p2;
    sc_signal< sc_lv<11> > c_reg_543;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > and_ln24_2_fu_378_p2;
    sc_signal< sc_lv<1> > and_ln24_2_reg_548;
    sc_signal< sc_lv<1> > icmp_ln20_fu_330_p2;
    sc_signal< sc_lv<20> > zext_ln31_fu_419_p1;
    sc_signal< sc_lv<20> > zext_ln31_reg_555;
    sc_signal< sc_lv<19> > gradient_x_addr_1_reg_560;
    sc_signal< sc_lv<19> > gradient_y_addr_1_reg_565;
    sc_signal< sc_lv<3> > i_fu_448_p2;
    sc_signal< sc_lv<3> > i_reg_573;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<20> > add_ln28_fu_464_p2;
    sc_signal< sc_lv<20> > add_ln28_reg_578;
    sc_signal< sc_lv<1> > icmp_ln26_fu_442_p2;
    sc_signal< sc_lv<20> > add_ln29_1_fu_498_p2;
    sc_signal< sc_lv<20> > add_ln29_1_reg_588;
    sc_signal< sc_lv<5> > GRAD_WEIGHTS_load_reg_593;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > frame_load_reg_613;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > grp_fu_247_p1;
    sc_signal< sc_lv<32> > tmp_7_reg_618;
    sc_signal< sc_lv<32> > frame_load_1_reg_624;
    sc_signal< sc_lv<32> > grp_fu_227_p2;
    sc_signal< sc_lv<32> > tmp_8_reg_629;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > grp_fu_231_p2;
    sc_signal< sc_lv<32> > tmp_9_reg_634;
    sc_signal< sc_lv<32> > grp_fu_217_p2;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > grp_fu_222_p2;
    sc_signal< sc_lv<32> > grp_fu_235_p2;
    sc_signal< sc_lv<32> > tmp_reg_649;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<32> > grp_fu_241_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_654;
    sc_signal< sc_lv<9> > r_0_reg_158;
    sc_signal< sc_lv<11> > c_0_reg_170;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<32> > y_grad_0_reg_182;
    sc_signal< sc_lv<32> > x_grad_0_reg_194;
    sc_signal< sc_lv<3> > i_0_reg_206;
    sc_signal< sc_lv<64> > sext_ln36_fu_413_p1;
    sc_signal< sc_lv<1> > and_ln34_fu_399_p2;
    sc_signal< sc_lv<64> > sext_ln31_fu_428_p1;
    sc_signal< sc_lv<64> > zext_ln28_1_fu_475_p1;
    sc_signal< sc_lv<64> > sext_ln28_fu_507_p1;
    sc_signal< sc_lv<64> > zext_ln29_1_fu_511_p1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > grp_fu_247_p0;
    sc_signal< sc_lv<7> > tmp_12_fu_272_p4;
    sc_signal< sc_lv<8> > tmp_13_fu_294_p4;
    sc_signal< sc_lv<10> > zext_ln18_fu_256_p1;
    sc_signal< sc_lv<10> > add_ln36_fu_310_p2;
    sc_signal< sc_lv<1> > icmp_ln24_fu_282_p2;
    sc_signal< sc_lv<1> > icmp_ln24_1_fu_288_p2;
    sc_signal< sc_lv<9> > tmp_14_fu_342_p4;
    sc_signal< sc_lv<1> > tmp_16_fu_358_p3;
    sc_signal< sc_lv<1> > icmp_ln24_2_fu_352_p2;
    sc_signal< sc_lv<1> > xor_ln24_fu_366_p2;
    sc_signal< sc_lv<1> > and_ln24_1_fu_372_p2;
    sc_signal< sc_lv<10> > tmp_17_fu_383_p4;
    sc_signal< sc_lv<1> > icmp_ln34_1_fu_393_p2;
    sc_signal< sc_lv<11> > grp_fu_250_p2;
    sc_signal< sc_lv<20> > zext_ln36_fu_404_p1;
    sc_signal< sc_lv<20> > add_ln36_2_fu_408_p2;
    sc_signal< sc_lv<20> > add_ln31_fu_423_p2;
    sc_signal< sc_lv<11> > zext_ln26_1_fu_438_p1;
    sc_signal< sc_lv<11> > sub_ln28_fu_454_p2;
    sc_signal< sc_lv<20> > zext_ln28_fu_460_p1;
    sc_signal< sc_lv<3> > sub_ln28_1_fu_469_p2;
    sc_signal< sc_lv<9> > zext_ln26_fu_434_p1;
    sc_signal< sc_lv<9> > sub_ln29_fu_480_p2;
    sc_signal< sc_lv<19> > tmp_2_fu_486_p3;
    sc_signal< sc_lv<20> > zext_ln29_fu_494_p1;
    sc_signal< sc_lv<25> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<25> ap_ST_fsm_state1;
    static const sc_lv<25> ap_ST_fsm_state2;
    static const sc_lv<25> ap_ST_fsm_state3;
    static const sc_lv<25> ap_ST_fsm_state4;
    static const sc_lv<25> ap_ST_fsm_state5;
    static const sc_lv<25> ap_ST_fsm_state6;
    static const sc_lv<25> ap_ST_fsm_state7;
    static const sc_lv<25> ap_ST_fsm_state8;
    static const sc_lv<25> ap_ST_fsm_state9;
    static const sc_lv<25> ap_ST_fsm_state10;
    static const sc_lv<25> ap_ST_fsm_state11;
    static const sc_lv<25> ap_ST_fsm_state12;
    static const sc_lv<25> ap_ST_fsm_state13;
    static const sc_lv<25> ap_ST_fsm_state14;
    static const sc_lv<25> ap_ST_fsm_state15;
    static const sc_lv<25> ap_ST_fsm_state16;
    static const sc_lv<25> ap_ST_fsm_state17;
    static const sc_lv<25> ap_ST_fsm_state18;
    static const sc_lv<25> ap_ST_fsm_state19;
    static const sc_lv<25> ap_ST_fsm_state20;
    static const sc_lv<25> ap_ST_fsm_state21;
    static const sc_lv<25> ap_ST_fsm_state22;
    static const sc_lv<25> ap_ST_fsm_state23;
    static const sc_lv<25> ap_ST_fsm_state24;
    static const sc_lv<25> ap_ST_fsm_state25;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_41400000;
    static const sc_lv<11> ap_const_lv11_7FE;
    static const sc_lv<9> ap_const_lv9_1B6;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<9> ap_const_lv9_1B4;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<10> ap_const_lv10_3FE;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<11> ap_const_lv11_402;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_GRAD_WEIGHTS_address0();
    void thread_GRAD_WEIGHTS_ce0();
    void thread_add_ln28_fu_464_p2();
    void thread_add_ln29_1_fu_498_p2();
    void thread_add_ln31_fu_423_p2();
    void thread_add_ln36_2_fu_408_p2();
    void thread_add_ln36_fu_310_p2();
    void thread_and_ln24_1_fu_372_p2();
    void thread_and_ln24_2_fu_378_p2();
    void thread_and_ln24_fu_324_p2();
    void thread_and_ln34_fu_399_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c_fu_336_p2();
    void thread_frame_address0();
    void thread_frame_address1();
    void thread_frame_ce0();
    void thread_frame_ce1();
    void thread_gradient_x_address0();
    void thread_gradient_x_ce0();
    void thread_gradient_x_d0();
    void thread_gradient_x_we0();
    void thread_gradient_y_address0();
    void thread_gradient_y_ce0();
    void thread_gradient_y_d0();
    void thread_gradient_y_we0();
    void thread_grp_fu_247_p0();
    void thread_grp_fu_250_p2();
    void thread_i_fu_448_p2();
    void thread_icmp_ln18_fu_260_p2();
    void thread_icmp_ln20_fu_330_p2();
    void thread_icmp_ln24_1_fu_288_p2();
    void thread_icmp_ln24_2_fu_352_p2();
    void thread_icmp_ln24_fu_282_p2();
    void thread_icmp_ln26_fu_442_p2();
    void thread_icmp_ln34_1_fu_393_p2();
    void thread_icmp_ln34_fu_304_p2();
    void thread_r_fu_266_p2();
    void thread_sext_ln28_fu_507_p1();
    void thread_sext_ln31_fu_428_p1();
    void thread_sext_ln36_fu_413_p1();
    void thread_sub_ln28_1_fu_469_p2();
    void thread_sub_ln28_fu_454_p2();
    void thread_sub_ln29_fu_480_p2();
    void thread_tmp_12_fu_272_p4();
    void thread_tmp_13_fu_294_p4();
    void thread_tmp_14_fu_342_p4();
    void thread_tmp_16_fu_358_p3();
    void thread_tmp_17_fu_383_p4();
    void thread_tmp_1_fu_316_p3();
    void thread_tmp_2_fu_486_p3();
    void thread_xor_ln24_fu_366_p2();
    void thread_zext_ln18_fu_256_p1();
    void thread_zext_ln26_1_fu_438_p1();
    void thread_zext_ln26_fu_434_p1();
    void thread_zext_ln28_1_fu_475_p1();
    void thread_zext_ln28_fu_460_p1();
    void thread_zext_ln29_1_fu_511_p1();
    void thread_zext_ln29_fu_494_p1();
    void thread_zext_ln31_fu_419_p1();
    void thread_zext_ln36_fu_404_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
