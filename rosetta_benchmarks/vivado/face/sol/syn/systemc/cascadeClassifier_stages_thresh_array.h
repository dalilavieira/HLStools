// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cascadeClassifier_stages_thresh_array_H__
#define __cascadeClassifier_stages_thresh_array_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cascadeClassifier_stages_thresh_array_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
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


   SC_CTOR(cascadeClassifier_stages_thresh_array_ram) {
        ram[0] = "0b101011110110";
        ram[1] = "0b101100000101";
        ram[2] = "0b101101011001";
        ram[3] = "0b101110001100";
        ram[4] = "0b101110011110";
        ram[5] = "0b101111011111";
        ram[6] = "0b101111111011";
        ram[7] = "0b110000011110";
        ram[8] = "0b110000101001";
        ram[9] = "0b110001011011";
        ram[10] = "0b110000100010";
        ram[11] = "0b110001001001";
        ram[12] = "0b110001110000";
        ram[13] = "0b110001001101";
        ram[14] = "0b110010010011";
        ram[15] = "0b110001111101";
        ram[16] = "0b110001101000";
        ram[17] = "0b110010011100";
        ram[18] = "0b110011000011";
        ram[19] = "0b110011001011";
        ram[20] = "0b110010111001";
        ram[21] = "0b110010101111";
        ram[22] = "0b110010111111";
        ram[23] = "0b110010100010";
        ram[24] = "0b110100000010";


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


SC_MODULE(cascadeClassifier_stages_thresh_array) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 25;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cascadeClassifier_stages_thresh_array_ram* meminst;


SC_CTOR(cascadeClassifier_stages_thresh_array) {
meminst = new cascadeClassifier_stages_thresh_array_ram("cascadeClassifier_stages_thresh_array_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cascadeClassifier_stages_thresh_array() {
    delete meminst;
}


};//endmodule
#endif
