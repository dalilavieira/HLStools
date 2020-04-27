#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("a_address0", 7, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("a_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("a_q0", 16, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("out_r_address0", 7, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("out_r_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("out_r_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("out_r_d0", 32, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("out_r_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("ap_return", 32, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "loopback";
