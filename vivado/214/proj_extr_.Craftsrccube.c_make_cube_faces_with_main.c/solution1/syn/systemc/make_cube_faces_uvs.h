// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __make_cube_faces_uvs_H__
#define __make_cube_faces_uvs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct make_cube_faces_uvs_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 48;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(make_cube_faces_uvs_ram) {
        ram[0] = "0b00000000000000000000000000000000";
        ram[1] = "0b00000000000000000000000000000000";
        ram[2] = "0b00111111100000000000000000000000";
        ram[3] = "0b00000000000000000000000000000000";
        ram[4] = "0b00000000000000000000000000000000";
        ram[5] = "0b00111111100000000000000000000000";
        ram[6] = "0b00111111100000000000000000000000";
        ram[7] = "0b00111111100000000000000000000000";
        ram[8] = "0b00111111100000000000000000000000";
        ram[9] = "0b00000000000000000000000000000000";
        ram[10] = "0b00000000000000000000000000000000";
        ram[11] = "0b00000000000000000000000000000000";
        ram[12] = "0b00111111100000000000000000000000";
        ram[13] = "0b00111111100000000000000000000000";
        ram[14] = "0b00000000000000000000000000000000";
        ram[15] = "0b00111111100000000000000000000000";
        ram[16] = "0b00000000000000000000000000000000";
        ram[17] = "0b00111111100000000000000000000000";
        ram[18] = "0b00000000000000000000000000000000";
        ram[19] = "0b00000000000000000000000000000000";
        ram[20] = "0b00111111100000000000000000000000";
        ram[21] = "0b00111111100000000000000000000000";
        ram[22] = "0b00111111100000000000000000000000";
        ram[23] = "0b00000000000000000000000000000000";
        ram[24] = "0b00000000000000000000000000000000";
        ram[25] = "0b00000000000000000000000000000000";
        ram[26] = "0b00000000000000000000000000000000";
        ram[27] = "0b00111111100000000000000000000000";
        ram[28] = "0b00111111100000000000000000000000";
        ram[29] = "0b00000000000000000000000000000000";
        ram[30] = "0b00111111100000000000000000000000";
        ram[31] = "0b00111111100000000000000000000000";
        ram[32] = "0b00000000000000000000000000000000";
        ram[33] = "0b00000000000000000000000000000000";
        ram[34] = "0b00000000000000000000000000000000";
        ram[35] = "0b00111111100000000000000000000000";
        ram[36] = "0b00111111100000000000000000000000";
        ram[37] = "0b00000000000000000000000000000000";
        ram[38] = "0b00111111100000000000000000000000";
        ram[39] = "0b00111111100000000000000000000000";
        ram[40] = "0b00111111100000000000000000000000";
        ram[41] = "0b00000000000000000000000000000000";
        ram[42] = "0b00111111100000000000000000000000";
        ram[43] = "0b00111111100000000000000000000000";
        ram[44] = "0b00000000000000000000000000000000";
        ram[45] = "0b00000000000000000000000000000000";
        ram[46] = "0b00000000000000000000000000000000";
        ram[47] = "0b00111111100000000000000000000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
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


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(make_cube_faces_uvs) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 48;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


make_cube_faces_uvs_ram* meminst;


SC_CTOR(make_cube_faces_uvs) {
meminst = new make_cube_faces_uvs_ram("make_cube_faces_uvs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~make_cube_faces_uvs() {
    delete meminst;
}


};//endmodule
#endif
