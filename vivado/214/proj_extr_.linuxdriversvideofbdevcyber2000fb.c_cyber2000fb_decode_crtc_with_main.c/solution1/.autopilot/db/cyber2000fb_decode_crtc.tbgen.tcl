set moduleName cyber2000fb_decode_crtc
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
set C_modelName {cyber2000fb_decode_crtc}
set C_modelType { int 32 }
set C_modelArgList {
	{ hw_crtc int 32 regular {array 1000 { 0 0 } 0 1 }  }
	{ hw_pitch int 32 regular {pointer 0 volatile }  }
	{ hw_crtc_ofl int 32 regular {pointer 2 volatile }  }
	{ cfb_dummy int 32 unused {pointer 0}  }
	{ var_xres int 32 regular {pointer 0 volatile }  }
	{ var_right_margin int 32 regular {pointer 0 volatile }  }
	{ var_hsync_len int 32 regular {pointer 0 volatile }  }
	{ var_left_margin int 32 regular {pointer 0 volatile }  }
	{ var_yres int 32 regular {pointer 0 volatile }  }
	{ var_lower_margin int 32 regular {pointer 0 volatile }  }
	{ var_vsync_len int 32 regular {pointer 0 volatile }  }
	{ var_upper_margin int 32 regular {pointer 0 volatile }  }
	{ var_vmode int 32 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hw_crtc", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hw.crtc","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "hw_pitch", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hw.pitch","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hw_crtc_ofl", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hw.crtc_ofl","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "cfb_dummy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cfb.dummy","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_xres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.xres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_right_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.right_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_hsync_len", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.hsync_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_left_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.left_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_yres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.yres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_lower_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.lower_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_vsync_len", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.vsync_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_upper_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.upper_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_vmode", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.vmode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hw_crtc_address0 sc_out sc_lv 10 signal 0 } 
	{ hw_crtc_ce0 sc_out sc_logic 1 signal 0 } 
	{ hw_crtc_we0 sc_out sc_logic 1 signal 0 } 
	{ hw_crtc_d0 sc_out sc_lv 32 signal 0 } 
	{ hw_crtc_address1 sc_out sc_lv 10 signal 0 } 
	{ hw_crtc_ce1 sc_out sc_logic 1 signal 0 } 
	{ hw_crtc_we1 sc_out sc_logic 1 signal 0 } 
	{ hw_crtc_d1 sc_out sc_lv 32 signal 0 } 
	{ hw_pitch sc_in sc_lv 32 signal 1 } 
	{ hw_crtc_ofl_i sc_in sc_lv 32 signal 2 } 
	{ hw_crtc_ofl_o sc_out sc_lv 32 signal 2 } 
	{ hw_crtc_ofl_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ cfb_dummy sc_in sc_lv 32 signal 3 } 
	{ var_xres sc_in sc_lv 32 signal 4 } 
	{ var_right_margin sc_in sc_lv 32 signal 5 } 
	{ var_hsync_len sc_in sc_lv 32 signal 6 } 
	{ var_left_margin sc_in sc_lv 32 signal 7 } 
	{ var_yres sc_in sc_lv 32 signal 8 } 
	{ var_lower_margin sc_in sc_lv 32 signal 9 } 
	{ var_vsync_len sc_in sc_lv 32 signal 10 } 
	{ var_upper_margin sc_in sc_lv 32 signal 11 } 
	{ var_vmode sc_in sc_lv 32 signal 12 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hw_crtc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "hw_crtc", "role": "address0" }} , 
 	{ "name": "hw_crtc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_crtc", "role": "ce0" }} , 
 	{ "name": "hw_crtc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_crtc", "role": "we0" }} , 
 	{ "name": "hw_crtc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hw_crtc", "role": "d0" }} , 
 	{ "name": "hw_crtc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "hw_crtc", "role": "address1" }} , 
 	{ "name": "hw_crtc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_crtc", "role": "ce1" }} , 
 	{ "name": "hw_crtc_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_crtc", "role": "we1" }} , 
 	{ "name": "hw_crtc_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hw_crtc", "role": "d1" }} , 
 	{ "name": "hw_pitch", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hw_pitch", "role": "default" }} , 
 	{ "name": "hw_crtc_ofl_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hw_crtc_ofl", "role": "i" }} , 
 	{ "name": "hw_crtc_ofl_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hw_crtc_ofl", "role": "o" }} , 
 	{ "name": "hw_crtc_ofl_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hw_crtc_ofl", "role": "o_ap_vld" }} , 
 	{ "name": "cfb_dummy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cfb_dummy", "role": "default" }} , 
 	{ "name": "var_xres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_xres", "role": "default" }} , 
 	{ "name": "var_right_margin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_right_margin", "role": "default" }} , 
 	{ "name": "var_hsync_len", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_hsync_len", "role": "default" }} , 
 	{ "name": "var_left_margin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_left_margin", "role": "default" }} , 
 	{ "name": "var_yres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_yres", "role": "default" }} , 
 	{ "name": "var_lower_margin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_lower_margin", "role": "default" }} , 
 	{ "name": "var_vsync_len", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_vsync_len", "role": "default" }} , 
 	{ "name": "var_upper_margin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_upper_margin", "role": "default" }} , 
 	{ "name": "var_vmode", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_vmode", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "cyber2000fb_decode_crtc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hw_crtc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "hw_pitch", "Type" : "None", "Direction" : "I"},
			{"Name" : "hw_crtc_ofl", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cfb_dummy", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_xres", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_right_margin", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_hsync_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_left_margin", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_yres", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_lower_margin", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_vsync_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_upper_margin", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_vmode", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	cyber2000fb_decode_crtc {
		hw_crtc {Type O LastRead -1 FirstWrite 0}
		hw_pitch {Type I LastRead 0 FirstWrite -1}
		hw_crtc_ofl {Type IO LastRead 9 FirstWrite 8}
		cfb_dummy {Type I LastRead -1 FirstWrite -1}
		var_xres {Type I LastRead 4 FirstWrite -1}
		var_right_margin {Type I LastRead 4 FirstWrite -1}
		var_hsync_len {Type I LastRead 4 FirstWrite -1}
		var_left_margin {Type I LastRead 1 FirstWrite -1}
		var_yres {Type I LastRead 8 FirstWrite -1}
		var_lower_margin {Type I LastRead 4 FirstWrite -1}
		var_vsync_len {Type I LastRead 4 FirstWrite -1}
		var_upper_margin {Type I LastRead 4 FirstWrite -1}
		var_vmode {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hw_crtc { ap_memory {  { hw_crtc_address0 mem_address 1 10 }  { hw_crtc_ce0 mem_ce 1 1 }  { hw_crtc_we0 mem_we 1 1 }  { hw_crtc_d0 mem_din 1 32 }  { hw_crtc_address1 MemPortADDR2 1 10 }  { hw_crtc_ce1 MemPortCE2 1 1 }  { hw_crtc_we1 MemPortWE2 1 1 }  { hw_crtc_d1 MemPortDIN2 1 32 } } }
	hw_pitch { ap_none {  { hw_pitch in_data 0 32 } } }
	hw_crtc_ofl { ap_ovld {  { hw_crtc_ofl_i in_data 0 32 }  { hw_crtc_ofl_o out_data 1 32 }  { hw_crtc_ofl_o_ap_vld out_vld 1 1 } } }
	cfb_dummy { ap_none {  { cfb_dummy in_data 0 32 } } }
	var_xres { ap_none {  { var_xres in_data 0 32 } } }
	var_right_margin { ap_none {  { var_right_margin in_data 0 32 } } }
	var_hsync_len { ap_none {  { var_hsync_len in_data 0 32 } } }
	var_left_margin { ap_none {  { var_left_margin in_data 0 32 } } }
	var_yres { ap_none {  { var_yres in_data 0 32 } } }
	var_lower_margin { ap_none {  { var_lower_margin in_data 0 32 } } }
	var_vsync_len { ap_none {  { var_vsync_len in_data 0 32 } } }
	var_upper_margin { ap_none {  { var_upper_margin in_data 0 32 } } }
	var_vmode { ap_none {  { var_vmode in_data 0 32 } } }
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
