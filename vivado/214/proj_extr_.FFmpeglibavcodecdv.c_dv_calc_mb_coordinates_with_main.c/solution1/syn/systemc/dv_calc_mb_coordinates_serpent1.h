// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dv_calc_mb_coordinates_serpent1_H__
#define __dv_calc_mb_coordinates_serpent1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dv_calc_mb_coordinates_serpent1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 2;
  static const unsigned AddressRange = 27;
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


   SC_CTOR(dv_calc_mb_coordinates_serpent1_ram) {
        ram[0] = "0b00";
        ram[1] = "0b01";
        ram[2] = "0b10";
        ram[3] = "0b10";
        ram[4] = "0b01";
        ram[5] = "0b00";
        ram[6] = "0b00";
        ram[7] = "0b01";
        ram[8] = "0b10";
        ram[9] = "0b10";
        ram[10] = "0b01";
        ram[11] = "0b00";
        ram[12] = "0b00";
        ram[13] = "0b01";
        ram[14] = "0b10";
        ram[15] = "0b10";
        ram[16] = "0b01";
        ram[17] = "0b00";
        ram[18] = "0b00";
        ram[19] = "0b01";
        ram[20] = "0b10";
        ram[21] = "0b10";
        ram[22] = "0b01";
        ram[23] = "0b00";
        ram[24] = "0b00";
        ram[25] = "0b01";
        ram[26] = "0b10";


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


SC_MODULE(dv_calc_mb_coordinates_serpent1) {


static const unsigned DataWidth = 2;
static const unsigned AddressRange = 27;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dv_calc_mb_coordinates_serpent1_ram* meminst;


SC_CTOR(dv_calc_mb_coordinates_serpent1) {
meminst = new dv_calc_mb_coordinates_serpent1_ram("dv_calc_mb_coordinates_serpent1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dv_calc_mb_coordinates_serpent1() {
    delete meminst;
}


};//endmodule
#endif
