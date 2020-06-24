// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct {
        int w;
        int h;
        float data[100000];
       } TYPE_3__;
       typedef TYPE_3__ TYPE_1__;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "a_w"
#define AUTOTB_TVIN_a_w  "../tv/cdatafile/c.draw_box.autotvin_a_w.dat"
// wrapc file define: "a_h"
#define AUTOTB_TVIN_a_h  "../tv/cdatafile/c.draw_box.autotvin_a_h.dat"
// wrapc file define: "x1"
#define AUTOTB_TVIN_x1  "../tv/cdatafile/c.draw_box.autotvin_x1.dat"
// wrapc file define: "y1"
#define AUTOTB_TVIN_y1  "../tv/cdatafile/c.draw_box.autotvin_y1.dat"
// wrapc file define: "x2"
#define AUTOTB_TVIN_x2  "../tv/cdatafile/c.draw_box.autotvin_x2.dat"
// wrapc file define: "y2"
#define AUTOTB_TVIN_y2  "../tv/cdatafile/c.draw_box.autotvin_y2.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"


class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			a_w_depth = 0;
			a_h_depth = 0;
			x1_depth = 0;
			y1_depth = 0;
			x2_depth = 0;
			y2_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{a_w " << a_w_depth << "}\n";
			total_list << "{a_h " << a_h_depth << "}\n";
			total_list << "{x1 " << x1_depth << "}\n";
			total_list << "{y1 " << y1_depth << "}\n";
			total_list << "{x2 " << x2_depth << "}\n";
			total_list << "{y2 " << y2_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int a_w_depth;
		int a_h_depth;
		int x1_depth;
		int y1_depth;
		int x2_depth;
		int y2_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void draw_box (
TYPE_1__ a,
int x1,
int y1,
int x2,
int y2,
float r,
float g,
float b);

extern "C" void AESL_WRAP_draw_box (
TYPE_1__ a,
int x1,
int y1,
int x2,
int y2,
float r,
float g,
float b)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "a_w"
		char* tvin_a_w = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_w);

		// "a_h"
		char* tvin_a_h = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_h);

		// "x1"
		char* tvin_x1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_x1);

		// "y1"
		char* tvin_y1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_y1);

		// "x2"
		char* tvin_x2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_x2);

		// "y2"
		char* tvin_y2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_y2);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_a_w, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_w, tvin_a_w);

		sc_bv<32> a_w_tvin_wrapc_buffer;

		// RTL Name: a_w
		{
			// bitslice(31, 0)
			{
				// celement: a.w(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : a.w
						// sub_1st_elem          : 
						// ori_name_1st_elem     : a.w
						// regulate_c_name       : a_w
						// input_type_conversion : a.w
						if (&(a.w) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> a_w_tmp_mem;
							a_w_tmp_mem = a.w;
							a_w_tvin_wrapc_buffer.range(31, 0) = a_w_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_w, "%s\n", (a_w_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_w, tvin_a_w);
		}

		tcl_file.set_num(1, &tcl_file.a_w_depth);
		sprintf(tvin_a_w, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_w, tvin_a_w);

		// [[transaction]]
		sprintf(tvin_a_h, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_h, tvin_a_h);

		sc_bv<32> a_h_tvin_wrapc_buffer;

		// RTL Name: a_h
		{
			// bitslice(31, 0)
			{
				// celement: a.h(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : a.h
						// sub_1st_elem          : 
						// ori_name_1st_elem     : a.h
						// regulate_c_name       : a_h
						// input_type_conversion : a.h
						if (&(a.h) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> a_h_tmp_mem;
							a_h_tmp_mem = a.h;
							a_h_tvin_wrapc_buffer.range(31, 0) = a_h_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_h, "%s\n", (a_h_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_h, tvin_a_h);
		}

		tcl_file.set_num(1, &tcl_file.a_h_depth);
		sprintf(tvin_a_h, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_h, tvin_a_h);

		// [[transaction]]
		sprintf(tvin_x1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_x1, tvin_x1);

		sc_bv<32> x1_tvin_wrapc_buffer;

		// RTL Name: x1
		{
			// bitslice(31, 0)
			{
				// celement: x1(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : x1
						// sub_1st_elem          : 
						// ori_name_1st_elem     : x1
						// regulate_c_name       : x1
						// input_type_conversion : x1
						if (&(x1) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> x1_tmp_mem;
							x1_tmp_mem = x1;
							x1_tvin_wrapc_buffer.range(31, 0) = x1_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_x1, "%s\n", (x1_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_x1, tvin_x1);
		}

		tcl_file.set_num(1, &tcl_file.x1_depth);
		sprintf(tvin_x1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_x1, tvin_x1);

		// [[transaction]]
		sprintf(tvin_y1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_y1, tvin_y1);

		sc_bv<32> y1_tvin_wrapc_buffer;

		// RTL Name: y1
		{
			// bitslice(31, 0)
			{
				// celement: y1(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : y1
						// sub_1st_elem          : 
						// ori_name_1st_elem     : y1
						// regulate_c_name       : y1
						// input_type_conversion : y1
						if (&(y1) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y1_tmp_mem;
							y1_tmp_mem = y1;
							y1_tvin_wrapc_buffer.range(31, 0) = y1_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_y1, "%s\n", (y1_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_y1, tvin_y1);
		}

		tcl_file.set_num(1, &tcl_file.y1_depth);
		sprintf(tvin_y1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_y1, tvin_y1);

		// [[transaction]]
		sprintf(tvin_x2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_x2, tvin_x2);

		sc_bv<32> x2_tvin_wrapc_buffer;

		// RTL Name: x2
		{
			// bitslice(31, 0)
			{
				// celement: x2(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : x2
						// sub_1st_elem          : 
						// ori_name_1st_elem     : x2
						// regulate_c_name       : x2
						// input_type_conversion : x2
						if (&(x2) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> x2_tmp_mem;
							x2_tmp_mem = x2;
							x2_tvin_wrapc_buffer.range(31, 0) = x2_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_x2, "%s\n", (x2_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_x2, tvin_x2);
		}

		tcl_file.set_num(1, &tcl_file.x2_depth);
		sprintf(tvin_x2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_x2, tvin_x2);

		// [[transaction]]
		sprintf(tvin_y2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_y2, tvin_y2);

		sc_bv<32> y2_tvin_wrapc_buffer;

		// RTL Name: y2
		{
			// bitslice(31, 0)
			{
				// celement: y2(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : y2
						// sub_1st_elem          : 
						// ori_name_1st_elem     : y2
						// regulate_c_name       : y2
						// input_type_conversion : y2
						if (&(y2) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y2_tmp_mem;
							y2_tmp_mem = y2;
							y2_tvin_wrapc_buffer.range(31, 0) = y2_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_y2, "%s\n", (y2_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_y2, tvin_y2);
		}

		tcl_file.set_num(1, &tcl_file.y2_depth);
		sprintf(tvin_y2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_y2, tvin_y2);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		draw_box(a, x1, y1, x2, y2, r, g, b);

		CodeState = DUMP_OUTPUTS;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "a_w"
		delete [] tvin_a_w;
		// release memory allocation: "a_h"
		delete [] tvin_a_h;
		// release memory allocation: "x1"
		delete [] tvin_x1;
		// release memory allocation: "y1"
		delete [] tvin_y1;
		// release memory allocation: "x2"
		delete [] tvin_x2;
		// release memory allocation: "y2"
		delete [] tvin_y2;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

