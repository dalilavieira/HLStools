set moduleName SiS_Generic_ConvertCRData
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
set C_modelName {SiS_Generic_ConvertCRData}
set C_modelType { void 0 }
set C_modelArgList {
	{ SiS_Pr_dummy int 32 unused {pointer 0}  }
	{ crdata int 8 regular {array 1000 { 1 1 } 1 1 }  }
	{ xres int 32 regular  }
	{ yres int 32 regular  }
	{ var_xres int 32 regular {pointer 1}  }
	{ var_left_margin int 32 regular {pointer 1}  }
	{ var_right_margin int 32 regular {pointer 1}  }
	{ var_hsync_len int 32 regular {pointer 1}  }
	{ var_yres int 32 regular {pointer 1}  }
	{ var_upper_margin int 32 regular {pointer 1}  }
	{ var_lower_margin int 32 regular {pointer 1}  }
	{ var_vsync_len int 32 regular {pointer 1}  }
	{ writeres int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SiS_Pr_dummy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SiS_Pr.dummy","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "crdata", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "crdata","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "xres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "yres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "yres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "var_xres", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.xres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_left_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.left_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_right_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.right_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_hsync_len", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.hsync_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_yres", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.yres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_upper_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.upper_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_lower_margin", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.lower_margin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_vsync_len", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.vsync_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "writeres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "writeres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SiS_Pr_dummy sc_in sc_lv 32 signal 0 } 
	{ crdata_address0 sc_out sc_lv 10 signal 1 } 
	{ crdata_ce0 sc_out sc_logic 1 signal 1 } 
	{ crdata_q0 sc_in sc_lv 8 signal 1 } 
	{ crdata_address1 sc_out sc_lv 10 signal 1 } 
	{ crdata_ce1 sc_out sc_logic 1 signal 1 } 
	{ crdata_q1 sc_in sc_lv 8 signal 1 } 
	{ xres sc_in sc_lv 32 signal 2 } 
	{ yres sc_in sc_lv 32 signal 3 } 
	{ var_xres sc_out sc_lv 32 signal 4 } 
	{ var_xres_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ var_left_margin sc_out sc_lv 32 signal 5 } 
	{ var_left_margin_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ var_right_margin sc_out sc_lv 32 signal 6 } 
	{ var_right_margin_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ var_hsync_len sc_out sc_lv 32 signal 7 } 
	{ var_hsync_len_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ var_yres sc_out sc_lv 32 signal 8 } 
	{ var_yres_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ var_upper_margin sc_out sc_lv 32 signal 9 } 
	{ var_upper_margin_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ var_lower_margin sc_out sc_lv 32 signal 10 } 
	{ var_lower_margin_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ var_vsync_len sc_out sc_lv 32 signal 11 } 
	{ var_vsync_len_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ writeres sc_in sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SiS_Pr_dummy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SiS_Pr_dummy", "role": "default" }} , 
 	{ "name": "crdata_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "crdata", "role": "address0" }} , 
 	{ "name": "crdata_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crdata", "role": "ce0" }} , 
 	{ "name": "crdata_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crdata", "role": "q0" }} , 
 	{ "name": "crdata_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "crdata", "role": "address1" }} , 
 	{ "name": "crdata_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crdata", "role": "ce1" }} , 
 	{ "name": "crdata_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crdata", "role": "q1" }} , 
 	{ "name": "xres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xres", "role": "default" }} , 
 	{ "name": "yres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yres", "role": "default" }} , 
 	{ "name": "var_xres", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_xres", "role": "default" }} , 
 	{ "name": "var_xres_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_xres", "role": "ap_vld" }} , 
 	{ "name": "var_left_margin", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_left_margin", "role": "default" }} , 
 	{ "name": "var_left_margin_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_left_margin", "role": "ap_vld" }} , 
 	{ "name": "var_right_margin", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_right_margin", "role": "default" }} , 
 	{ "name": "var_right_margin_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_right_margin", "role": "ap_vld" }} , 
 	{ "name": "var_hsync_len", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_hsync_len", "role": "default" }} , 
 	{ "name": "var_hsync_len_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_hsync_len", "role": "ap_vld" }} , 
 	{ "name": "var_yres", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_yres", "role": "default" }} , 
 	{ "name": "var_yres_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_yres", "role": "ap_vld" }} , 
 	{ "name": "var_upper_margin", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_upper_margin", "role": "default" }} , 
 	{ "name": "var_upper_margin_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_upper_margin", "role": "ap_vld" }} , 
 	{ "name": "var_lower_margin", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_lower_margin", "role": "default" }} , 
 	{ "name": "var_lower_margin_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_lower_margin", "role": "ap_vld" }} , 
 	{ "name": "var_vsync_len", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_vsync_len", "role": "default" }} , 
 	{ "name": "var_vsync_len_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_vsync_len", "role": "ap_vld" }} , 
 	{ "name": "writeres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "writeres", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "SiS_Generic_ConvertCRData",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "SiS_Pr_dummy", "Type" : "None", "Direction" : "I"},
			{"Name" : "crdata", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xres", "Type" : "None", "Direction" : "I"},
			{"Name" : "yres", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_xres", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_left_margin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_right_margin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_hsync_len", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_yres", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_upper_margin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_lower_margin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_vsync_len", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "writeres", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	SiS_Generic_ConvertCRData {
		SiS_Pr_dummy {Type I LastRead -1 FirstWrite -1}
		crdata {Type I LastRead 6 FirstWrite -1}
		xres {Type I LastRead 3 FirstWrite -1}
		yres {Type I LastRead 3 FirstWrite -1}
		var_xres {Type O LastRead -1 FirstWrite 3}
		var_left_margin {Type O LastRead -1 FirstWrite 6}
		var_right_margin {Type O LastRead -1 FirstWrite 6}
		var_hsync_len {Type O LastRead -1 FirstWrite 6}
		var_yres {Type O LastRead -1 FirstWrite 6}
		var_upper_margin {Type O LastRead -1 FirstWrite 6}
		var_lower_margin {Type O LastRead -1 FirstWrite 6}
		var_vsync_len {Type O LastRead -1 FirstWrite 6}
		writeres {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	SiS_Pr_dummy { ap_none {  { SiS_Pr_dummy in_data 0 32 } } }
	crdata { ap_memory {  { crdata_address0 mem_address 1 10 }  { crdata_ce0 mem_ce 1 1 }  { crdata_q0 mem_dout 0 8 }  { crdata_address1 MemPortADDR2 1 10 }  { crdata_ce1 MemPortCE2 1 1 }  { crdata_q1 MemPortDOUT2 0 8 } } }
	xres { ap_none {  { xres in_data 0 32 } } }
	yres { ap_none {  { yres in_data 0 32 } } }
	var_xres { ap_vld {  { var_xres out_data 1 32 }  { var_xres_ap_vld out_vld 1 1 } } }
	var_left_margin { ap_vld {  { var_left_margin out_data 1 32 }  { var_left_margin_ap_vld out_vld 1 1 } } }
	var_right_margin { ap_vld {  { var_right_margin out_data 1 32 }  { var_right_margin_ap_vld out_vld 1 1 } } }
	var_hsync_len { ap_vld {  { var_hsync_len out_data 1 32 }  { var_hsync_len_ap_vld out_vld 1 1 } } }
	var_yres { ap_vld {  { var_yres out_data 1 32 }  { var_yres_ap_vld out_vld 1 1 } } }
	var_upper_margin { ap_vld {  { var_upper_margin out_data 1 32 }  { var_upper_margin_ap_vld out_vld 1 1 } } }
	var_lower_margin { ap_vld {  { var_lower_margin out_data 1 32 }  { var_lower_margin_ap_vld out_vld 1 1 } } }
	var_vsync_len { ap_vld {  { var_vsync_len out_data 1 32 }  { var_vsync_len_ap_vld out_vld 1 1 } } }
	writeres { ap_none {  { writeres in_data 0 32 } } }
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
