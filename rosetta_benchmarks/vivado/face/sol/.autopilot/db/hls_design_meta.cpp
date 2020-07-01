#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("Data_address0", 17, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("Data_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("Data_q0", 8, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("result_x_address0", 7, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("result_x_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("result_x_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("result_x_d0", 32, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("result_y_address0", 7, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("result_y_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("result_y_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("result_y_d0", 32, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("result_w_address0", 7, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("result_w_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("result_w_we0", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("result_w_d0", 32, hls_out, 3, "ap_memory", "mem_din", 1),
	Port_Property("result_h_address0", 7, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("result_h_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("result_h_we0", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("result_h_d0", 32, hls_out, 4, "ap_memory", "mem_din", 1),
	Port_Property("result_size_i", 32, hls_in, 5, "ap_ovld", "in_data", 1),
	Port_Property("result_size_o", 32, hls_out, 5, "ap_ovld", "out_data", 1),
	Port_Property("result_size_o_ap_vld", 1, hls_out, 5, "ap_ovld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "face_detect_sw";
