set moduleName ivtv_yuv_window_setup
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
set C_modelName {ivtv_yuv_window_setup}
set C_modelType { int 32 }
set C_modelArgList {
	{ itv_yuv_info_osd_x_offset int 32 regular {pointer 0}  }
	{ itv_yuv_info_osd_y_offset int 32 regular {pointer 0}  }
	{ itv_yuv_info_track_osd int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_src_x int 32 unused {pointer 0}  }
	{ itv_yuv_info_old_frame_info_src_y int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_src_w int 32 unused {pointer 0}  }
	{ itv_yuv_info_old_frame_info_dst_w int 32 unused {pointer 0}  }
	{ itv_yuv_info_old_frame_info_src_h int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_dst_h int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_interlaced_y int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_pan_y int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_dst_y int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_vis_h int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_pan_x int 32 unused {pointer 0}  }
	{ itv_yuv_info_old_frame_info_dst_x int 32 unused {pointer 0}  }
	{ itv_yuv_info_old_frame_info_vis_w int 32 unused {pointer 0}  }
	{ itv_yuv_info_old_frame_info_lace_mode int 32 regular {pointer 0}  }
	{ itv_yuv_info_old_frame_info_interlaced_uv int 32 regular {pointer 0}  }
	{ f_src_x int 32 regular {pointer 2}  }
	{ f_src_y int 32 regular {pointer 2}  }
	{ f_src_w int 32 regular {pointer 2}  }
	{ f_dst_w int 32 regular {pointer 2}  }
	{ f_src_h int 32 regular {pointer 2}  }
	{ f_dst_h int 32 regular {pointer 2}  }
	{ f_interlaced_y int 32 regular {pointer 2}  }
	{ f_pan_y int 32 regular {pointer 0}  }
	{ f_dst_y int 32 regular {pointer 2}  }
	{ f_vis_h int 32 regular {pointer 0}  }
	{ f_pan_x int 32 regular {pointer 0}  }
	{ f_dst_x int 32 regular {pointer 2}  }
	{ f_vis_w int 32 regular {pointer 0}  }
	{ f_lace_mode int 32 regular {pointer 0}  }
	{ f_interlaced_uv int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "itv_yuv_info_osd_x_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.osd_x_offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_osd_y_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.osd_y_offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_track_osd", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.track_osd","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_src_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.src_x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_src_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.src_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_src_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.src_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_dst_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.dst_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_src_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.src_h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_dst_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.dst_h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_interlaced_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.interlaced_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_pan_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.pan_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_dst_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.dst_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_vis_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.vis_h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_pan_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.pan_x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_dst_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.dst_x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_vis_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.vis_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_lace_mode", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.lace_mode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "itv_yuv_info_old_frame_info_interlaced_uv", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "itv.yuv_info.old_frame_info.interlaced_uv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_src_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.src_x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_src_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.src_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_src_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.src_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_dst_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.dst_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_src_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.src_h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_dst_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.dst_h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_interlaced_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.interlaced_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_pan_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.pan_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_dst_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.dst_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_vis_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.vis_h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_pan_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.pan_x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_dst_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.dst_x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_vis_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.vis_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_lace_mode", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.lace_mode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "f_interlaced_uv", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "f.interlaced_uv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "u32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ itv_yuv_info_osd_x_offset sc_in sc_lv 32 signal 0 } 
	{ itv_yuv_info_osd_y_offset sc_in sc_lv 32 signal 1 } 
	{ itv_yuv_info_track_osd sc_in sc_lv 32 signal 2 } 
	{ itv_yuv_info_old_frame_info_src_x sc_in sc_lv 32 signal 3 } 
	{ itv_yuv_info_old_frame_info_src_y sc_in sc_lv 32 signal 4 } 
	{ itv_yuv_info_old_frame_info_src_w sc_in sc_lv 32 signal 5 } 
	{ itv_yuv_info_old_frame_info_dst_w sc_in sc_lv 32 signal 6 } 
	{ itv_yuv_info_old_frame_info_src_h sc_in sc_lv 32 signal 7 } 
	{ itv_yuv_info_old_frame_info_dst_h sc_in sc_lv 32 signal 8 } 
	{ itv_yuv_info_old_frame_info_interlaced_y sc_in sc_lv 32 signal 9 } 
	{ itv_yuv_info_old_frame_info_pan_y sc_in sc_lv 32 signal 10 } 
	{ itv_yuv_info_old_frame_info_dst_y sc_in sc_lv 32 signal 11 } 
	{ itv_yuv_info_old_frame_info_vis_h sc_in sc_lv 32 signal 12 } 
	{ itv_yuv_info_old_frame_info_pan_x sc_in sc_lv 32 signal 13 } 
	{ itv_yuv_info_old_frame_info_dst_x sc_in sc_lv 32 signal 14 } 
	{ itv_yuv_info_old_frame_info_vis_w sc_in sc_lv 32 signal 15 } 
	{ itv_yuv_info_old_frame_info_lace_mode sc_in sc_lv 32 signal 16 } 
	{ itv_yuv_info_old_frame_info_interlaced_uv sc_in sc_lv 32 signal 17 } 
	{ f_src_x_i sc_in sc_lv 32 signal 18 } 
	{ f_src_x_o sc_out sc_lv 32 signal 18 } 
	{ f_src_x_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ f_src_y_i sc_in sc_lv 32 signal 19 } 
	{ f_src_y_o sc_out sc_lv 32 signal 19 } 
	{ f_src_y_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ f_src_w_i sc_in sc_lv 32 signal 20 } 
	{ f_src_w_o sc_out sc_lv 32 signal 20 } 
	{ f_src_w_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ f_dst_w_i sc_in sc_lv 32 signal 21 } 
	{ f_dst_w_o sc_out sc_lv 32 signal 21 } 
	{ f_dst_w_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ f_src_h_i sc_in sc_lv 32 signal 22 } 
	{ f_src_h_o sc_out sc_lv 32 signal 22 } 
	{ f_src_h_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ f_dst_h_i sc_in sc_lv 32 signal 23 } 
	{ f_dst_h_o sc_out sc_lv 32 signal 23 } 
	{ f_dst_h_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ f_interlaced_y_i sc_in sc_lv 32 signal 24 } 
	{ f_interlaced_y_o sc_out sc_lv 32 signal 24 } 
	{ f_interlaced_y_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ f_pan_y sc_in sc_lv 32 signal 25 } 
	{ f_dst_y_i sc_in sc_lv 32 signal 26 } 
	{ f_dst_y_o sc_out sc_lv 32 signal 26 } 
	{ f_dst_y_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ f_vis_h sc_in sc_lv 32 signal 27 } 
	{ f_pan_x sc_in sc_lv 32 signal 28 } 
	{ f_dst_x_i sc_in sc_lv 32 signal 29 } 
	{ f_dst_x_o sc_out sc_lv 32 signal 29 } 
	{ f_dst_x_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ f_vis_w sc_in sc_lv 32 signal 30 } 
	{ f_lace_mode sc_in sc_lv 32 signal 31 } 
	{ f_interlaced_uv sc_in sc_lv 32 signal 32 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "itv_yuv_info_osd_x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_osd_x_offset", "role": "default" }} , 
 	{ "name": "itv_yuv_info_osd_y_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_osd_y_offset", "role": "default" }} , 
 	{ "name": "itv_yuv_info_track_osd", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_track_osd", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_src_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_src_x", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_src_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_src_y", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_src_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_src_w", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_dst_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_dst_w", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_src_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_src_h", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_dst_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_dst_h", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_interlaced_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_interlaced_y", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_pan_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_pan_y", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_dst_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_dst_y", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_vis_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_vis_h", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_pan_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_pan_x", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_dst_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_dst_x", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_vis_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_vis_w", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_lace_mode", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_lace_mode", "role": "default" }} , 
 	{ "name": "itv_yuv_info_old_frame_info_interlaced_uv", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "itv_yuv_info_old_frame_info_interlaced_uv", "role": "default" }} , 
 	{ "name": "f_src_x_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_src_x", "role": "i" }} , 
 	{ "name": "f_src_x_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_src_x", "role": "o" }} , 
 	{ "name": "f_src_x_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_src_x", "role": "o_ap_vld" }} , 
 	{ "name": "f_src_y_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_src_y", "role": "i" }} , 
 	{ "name": "f_src_y_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_src_y", "role": "o" }} , 
 	{ "name": "f_src_y_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_src_y", "role": "o_ap_vld" }} , 
 	{ "name": "f_src_w_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_src_w", "role": "i" }} , 
 	{ "name": "f_src_w_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_src_w", "role": "o" }} , 
 	{ "name": "f_src_w_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_src_w", "role": "o_ap_vld" }} , 
 	{ "name": "f_dst_w_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_dst_w", "role": "i" }} , 
 	{ "name": "f_dst_w_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_dst_w", "role": "o" }} , 
 	{ "name": "f_dst_w_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_dst_w", "role": "o_ap_vld" }} , 
 	{ "name": "f_src_h_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_src_h", "role": "i" }} , 
 	{ "name": "f_src_h_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_src_h", "role": "o" }} , 
 	{ "name": "f_src_h_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_src_h", "role": "o_ap_vld" }} , 
 	{ "name": "f_dst_h_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_dst_h", "role": "i" }} , 
 	{ "name": "f_dst_h_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_dst_h", "role": "o" }} , 
 	{ "name": "f_dst_h_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_dst_h", "role": "o_ap_vld" }} , 
 	{ "name": "f_interlaced_y_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_interlaced_y", "role": "i" }} , 
 	{ "name": "f_interlaced_y_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_interlaced_y", "role": "o" }} , 
 	{ "name": "f_interlaced_y_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_interlaced_y", "role": "o_ap_vld" }} , 
 	{ "name": "f_pan_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_pan_y", "role": "default" }} , 
 	{ "name": "f_dst_y_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_dst_y", "role": "i" }} , 
 	{ "name": "f_dst_y_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_dst_y", "role": "o" }} , 
 	{ "name": "f_dst_y_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_dst_y", "role": "o_ap_vld" }} , 
 	{ "name": "f_vis_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_vis_h", "role": "default" }} , 
 	{ "name": "f_pan_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_pan_x", "role": "default" }} , 
 	{ "name": "f_dst_x_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_dst_x", "role": "i" }} , 
 	{ "name": "f_dst_x_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_dst_x", "role": "o" }} , 
 	{ "name": "f_dst_x_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_dst_x", "role": "o_ap_vld" }} , 
 	{ "name": "f_vis_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_vis_w", "role": "default" }} , 
 	{ "name": "f_lace_mode", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_lace_mode", "role": "default" }} , 
 	{ "name": "f_interlaced_uv", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_interlaced_uv", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ivtv_yuv_window_setup",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "itv_yuv_info_osd_x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_osd_y_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_track_osd", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_src_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_src_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_src_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_dst_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_src_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_dst_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_interlaced_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_pan_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_dst_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_vis_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_pan_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_dst_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_vis_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_lace_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "itv_yuv_info_old_frame_info_interlaced_uv", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_src_x", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_src_y", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_src_w", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_dst_w", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_src_h", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_dst_h", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_interlaced_y", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_pan_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_dst_y", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_vis_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_pan_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_dst_x", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_vis_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_lace_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_interlaced_uv", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ivtv_yuv_window_setup_sdiv_32ns_32ns_32_36_seq_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ivtv_yuv_window_setup_sdiv_32ns_32ns_32_36_seq_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ivtv_yuv_window_setup {
		itv_yuv_info_osd_x_offset {Type I LastRead 35 FirstWrite -1}
		itv_yuv_info_osd_y_offset {Type I LastRead 35 FirstWrite -1}
		itv_yuv_info_track_osd {Type I LastRead 35 FirstWrite -1}
		itv_yuv_info_old_frame_info_src_x {Type I LastRead -1 FirstWrite -1}
		itv_yuv_info_old_frame_info_src_y {Type I LastRead 38 FirstWrite -1}
		itv_yuv_info_old_frame_info_src_w {Type I LastRead -1 FirstWrite -1}
		itv_yuv_info_old_frame_info_dst_w {Type I LastRead -1 FirstWrite -1}
		itv_yuv_info_old_frame_info_src_h {Type I LastRead 38 FirstWrite -1}
		itv_yuv_info_old_frame_info_dst_h {Type I LastRead 38 FirstWrite -1}
		itv_yuv_info_old_frame_info_interlaced_y {Type I LastRead 38 FirstWrite -1}
		itv_yuv_info_old_frame_info_pan_y {Type I LastRead 38 FirstWrite -1}
		itv_yuv_info_old_frame_info_dst_y {Type I LastRead 38 FirstWrite -1}
		itv_yuv_info_old_frame_info_vis_h {Type I LastRead 38 FirstWrite -1}
		itv_yuv_info_old_frame_info_pan_x {Type I LastRead -1 FirstWrite -1}
		itv_yuv_info_old_frame_info_dst_x {Type I LastRead -1 FirstWrite -1}
		itv_yuv_info_old_frame_info_vis_w {Type I LastRead -1 FirstWrite -1}
		itv_yuv_info_old_frame_info_lace_mode {Type I LastRead 38 FirstWrite -1}
		itv_yuv_info_old_frame_info_interlaced_uv {Type I LastRead 38 FirstWrite -1}
		f_src_x {Type IO LastRead 0 FirstWrite 39}
		f_src_y {Type IO LastRead 0 FirstWrite 39}
		f_src_w {Type IO LastRead 0 FirstWrite 39}
		f_dst_w {Type IO LastRead 0 FirstWrite 39}
		f_src_h {Type IO LastRead 0 FirstWrite 39}
		f_dst_h {Type IO LastRead 0 FirstWrite 39}
		f_interlaced_y {Type IO LastRead 38 FirstWrite 0}
		f_pan_y {Type I LastRead 35 FirstWrite -1}
		f_dst_y {Type IO LastRead 35 FirstWrite 38}
		f_vis_h {Type I LastRead 35 FirstWrite -1}
		f_pan_x {Type I LastRead 35 FirstWrite -1}
		f_dst_x {Type IO LastRead 35 FirstWrite 35}
		f_vis_w {Type I LastRead 35 FirstWrite -1}
		f_lace_mode {Type I LastRead 38 FirstWrite -1}
		f_interlaced_uv {Type I LastRead 38 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "39"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "40"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	itv_yuv_info_osd_x_offset { ap_none {  { itv_yuv_info_osd_x_offset in_data 0 32 } } }
	itv_yuv_info_osd_y_offset { ap_none {  { itv_yuv_info_osd_y_offset in_data 0 32 } } }
	itv_yuv_info_track_osd { ap_none {  { itv_yuv_info_track_osd in_data 0 32 } } }
	itv_yuv_info_old_frame_info_src_x { ap_none {  { itv_yuv_info_old_frame_info_src_x in_data 0 32 } } }
	itv_yuv_info_old_frame_info_src_y { ap_none {  { itv_yuv_info_old_frame_info_src_y in_data 0 32 } } }
	itv_yuv_info_old_frame_info_src_w { ap_none {  { itv_yuv_info_old_frame_info_src_w in_data 0 32 } } }
	itv_yuv_info_old_frame_info_dst_w { ap_none {  { itv_yuv_info_old_frame_info_dst_w in_data 0 32 } } }
	itv_yuv_info_old_frame_info_src_h { ap_none {  { itv_yuv_info_old_frame_info_src_h in_data 0 32 } } }
	itv_yuv_info_old_frame_info_dst_h { ap_none {  { itv_yuv_info_old_frame_info_dst_h in_data 0 32 } } }
	itv_yuv_info_old_frame_info_interlaced_y { ap_none {  { itv_yuv_info_old_frame_info_interlaced_y in_data 0 32 } } }
	itv_yuv_info_old_frame_info_pan_y { ap_none {  { itv_yuv_info_old_frame_info_pan_y in_data 0 32 } } }
	itv_yuv_info_old_frame_info_dst_y { ap_none {  { itv_yuv_info_old_frame_info_dst_y in_data 0 32 } } }
	itv_yuv_info_old_frame_info_vis_h { ap_none {  { itv_yuv_info_old_frame_info_vis_h in_data 0 32 } } }
	itv_yuv_info_old_frame_info_pan_x { ap_none {  { itv_yuv_info_old_frame_info_pan_x in_data 0 32 } } }
	itv_yuv_info_old_frame_info_dst_x { ap_none {  { itv_yuv_info_old_frame_info_dst_x in_data 0 32 } } }
	itv_yuv_info_old_frame_info_vis_w { ap_none {  { itv_yuv_info_old_frame_info_vis_w in_data 0 32 } } }
	itv_yuv_info_old_frame_info_lace_mode { ap_none {  { itv_yuv_info_old_frame_info_lace_mode in_data 0 32 } } }
	itv_yuv_info_old_frame_info_interlaced_uv { ap_none {  { itv_yuv_info_old_frame_info_interlaced_uv in_data 0 32 } } }
	f_src_x { ap_ovld {  { f_src_x_i in_data 0 32 }  { f_src_x_o out_data 1 32 }  { f_src_x_o_ap_vld out_vld 1 1 } } }
	f_src_y { ap_ovld {  { f_src_y_i in_data 0 32 }  { f_src_y_o out_data 1 32 }  { f_src_y_o_ap_vld out_vld 1 1 } } }
	f_src_w { ap_ovld {  { f_src_w_i in_data 0 32 }  { f_src_w_o out_data 1 32 }  { f_src_w_o_ap_vld out_vld 1 1 } } }
	f_dst_w { ap_ovld {  { f_dst_w_i in_data 0 32 }  { f_dst_w_o out_data 1 32 }  { f_dst_w_o_ap_vld out_vld 1 1 } } }
	f_src_h { ap_ovld {  { f_src_h_i in_data 0 32 }  { f_src_h_o out_data 1 32 }  { f_src_h_o_ap_vld out_vld 1 1 } } }
	f_dst_h { ap_ovld {  { f_dst_h_i in_data 0 32 }  { f_dst_h_o out_data 1 32 }  { f_dst_h_o_ap_vld out_vld 1 1 } } }
	f_interlaced_y { ap_ovld {  { f_interlaced_y_i in_data 0 32 }  { f_interlaced_y_o out_data 1 32 }  { f_interlaced_y_o_ap_vld out_vld 1 1 } } }
	f_pan_y { ap_none {  { f_pan_y in_data 0 32 } } }
	f_dst_y { ap_ovld {  { f_dst_y_i in_data 0 32 }  { f_dst_y_o out_data 1 32 }  { f_dst_y_o_ap_vld out_vld 1 1 } } }
	f_vis_h { ap_none {  { f_vis_h in_data 0 32 } } }
	f_pan_x { ap_none {  { f_pan_x in_data 0 32 } } }
	f_dst_x { ap_ovld {  { f_dst_x_i in_data 0 32 }  { f_dst_x_o out_data 1 32 }  { f_dst_x_o_ap_vld out_vld 1 1 } } }
	f_vis_w { ap_none {  { f_vis_w in_data 0 32 } } }
	f_lace_mode { ap_none {  { f_lace_mode in_data 0 32 } } }
	f_interlaced_uv { ap_none {  { f_interlaced_uv in_data 0 32 } } }
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
