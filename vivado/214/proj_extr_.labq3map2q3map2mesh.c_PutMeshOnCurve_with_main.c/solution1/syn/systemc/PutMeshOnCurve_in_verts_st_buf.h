// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __PutMeshOnCurve_in_verts_st_buf_H__
#define __PutMeshOnCurve_in_verts_st_buf_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct PutMeshOnCurve_in_verts_st_buf_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 64;
  static const unsigned AddressRange = 1000000;
  static const unsigned AddressWidth = 20;

//latency = 3
//input_reg = 2
//output_reg = 1
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> we1;
sc_core::sc_in<sc_lv<DataWidth> > d1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


sc_core::sc_signal<sc_lv<AddressWidth> > addr0_t0; 
sc_core::sc_signal<sc_logic> ce0_t0; 
sc_core::sc_signal<sc_lv<AddressWidth> > addr0_t1; 
sc_core::sc_signal<sc_logic> ce0_t1; 
sc_core::sc_signal<sc_lv<DataWidth> > d0_t0; 
sc_core::sc_signal<sc_logic> we0_t0; 
sc_core::sc_signal<sc_lv<DataWidth> > d0_t1; 
sc_core::sc_signal<sc_logic> we0_t1; 
sc_core::sc_signal<sc_lv<DataWidth> > q0_t0;
sc_core::sc_signal<sc_lv<DataWidth> > q0_t1;
sc_core::sc_signal<sc_lv<AddressWidth> > addr1_t0; 
sc_core::sc_signal<sc_logic> ce1_t0; 
sc_core::sc_signal<sc_lv<AddressWidth> > addr1_t1; 
sc_core::sc_signal<sc_logic> ce1_t1; 
sc_core::sc_signal<sc_lv<DataWidth> > d1_t0; 
sc_core::sc_signal<sc_logic> we1_t0; 
sc_core::sc_signal<sc_lv<DataWidth> > d1_t1; 
sc_core::sc_signal<sc_logic> we1_t1; 
sc_core::sc_signal<sc_lv<DataWidth> > q1_t0;
sc_core::sc_signal<sc_lv<DataWidth> > q1_t1;
   SC_CTOR(PutMeshOnCurve_in_verts_st_buf_ram) {
SC_METHOD(prc_comb_0);
  sensitive<<address0<<ce0;
  sensitive<<d0<<we0;
  sensitive<<q0_t1;
SC_METHOD(prc_comb_1);
  sensitive<<address1<<ce1;
  sensitive<<d1<<we1;
  sensitive<<q1_t1;

SC_METHOD(prc_seq);
  sensitive<<clk.pos(); 


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();
   }

void prc_comb_0() {
  addr0_t0 = address0.read();
  ce0_t0 = ce0.read();
  d0_t0 = d0.read();
  we0_t0 = we0.read();
  q0 = q0_t1.read();
}
void prc_comb_1() {
  addr1_t0 = address1.read();
  ce1_t0 = ce1.read();
  d1_t0 = d1.read();
  we1_t0 = we1.read();
  q1 = q1_t1.read();
}

void prc_seq() { 
    addr0_t1 = addr0_t0.read(); 
    ce0_t1 = ce0_t0.read(); 
    d0_t1 = d0_t0.read();
    we0_t1 = we0_t0.read();
    q0_t1 = q0_t0.read();
    addr1_t1 = addr1_t0.read(); 
    ce1_t1 = ce1_t0.read(); 
    d1_t1 = d1_t0.read();
    we1_t1 = we1_t0.read();
    q1_t1 = q1_t0.read();
}

void prc_write_0()
{
    if (ce0_t1.read() == sc_dt::Log_1) 
    {
        if (we0_t1.read() == sc_dt::Log_1) 
        {
           if(addr0_t1.read().is_01() && addr0_t1.read().to_uint()<AddressRange)
           {
              ram[addr0_t1.read().to_uint()] = d0_t1.read(); 
              q0_t0 = d0_t1.read();
           }
           else
              q0_t0 = sc_lv<DataWidth>();
        }
        else {
            if(addr0_t1.read().is_01() && addr0_t1.read().to_uint()<AddressRange)
              q0_t0 = ram[addr0_t1.read().to_uint()];
            else
              q0_t0 = sc_lv<DataWidth>();
        }
    }
}


void prc_write_1()
{
    if (ce1_t1.read() == sc_dt::Log_1) 
    {
        if (we1_t1.read() == sc_dt::Log_1) 
        {
           if(addr1_t1.read().is_01() && addr1_t1.read().to_uint()<AddressRange)
           {
              ram[addr1_t1.read().to_uint()] = d1_t1.read(); 
              q1_t0 = d1_t1.read();
           }
           else
              q1_t0 = sc_lv<DataWidth>();
        }
        else {
            if(addr1_t1.read().is_01() && addr1_t1.read().to_uint()<AddressRange)
              q1_t0 = ram[addr1_t1.read().to_uint()];
            else
              q1_t0 = sc_lv<DataWidth>();
        }
    }
}


}; //endmodule


SC_MODULE(PutMeshOnCurve_in_verts_st_buf) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 1000000;
static const unsigned AddressWidth = 20;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> we1;
sc_core::sc_in<sc_lv<DataWidth> > d1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


PutMeshOnCurve_in_verts_st_buf_ram* meminst;


SC_CTOR(PutMeshOnCurve_in_verts_st_buf) {
meminst = new PutMeshOnCurve_in_verts_st_buf_ram("PutMeshOnCurve_in_verts_st_buf_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);
meminst->we0(we0);
meminst->d0(d0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);
meminst->we1(we1);
meminst->d1(d1);

meminst->reset(reset);
meminst->clk(clk);
}
~PutMeshOnCurve_in_verts_st_buf() {
    delete meminst;
}


};//endmodule
#endif
