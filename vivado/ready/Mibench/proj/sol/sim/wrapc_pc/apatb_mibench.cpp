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


// wrapc file define: "A"
#define AUTOTB_TVIN_A  "../tv/cdatafile/c.mibench.autotvin_A.dat"
// wrapc file define: "B"
#define AUTOTB_TVIN_B  "../tv/cdatafile/c.mibench.autotvin_B.dat"
// wrapc file define: "C"
#define AUTOTB_TVIN_C  "../tv/cdatafile/c.mibench.autotvin_C.dat"
// wrapc file define: "OUT_r"
#define AUTOTB_TVIN_OUT_r  "../tv/cdatafile/c.mibench.autotvin_OUT_r.dat"
#define AUTOTB_TVOUT_OUT_r  "../tv/cdatafile/c.mibench.autotvout_OUT_r.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.mibench.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "OUT_r"
#define AUTOTB_TVOUT_PC_OUT_r  "../tv/rtldatafile/rtl.mibench.autotvout_OUT_r.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.mibench.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			A_depth = 0;
			B_depth = 0;
			C_depth = 0;
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
			total_list << "{A " << A_depth << "}\n";
			total_list << "{B " << B_depth << "}\n";
			total_list << "{C " << C_depth << "}\n";
			total_list << "{OUT_r " << OUT_r_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int A_depth;
		int B_depth;
		int C_depth;
		int OUT_r_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern int mibench (
short A[100],
short B[100],
short C[100],
int OUT[100]);

int AESL_WRAP_mibench (
short A[100],
short B[100],
short C[100],
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

		// "A"
		char* tvin_A = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_A);

		// "B"
		char* tvin_B = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_B);

		// "C"
		char* tvin_C = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_C);

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
		sprintf(tvin_A, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_A, tvin_A);

		sc_bv<16>* A_tvin_wrapc_buffer = new sc_bv<16>[100];

		// RTL Name: A
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: A(15, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : A[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : A[0]
						// regulate_c_name       : A
						// input_type_conversion : A[i_0]
						if (&(A[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> A_tmp_mem;
							A_tmp_mem = A[i_0];
							A_tvin_wrapc_buffer[hls_map_index].range(15, 0) = A_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_A, "%s\n", (A_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_A, tvin_A);
		}

		tcl_file.set_num(100, &tcl_file.A_depth);
		sprintf(tvin_A, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_A, tvin_A);

		// release memory allocation
		delete [] A_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_B, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_B, tvin_B);

		sc_bv<16>* B_tvin_wrapc_buffer = new sc_bv<16>[100];

		// RTL Name: B
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: B(15, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : B[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : B[0]
						// regulate_c_name       : B
						// input_type_conversion : B[i_0]
						if (&(B[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> B_tmp_mem;
							B_tmp_mem = B[i_0];
							B_tvin_wrapc_buffer[hls_map_index].range(15, 0) = B_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_B, "%s\n", (B_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_B, tvin_B);
		}

		tcl_file.set_num(100, &tcl_file.B_depth);
		sprintf(tvin_B, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_B, tvin_B);

		// release memory allocation
		delete [] B_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_C, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_C, tvin_C);

		sc_bv<16>* C_tvin_wrapc_buffer = new sc_bv<16>[100];

		// RTL Name: C
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: C(15, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : C[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : C[0]
						// regulate_c_name       : C
						// input_type_conversion : C[i_0]
						if (&(C[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> C_tmp_mem;
							C_tmp_mem = C[i_0];
							C_tvin_wrapc_buffer[hls_map_index].range(15, 0) = C_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_C, "%s\n", (C_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_C, tvin_C);
		}

		tcl_file.set_num(100, &tcl_file.C_depth);
		sprintf(tvin_C, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_C, tvin_C);

		// release memory allocation
		delete [] C_tvin_wrapc_buffer;

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
		int AESL_return = mibench(A, B, C, OUT);

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
		// release memory allocation: "A"
		delete [] tvin_A;
		// release memory allocation: "B"
		delete [] tvin_B;
		// release memory allocation: "C"
		delete [] tvin_C;
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

