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


// wrapc file define: "data_in"
#define AUTOTB_TVIN_data_in  "../tv/cdatafile/c.kmeans.autotvin_data_in.dat"
// wrapc file define: "data_out"
#define AUTOTB_TVIN_data_out  "../tv/cdatafile/c.kmeans.autotvin_data_out.dat"
#define AUTOTB_TVOUT_data_out  "../tv/cdatafile/c.kmeans.autotvout_data_out.dat"
// wrapc file define: "centroids"
#define AUTOTB_TVIN_centroids  "../tv/cdatafile/c.kmeans.autotvin_centroids.dat"
// wrapc file define: "num_clusters"
#define AUTOTB_TVIN_num_clusters  "../tv/cdatafile/c.kmeans.autotvin_num_clusters.dat"
// wrapc file define: "num_dim"
#define AUTOTB_TVIN_num_dim  "../tv/cdatafile/c.kmeans.autotvin_num_dim.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.kmeans.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "data_out"
#define AUTOTB_TVOUT_PC_data_out  "../tv/rtldatafile/rtl.kmeans.autotvout_data_out.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.kmeans.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			data_in_depth = 0;
			data_out_depth = 0;
			centroids_depth = 0;
			num_clusters_depth = 0;
			num_dim_depth = 0;
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
			total_list << "{data_in " << data_in_depth << "}\n";
			total_list << "{data_out " << data_out_depth << "}\n";
			total_list << "{centroids " << centroids_depth << "}\n";
			total_list << "{num_clusters " << num_clusters_depth << "}\n";
			total_list << "{num_dim " << num_dim_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int data_in_depth;
		int data_out_depth;
		int centroids_depth;
		int num_clusters_depth;
		int num_dim_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern int kmeans (
short data_in[10000],
int data_out[100],
short centroids[999900],
int num_clusters,
int num_dim);

int AESL_WRAP_kmeans (
short data_in[10000],
int data_out[100],
short centroids[999900],
int num_clusters,
int num_dim)
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

		// output port post check: "data_out"
		aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // data

			sc_bv<32> *data_out_pc_buffer = new sc_bv<32>[100];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_out', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_out', possible cause: There are uninitialized variables in the C design." << endl;
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
					data_out_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_data_out))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: data_out
				{
					// bitslice(31, 0)
					// {
						// celement: data_out(31, 0)
						// {
							sc_lv<32>* data_out_lv0_0_99_1 = new sc_lv<32>[100];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: data_out(31, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
								{
									data_out_lv0_0_99_1[hls_map_index].range(31, 0) = sc_bv<32>(data_out_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: data_out(31, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : data_out[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : data_out[0]
								// output_left_conversion : data_out[i_0]
								// output_type_conversion : (data_out_lv0_0_99_1[hls_map_index]).to_uint64()
								if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
								{
									data_out[i_0] = (data_out_lv0_0_99_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] data_out_pc_buffer;
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

		// "data_in"
		char* tvin_data_in = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_in);

		// "data_out"
		char* tvin_data_out = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_out);
		char* tvout_data_out = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_data_out);

		// "centroids"
		char* tvin_centroids = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_centroids);

		// "num_clusters"
		char* tvin_num_clusters = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_num_clusters);

		// "num_dim"
		char* tvin_num_dim = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_num_dim);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_data_in, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);

		sc_bv<16>* data_in_tvin_wrapc_buffer = new sc_bv<16>[10000];

		// RTL Name: data_in
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: data_in(15, 0)
				{
					// carray: (0) => (9999) @ (1)
					for (int i_0 = 0; i_0 <= 9999; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_in[0]
						// regulate_c_name       : data_in
						// input_type_conversion : data_in[i_0]
						if (&(data_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> data_in_tmp_mem;
							data_in_tmp_mem = data_in[i_0];
							data_in_tvin_wrapc_buffer[hls_map_index].range(15, 0) = data_in_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10000; i++)
		{
			sprintf(tvin_data_in, "%s\n", (data_in_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);
		}

		tcl_file.set_num(10000, &tcl_file.data_in_depth);
		sprintf(tvin_data_in, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);

		// release memory allocation
		delete [] data_in_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_data_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_out, tvin_data_out);

		sc_bv<32>* data_out_tvin_wrapc_buffer = new sc_bv<32>[100];

		// RTL Name: data_out
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: data_out(31, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_out[0]
						// regulate_c_name       : data_out
						// input_type_conversion : data_out[i_0]
						if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_out_tmp_mem;
							data_out_tmp_mem = data_out[i_0];
							data_out_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_out_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_data_out, "%s\n", (data_out_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_out, tvin_data_out);
		}

		tcl_file.set_num(100, &tcl_file.data_out_depth);
		sprintf(tvin_data_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_out, tvin_data_out);

		// release memory allocation
		delete [] data_out_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_centroids, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_centroids, tvin_centroids);

		sc_bv<16>* centroids_tvin_wrapc_buffer = new sc_bv<16>[999900];

		// RTL Name: centroids
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: centroids(15, 0)
				{
					// carray: (0) => (999899) @ (1)
					for (int i_0 = 0; i_0 <= 999899; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : centroids[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : centroids[0]
						// regulate_c_name       : centroids
						// input_type_conversion : centroids[i_0]
						if (&(centroids[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> centroids_tmp_mem;
							centroids_tmp_mem = centroids[i_0];
							centroids_tvin_wrapc_buffer[hls_map_index].range(15, 0) = centroids_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 999900; i++)
		{
			sprintf(tvin_centroids, "%s\n", (centroids_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_centroids, tvin_centroids);
		}

		tcl_file.set_num(999900, &tcl_file.centroids_depth);
		sprintf(tvin_centroids, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_centroids, tvin_centroids);

		// release memory allocation
		delete [] centroids_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_num_clusters, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_num_clusters, tvin_num_clusters);

		sc_bv<32> num_clusters_tvin_wrapc_buffer;

		// RTL Name: num_clusters
		{
			// bitslice(31, 0)
			{
				// celement: num_clusters(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : num_clusters
						// sub_1st_elem          : 
						// ori_name_1st_elem     : num_clusters
						// regulate_c_name       : num_clusters
						// input_type_conversion : num_clusters
						if (&(num_clusters) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> num_clusters_tmp_mem;
							num_clusters_tmp_mem = num_clusters;
							num_clusters_tvin_wrapc_buffer.range(31, 0) = num_clusters_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_num_clusters, "%s\n", (num_clusters_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_num_clusters, tvin_num_clusters);
		}

		tcl_file.set_num(1, &tcl_file.num_clusters_depth);
		sprintf(tvin_num_clusters, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_num_clusters, tvin_num_clusters);

		// [[transaction]]
		sprintf(tvin_num_dim, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_num_dim, tvin_num_dim);

		sc_bv<32> num_dim_tvin_wrapc_buffer;

		// RTL Name: num_dim
		{
			// bitslice(31, 0)
			{
				// celement: num_dim(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : num_dim
						// sub_1st_elem          : 
						// ori_name_1st_elem     : num_dim
						// regulate_c_name       : num_dim
						// input_type_conversion : num_dim
						if (&(num_dim) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> num_dim_tmp_mem;
							num_dim_tmp_mem = num_dim;
							num_dim_tvin_wrapc_buffer.range(31, 0) = num_dim_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_num_dim, "%s\n", (num_dim_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_num_dim, tvin_num_dim);
		}

		tcl_file.set_num(1, &tcl_file.num_dim_depth);
		sprintf(tvin_num_dim, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_num_dim, tvin_num_dim);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		int AESL_return = kmeans(data_in, data_out, centroids, num_clusters, num_dim);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_data_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);

		sc_bv<32>* data_out_tvout_wrapc_buffer = new sc_bv<32>[100];

		// RTL Name: data_out
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: data_out(31, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_out[0]
						// regulate_c_name       : data_out
						// input_type_conversion : data_out[i_0]
						if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_out_tmp_mem;
							data_out_tmp_mem = data_out[i_0];
							data_out_tvout_wrapc_buffer[hls_map_index].range(31, 0) = data_out_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvout_data_out, "%s\n", (data_out_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);
		}

		tcl_file.set_num(100, &tcl_file.data_out_depth);
		sprintf(tvout_data_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);

		// release memory allocation
		delete [] data_out_tvout_wrapc_buffer;

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
		// release memory allocation: "data_in"
		delete [] tvin_data_in;
		// release memory allocation: "data_out"
		delete [] tvin_data_out;
		delete [] tvout_data_out;
		// release memory allocation: "centroids"
		delete [] tvin_centroids;
		// release memory allocation: "num_clusters"
		delete [] tvin_num_clusters;
		// release memory allocation: "num_dim"
		delete [] tvin_num_dim;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

