#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("state_deci", 32, hls_out, 0, "ap_vld", "out_data", 1),
	Port_Property("state_deci_ap_vld", 1, hls_out, 0, "ap_vld", "out_vld", 1),
	Port_Property("state_csel", 32, hls_out, 1, "ap_vld", "out_data", 1),
	Port_Property("state_csel_ap_vld", 1, hls_out, 1, "ap_vld", "out_vld", 1),
	Port_Property("state_rsel", 32, hls_out, 2, "ap_vld", "out_data", 1),
	Port_Property("state_rsel_ap_vld", 1, hls_out, 2, "ap_vld", "out_vld", 1),
	Port_Property("state_master_clk", 32, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("state_master_clk_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
	Port_Property("rate", 32, hls_in, 4, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "smrt_info_get";
