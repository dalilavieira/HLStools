#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("xgifb_info_chip", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("xgifb_info_display2", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("xgifb_info_video_size", 64, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("xgifb_info_TV_type", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("xgifb_info_hasVB", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("xgifb_info_lvds_data_LVDSHDE", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("xgifb_info_lvds_data_LVDSVDE", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("xgifb_info_hw_info_ulCRT2LCDType", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("xgifb_info_hw_info_ulExternalChip", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("myindex", 32, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("ap_return", 32, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "XGIfb_validate_mode";
