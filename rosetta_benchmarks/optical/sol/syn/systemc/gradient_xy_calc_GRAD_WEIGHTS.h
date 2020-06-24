// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __gradient_xy_calc_GRAD_WEIGHTS_H__
#define __gradient_xy_calc_GRAD_WEIGHTS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct gradient_xy_calc_GRAD_WEIGHTS_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 5;
  static const unsigned AddressRange = 5;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(gradient_xy_calc_GRAD_WEIGHTS_ram) {
        ram[0] = "0b00001";
        ram[1] = "0b11000";
        ram[2] = "0b00000";
        ram[3] = "0b01000";
        ram[4] = "0b11111";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(gradient_xy_calc_GRAD_WEIGHTS) {


static const unsigned DataWidth = 5;
static const unsigned AddressRange = 5;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


gradient_xy_calc_GRAD_WEIGHTS_ram* meminst;


SC_CTOR(gradient_xy_calc_GRAD_WEIGHTS) {
meminst = new gradient_xy_calc_GRAD_WEIGHTS_ram("gradient_xy_calc_GRAD_WEIGHTS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~gradient_xy_calc_GRAD_WEIGHTS() {
    delete meminst;
}


};//endmodule
#endif
