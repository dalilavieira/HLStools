// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __gradient_weight_y_GRAD_FILTER_H__
#define __gradient_weight_y_GRAD_FILTER_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct gradient_weight_y_GRAD_FILTER_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 7;
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


   SC_CTOR(gradient_weight_y_GRAD_FILTER_ram) {
        ram[0] = "0b00111101100110101001111110111110";
        ram[1] = "0b00111110000010000011000100100111";
        ram[2] = "0b00111110001111110110001010110111";
        ram[3] = "0b00111110100101001010001000110100";
        ram[4] = "0b00111110001111110110001010110111";
        ram[5] = "0b00111110000010000011000100100111";
        ram[6] = "0b00111101100110101001111110111110";


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


SC_MODULE(gradient_weight_y_GRAD_FILTER) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 7;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


gradient_weight_y_GRAD_FILTER_ram* meminst;


SC_CTOR(gradient_weight_y_GRAD_FILTER) {
meminst = new gradient_weight_y_GRAD_FILTER_ram("gradient_weight_y_GRAD_FILTER_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~gradient_weight_y_GRAD_FILTER() {
    delete meminst;
}


};//endmodule
#endif
