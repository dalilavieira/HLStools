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


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "a"
#define AUTOTB_TVIN_a  "../tv/cdatafile/c.sgfilter.autotvin_a.dat"
// wrapc file define: "b"
#define AUTOTB_TVIN_b  "../tv/cdatafile/c.sgfilter.autotvin_b.dat"
// wrapc file define: "OUT_r"
#define AUTOTB_TVIN_OUT_r  "../tv/cdatafile/c.sgfilter.autotvin_OUT_r.dat"
#define AUTOTB_TVOUT_OUT_r  "../tv/cdatafile/c.sgfilter.autotvout_OUT_r.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.sgfilter.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "OUT_r"
#define AUTOTB_TVOUT_PC_OUT_r  "../tv/rtldatafile/rtl.sgfilter.autotvout_OUT_r.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.sgfilter.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			a_depth = 0;
			b_depth = 0;
			OUT_r_depth = 0;
			ap_return_depth = 0;
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
			total_list << "{a " << a_depth << "}\n";
			total_list << "{b " << b_depth << "}\n";
			total_list << "{OUT_r " << OUT_r_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int a_depth;
		int b_depth;
		int OUT_r_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern int sgfilter (
short a[100],
short b[100],
int OUT[100]);

int AESL_WRAP_sgfilter (
short a[100],
short b[100],
int OUT[100])
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

		int AESL_return;

		// output port post check: "OUT_r"
		aesl_fh.read(AUTOTB_TVOUT_PC_OUT_r, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_OUT_r, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_OUT_r, AESL_token); // data

			sc_bv<32> *OUT_r_pc_buffer = new sc_bv<32>[100];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'OUT_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'OUT_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					OUT_r_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_OUT_r, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_OUT_r))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: OUT_r
				{
					// bitslice(31, 0)
					// {
						// celement: OUT(31, 0)
						// {
							sc_lv<32>* OUT_lv0_0_99_1 = new sc_lv<32>[100];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: OUT(31, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								if (&(OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									OUT_lv0_0_99_1[hls_map_index].range(31, 0) = sc_bv<32>(OUT_r_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: OUT(31, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : OUT[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : OUT[0]
								// output_left_conversion : OUT[i_0]
								// output_type_conversion : (OUT_lv0_0_99_1[hls_map_index]).to_uint64()
								if (&(OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									OUT[i_0] = (OUT_lv0_0_99_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] OUT_r_pc_buffer;
		}

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<32> ap_return_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(31, 0)
					// {
						// celement: return(31, 0)
						// {
							sc_lv<32> return_lv0_0_1_0;
						// }
					// }

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(31, 0) = sc_bv<32>(ap_return_pc_buffer.range(31, 0));
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "a"
		char* tvin_a = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a);

		// "b"
		char* tvin_b = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b);

		// "OUT_r"
		char* tvin_OUT_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_OUT_r);
		char* tvout_OUT_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_OUT_r);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_a, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a, tvin_a);

		sc_bv<16>* a_tvin_wrapc_buffer = new sc_bv<16>[100];

		// RTL Name: a
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: a(15, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : a[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : a[0]
						// regulate_c_name       : a
						// input_type_conversion : a[i_0]
						if (&(a[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> a_tmp_mem;
							a_tmp_mem = a[i_0];
							a_tvin_wrapc_buffer[hls_map_index].range(15, 0) = a_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_a, "%s\n", (a_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a, tvin_a);
		}

		tcl_file.set_num(100, &tcl_file.a_depth);
		sprintf(tvin_a, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a, tvin_a);

		// release memory allocation
		delete [] a_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_b, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b, tvin_b);

		sc_bv<16>* b_tvin_wrapc_buffer = new sc_bv<16>[100];

		// RTL Name: b
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: b(15, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : b[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : b[0]
						// regulate_c_name       : b
						// input_type_conversion : b[i_0]
						if (&(b[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> b_tmp_mem;
							b_tmp_mem = b[i_0];
							b_tvin_wrapc_buffer[hls_map_index].range(15, 0) = b_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_b, "%s\n", (b_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b, tvin_b);
		}

		tcl_file.set_num(100, &tcl_file.b_depth);
		sprintf(tvin_b, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b, tvin_b);

		// release memory allocation
		delete [] b_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_OUT_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);

		sc_bv<32>* OUT_r_tvin_wrapc_buffer = new sc_bv<32>[100];

		// RTL Name: OUT_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: OUT(31, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : OUT[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : OUT[0]
						// regulate_c_name       : OUT
						// input_type_conversion : OUT[i_0]
						if (&(OUT[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> OUT_tmp_mem;
							OUT_tmp_mem = OUT[i_0];
							OUT_r_tvin_wrapc_buffer[hls_map_index].range(31, 0) = OUT_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_OUT_r, "%s\n", (OUT_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);
		}

		tcl_file.set_num(100, &tcl_file.OUT_r_depth);
		sprintf(tvin_OUT_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_OUT_r, tvin_OUT_r);

		// release memory allocation
		delete [] OUT_r_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		int AESL_return = sgfilter(a, b, OUT);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_OUT_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);

		sc_bv<32>* OUT_r_tvout_wrapc_buffer = new sc_bv<32>[100];

		// RTL Name: OUT_r
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: OUT(31, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : OUT[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : OUT[0]
						// regulate_c_name       : OUT
						// input_type_conversion : OUT[i_0]
						if (&(OUT[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> OUT_tmp_mem;
							OUT_tmp_mem = OUT[i_0];
							OUT_r_tvout_wrapc_buffer[hls_map_index].range(31, 0) = OUT_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvout_OUT_r, "%s\n", (OUT_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);
		}

		tcl_file.set_num(100, &tcl_file.OUT_r_depth);
		sprintf(tvout_OUT_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_OUT_r, tvout_OUT_r);

		// release memory allocation
		delete [] OUT_r_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<32> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(31, 0)
			{
				// celement: return(31, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> return_tmp_mem;
							return_tmp_mem = AESL_return;
							ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "a"
		delete [] tvin_a;
		// release memory allocation: "b"
		delete [] tvin_b;
		// release memory allocation: "OUT_r"
		delete [] tvin_OUT_r;
		delete [] tvout_OUT_r;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

