set moduleName imsttfb_check_var
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {imsttfb_check_var}
set C_modelType { int 32 }
set C_modelArgList {
	{ var_bits_per_pixel int 32 regular {pointer 0}  }
	{ var_xres_virtual int 32 regular {pointer 0}  }
	{ var_xres int 32 regular {pointer 0}  }
	{ var_yres_virtual int 32 regular {pointer 2}  }
	{ var_yres int 32 regular {pointer 0}  }
	{ var_vmode int 32 regular {pointer 1}  }
	{ var_height int 32 regular {pointer 1}  }
	{ var_width int 32 regular {pointer 1}  }
	{ var_left_margin int 32 regular {pointer 1}  }
	{ var_right_margin int 32 regular {pointer 1}  }
	{ var_upper_margin int 32 regular {pointer 1}  }
	{ var_lower_margin int 32 regular {pointer 1}  }
	{ var_hsync_len int 32 regular {pointer 1}  }
	{ var_vsync_len int 32 regular {pointer 1}  }
	{ var_transp_offset int 32 regular {pointer 1}  }
	{ var_transp_length int 32 regular {pointer 1}  }
	{ var_transp_msb_right int 32 regular {pointer 1}  }
	{ var_blue_length int 32 regular {pointer 1}  }
	{ var_blue_msb_right int 32 regular {pointer 1}  }
	{ var_blue_offset int 32 regular {pointer 1}  }
	{ var_green_offset int 32 regular {pointer 1}  }
	{ var_green_length int 32 regular {pointer 2}  }
	{ var_green_msb_right int 32 regular {pointer 1}  }
	{ var_red_offset int 32 regular {pointer 1}  }
	{ var_red_length int 32 regular {pointer 1}  }
	{ var_red_msb_right int 32 regular {pointer 1}  }
	{ var_nonstd int 32 regular {pointer 0}  }
	{ info_fix_smem_len int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "var_bits_per_pixel", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.bits_per_pixel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_xres_virtual", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.xres_virtual","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_xres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.xres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_yres_virtual", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.yres_virtual","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_yres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.yres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_vmode", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.vmode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_height", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.height","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_width", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_left_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.left_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_right_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.right_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_upper_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.upper_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_lower_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.lower_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_hsync_len", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.hsync_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_vsync_len", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.vsync_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_transp_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.transp.offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_transp_length", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.transp.length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_transp_msb_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.transp.msb_right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_blue_length", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.blue.length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_blue_msb_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.blue.msb_right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_blue_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.blue.offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_green_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.green.offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_green_length", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.green.length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_green_msb_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.green.msb_right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_red_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.red.offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_red_length", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.red.length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_red_msb_right", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.red.msb_right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_nonstd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.nonstd","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "info_fix_smem_len", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "info.fix.smem_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ var_bits_per_pixel sc_in sc_lv 32 signal 0 } 
	{ var_xres_virtual sc_in sc_lv 32 signal 1 } 
	{ var_xres sc_in sc_lv 32 signal 2 } 
	{ var_yres_virtual_i sc_in sc_lv 32 signal 3 } 
	{ var_yres_virtual_o sc_out sc_lv 32 signal 3 } 
	{ var_yres_virtual_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ var_yres sc_in sc_lv 32 signal 4 } 
	{ var_vmode sc_out sc_lv 32 signal 5 } 
	{ var_vmode_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ var_height sc_out sc_lv 32 signal 6 } 
	{ var_height_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ var_width sc_out sc_lv 32 signal 7 } 
	{ var_width_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ var_left_margin sc_out sc_lv 32 signal 8 } 
	{ var_left_margin_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ var_right_margin sc_out sc_lv 32 signal 9 } 
	{ var_right_margin_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ var_upper_margin sc_out sc_lv 32 signal 10 } 
	{ var_upper_margin_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ var_lower_margin sc_out sc_lv 32 signal 11 } 
	{ var_lower_margin_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ var_hsync_len sc_out sc_lv 32 signal 12 } 
	{ var_hsync_len_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ var_vsync_len sc_out sc_lv 32 signal 13 } 
	{ var_vsync_len_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ var_transp_offset sc_out sc_lv 32 signal 14 } 
	{ var_transp_offset_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ var_transp_length sc_out sc_lv 32 signal 15 } 
	{ var_transp_length_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ var_transp_msb_right sc_out sc_lv 32 signal 16 } 
	{ var_transp_msb_right_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ var_blue_length sc_out sc_lv 32 signal 17 } 
	{ var_blue_length_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ var_blue_msb_right sc_out sc_lv 32 signal 18 } 
	{ var_blue_msb_right_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ var_blue_offset sc_out sc_lv 32 signal 19 } 
	{ var_blue_offset_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ var_green_offset sc_out sc_lv 32 signal 20 } 
	{ var_green_offset_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ var_green_length_i sc_in sc_lv 32 signal 21 } 
	{ var_green_length_o sc_out sc_lv 32 signal 21 } 
	{ var_green_length_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ var_green_msb_right sc_out sc_lv 32 signal 22 } 
	{ var_green_msb_right_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ var_red_offset sc_out sc_lv 32 signal 23 } 
	{ var_red_offset_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ var_red_length sc_out sc_lv 32 signal 24 } 
	{ var_red_length_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ var_red_msb_right sc_out sc_lv 32 signal 25 } 
	{ var_red_msb_right_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ var_nonstd sc_in sc_lv 32 signal 26 } 
	{ info_fix_smem_len sc_in sc_lv 32 signal 27 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "var_bits_per_pixel", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_bits_per_pixel", "role": "default" }} , 
 	{ "name": "var_xres_virtual", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_xres_virtual", "role": "default" }} , 
 	{ "name": "var_xres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_xres", "role": "default" }} , 
 	{ "name": "var_yres_virtual_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_yres_virtual", "role": "i" }} , 
 	{ "name": "var_yres_virtual_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_yres_virtual", "role": "o" }} , 
 	{ "name": "var_yres_virtual_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_yres_virtual", "role": "o_ap_vld" }} , 
 	{ "name": "var_yres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_yres", "role": "default" }} , 
 	{ "name": "var_vmode", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_vmode", "role": "default" }} , 
 	{ "name": "var_vmode_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_vmode", "role": "ap_vld" }} , 
 	{ "name": "var_height", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_height", "role": "default" }} , 
 	{ "name": "var_height_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_height", "role": "ap_vld" }} , 
 	{ "name": "var_width", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_width", "role": "default" }} , 
 	{ "name": "var_width_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_width", "role": "ap_vld" }} , 
 	{ "name": "var_left_margin", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_left_margin", "role": "default" }} , 
 	{ "name": "var_left_margin_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_left_margin", "role": "ap_vld" }} , 
 	{ "name": "var_right_margin", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_right_margin", "role": "default" }} , 
 	{ "name": "var_right_margin_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_right_margin", "role": "ap_vld" }} , 
 	{ "name": "var_upper_margin", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_upper_margin", "role": "default" }} , 
 	{ "name": "var_upper_margin_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_upper_margin", "role": "ap_vld" }} , 
 	{ "name": "var_lower_margin", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_lower_margin", "role": "default" }} , 
 	{ "name": "var_lower_margin_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_lower_margin", "role": "ap_vld" }} , 
 	{ "name": "var_hsync_len", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_hsync_len", "role": "default" }} , 
 	{ "name": "var_hsync_len_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_hsync_len", "role": "ap_vld" }} , 
 	{ "name": "var_vsync_len", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_vsync_len", "role": "default" }} , 
 	{ "name": "var_vsync_len_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_vsync_len", "role": "ap_vld" }} , 
 	{ "name": "var_transp_offset", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_transp_offset", "role": "default" }} , 
 	{ "name": "var_transp_offset_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_transp_offset", "role": "ap_vld" }} , 
 	{ "name": "var_transp_length", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_transp_length", "role": "default" }} , 
 	{ "name": "var_transp_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_transp_length", "role": "ap_vld" }} , 
 	{ "name": "var_transp_msb_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_transp_msb_right", "role": "default" }} , 
 	{ "name": "var_transp_msb_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_transp_msb_right", "role": "ap_vld" }} , 
 	{ "name": "var_blue_length", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_blue_length", "role": "default" }} , 
 	{ "name": "var_blue_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_blue_length", "role": "ap_vld" }} , 
 	{ "name": "var_blue_msb_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_blue_msb_right", "role": "default" }} , 
 	{ "name": "var_blue_msb_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_blue_msb_right", "role": "ap_vld" }} , 
 	{ "name": "var_blue_offset", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_blue_offset", "role": "default" }} , 
 	{ "name": "var_blue_offset_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_blue_offset", "role": "ap_vld" }} , 
 	{ "name": "var_green_offset", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_green_offset", "role": "default" }} , 
 	{ "name": "var_green_offset_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_green_offset", "role": "ap_vld" }} , 
 	{ "name": "var_green_length_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_green_length", "role": "i" }} , 
 	{ "name": "var_green_length_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_green_length", "role": "o" }} , 
 	{ "name": "var_green_length_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_green_length", "role": "o_ap_vld" }} , 
 	{ "name": "var_green_msb_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_green_msb_right", "role": "default" }} , 
 	{ "name": "var_green_msb_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_green_msb_right", "role": "ap_vld" }} , 
 	{ "name": "var_red_offset", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_red_offset", "role": "default" }} , 
 	{ "name": "var_red_offset_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_red_offset", "role": "ap_vld" }} , 
 	{ "name": "var_red_length", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_red_length", "role": "default" }} , 
 	{ "name": "var_red_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_red_length", "role": "ap_vld" }} , 
 	{ "name": "var_red_msb_right", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_red_msb_right", "role": "default" }} , 
 	{ "name": "var_red_msb_right_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_red_msb_right", "role": "ap_vld" }} , 
 	{ "name": "var_nonstd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_nonstd", "role": "default" }} , 
 	{ "name": "info_fix_smem_len", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "info_fix_smem_len", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "imsttfb_check_var",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "var_bits_per_pixel", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_xres_virtual", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_xres", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_yres_virtual", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "var_yres", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_vmode", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_height", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_width", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_left_margin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_right_margin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_upper_margin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_lower_margin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_hsync_len", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_vsync_len", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_transp_offset", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_transp_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_transp_msb_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_blue_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_blue_msb_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_blue_offset", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_green_offset", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_green_length", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "var_green_msb_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_red_offset", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_red_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_red_msb_right", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_nonstd", "Type" : "None", "Direction" : "I"},
			{"Name" : "info_fix_smem_len", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imsttfb_check_var_sdiv_32ns_32ns_32_36_seq_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imsttfb_check_var_sdiv_32ns_32s_32_36_seq_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	imsttfb_check_var {
		var_bits_per_pixel {Type I LastRead 0 FirstWrite -1}
		var_xres_virtual {Type I LastRead 0 FirstWrite -1}
		var_xres {Type I LastRead 0 FirstWrite -1}
		var_yres_virtual {Type IO LastRead 0 FirstWrite 72}
		var_yres {Type I LastRead 0 FirstWrite -1}
		var_vmode {Type O LastRead -1 FirstWrite 72}
		var_height {Type O LastRead -1 FirstWrite 72}
		var_width {Type O LastRead -1 FirstWrite 72}
		var_left_margin {Type O LastRead -1 FirstWrite 72}
		var_right_margin {Type O LastRead -1 FirstWrite 72}
		var_upper_margin {Type O LastRead -1 FirstWrite 72}
		var_lower_margin {Type O LastRead -1 FirstWrite 72}
		var_hsync_len {Type O LastRead -1 FirstWrite 72}
		var_vsync_len {Type O LastRead -1 FirstWrite 72}
		var_transp_offset {Type O LastRead -1 FirstWrite 2}
		var_transp_length {Type O LastRead -1 FirstWrite 2}
		var_transp_msb_right {Type O LastRead -1 FirstWrite 72}
		var_blue_length {Type O LastRead -1 FirstWrite 2}
		var_blue_msb_right {Type O LastRead -1 FirstWrite 72}
		var_blue_offset {Type O LastRead -1 FirstWrite 2}
		var_green_offset {Type O LastRead -1 FirstWrite 2}
		var_green_length {Type IO LastRead 2 FirstWrite 2}
		var_green_msb_right {Type O LastRead -1 FirstWrite 72}
		var_red_offset {Type O LastRead -1 FirstWrite 2}
		var_red_length {Type O LastRead -1 FirstWrite 2}
		var_red_msb_right {Type O LastRead -1 FirstWrite 72}
		var_nonstd {Type I LastRead 0 FirstWrite -1}
		info_fix_smem_len {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "72"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	var_bits_per_pixel { ap_none {  { var_bits_per_pixel in_data 0 32 } } }
	var_xres_virtual { ap_none {  { var_xres_virtual in_data 0 32 } } }
	var_xres { ap_none {  { var_xres in_data 0 32 } } }
	var_yres_virtual { ap_ovld {  { var_yres_virtual_i in_data 0 32 }  { var_yres_virtual_o out_data 1 32 }  { var_yres_virtual_o_ap_vld out_vld 1 1 } } }
	var_yres { ap_none {  { var_yres in_data 0 32 } } }
	var_vmode { ap_vld {  { var_vmode out_data 1 32 }  { var_vmode_ap_vld out_vld 1 1 } } }
	var_height { ap_vld {  { var_height out_data 1 32 }  { var_height_ap_vld out_vld 1 1 } } }
	var_width { ap_vld {  { var_width out_data 1 32 }  { var_width_ap_vld out_vld 1 1 } } }
	var_left_margin { ap_vld {  { var_left_margin out_data 1 32 }  { var_left_margin_ap_vld out_vld 1 1 } } }
	var_right_margin { ap_vld {  { var_right_margin out_data 1 32 }  { var_right_margin_ap_vld out_vld 1 1 } } }
	var_upper_margin { ap_vld {  { var_upper_margin out_data 1 32 }  { var_upper_margin_ap_vld out_vld 1 1 } } }
	var_lower_margin { ap_vld {  { var_lower_margin out_data 1 32 }  { var_lower_margin_ap_vld out_vld 1 1 } } }
	var_hsync_len { ap_vld {  { var_hsync_len out_data 1 32 }  { var_hsync_len_ap_vld out_vld 1 1 } } }
	var_vsync_len { ap_vld {  { var_vsync_len out_data 1 32 }  { var_vsync_len_ap_vld out_vld 1 1 } } }
	var_transp_offset { ap_vld {  { var_transp_offset out_data 1 32 }  { var_transp_offset_ap_vld out_vld 1 1 } } }
	var_transp_length { ap_vld {  { var_transp_length out_data 1 32 }  { var_transp_length_ap_vld out_vld 1 1 } } }
	var_transp_msb_right { ap_vld {  { var_transp_msb_right out_data 1 32 }  { var_transp_msb_right_ap_vld out_vld 1 1 } } }
	var_blue_length { ap_vld {  { var_blue_length out_data 1 32 }  { var_blue_length_ap_vld out_vld 1 1 } } }
	var_blue_msb_right { ap_vld {  { var_blue_msb_right out_data 1 32 }  { var_blue_msb_right_ap_vld out_vld 1 1 } } }
	var_blue_offset { ap_vld {  { var_blue_offset out_data 1 32 }  { var_blue_offset_ap_vld out_vld 1 1 } } }
	var_green_offset { ap_vld {  { var_green_offset out_data 1 32 }  { var_green_offset_ap_vld out_vld 1 1 } } }
	var_green_length { ap_ovld {  { var_green_length_i in_data 0 32 }  { var_green_length_o out_data 1 32 }  { var_green_length_o_ap_vld out_vld 1 1 } } }
	var_green_msb_right { ap_vld {  { var_green_msb_right out_data 1 32 }  { var_green_msb_right_ap_vld out_vld 1 1 } } }
	var_red_offset { ap_vld {  { var_red_offset out_data 1 32 }  { var_red_offset_ap_vld out_vld 1 1 } } }
	var_red_length { ap_vld {  { var_red_length out_data 1 32 }  { var_red_length_ap_vld out_vld 1 1 } } }
	var_red_msb_right { ap_vld {  { var_red_msb_right out_data 1 32 }  { var_red_msb_right_ap_vld out_vld 1 1 } } }
	var_nonstd { ap_none {  { var_nonstd in_data 0 32 } } }
	info_fix_smem_len { ap_none {  { info_fix_smem_len in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
