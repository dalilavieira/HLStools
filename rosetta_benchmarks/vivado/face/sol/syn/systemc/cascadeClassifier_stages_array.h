// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cascadeClassifier_stages_array_H__
#define __cascadeClassifier_stages_array_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cascadeClassifier_stages_array_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 25;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(cascadeClassifier_stages_array_ram) {
        ram[0] = "0b00001001";
        ram[1] = "0b00010000";
        ram[2] = "0b00011011";
        ram[3] = "0b00100000";
        ram[4] = "0b00110100";
        ram[5] = "0b00110101";
        ram[6] = "0b00111110";
        ram[7] = "0b01001000";
        ram[8] = "0b01010011";
        ram[9] = "0b01011011";
        ram[10] = "0b01100011";
        ram[11] = "0b01110011";
        ram[12] = "0b01111111";
        ram[13] = "0b10000111";
        ram[14] = "0b10001000";
        ram[15] = "0b10001001";
        ram[16] = "0b10011111";
        ram[17] = "0b10011011";
        ram[18] = "0b10101001";
        ram[19] = "0b11000100";
        ram[20] = "0b11000101";
        ram[21] = "0b10110101";
        ram[22] = "0b11000111";
        ram[23] = "0b11010011";
        ram[24] = "0b11001000";


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


SC_MODULE(cascadeClassifier_stages_array) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 25;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cascadeClassifier_stages_array_ram* meminst;


SC_CTOR(cascadeClassifier_stages_array) {
meminst = new cascadeClassifier_stages_array_ram("cascadeClassifier_stages_array_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cascadeClassifier_stages_array() {
    delete meminst;
}


};//endmodule
#endif
