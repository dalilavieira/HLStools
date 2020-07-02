#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("ant_conf_div_group", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("ant_conf_main_lna_conf", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("ant_conf_alt_lna_conf", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("ant_conf_fast_div_bias", 32, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("ant_conf_fast_div_bias_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
	Port_Property("ant_conf_alt_gaintb", 32, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("ant_conf_alt_gaintb_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
	Port_Property("ant_conf_main_gaintb", 32, hls_out, 5, "ap_vld", "out_data", 1),
	Port_Property("ant_conf_main_gaintb_ap_vld", 1, hls_out, 5, "ap_vld", "out_vld", 1),
	Port_Property("antcomb_ant_ratio", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("antcomb_fast_div_bias", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("antcomb_scan", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("alt_ratio", 32, hls_in, 9, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "ath_ant_div_conf_fast_divbias";
