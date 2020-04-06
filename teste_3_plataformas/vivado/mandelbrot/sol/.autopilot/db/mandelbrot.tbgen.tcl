set moduleName mandelbrot
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mandelbrot}
set C_modelType { void 0 }
set C_modelArgList {
	{ xmax int 32 unused  }
	{ xmin int 32 unused  }
	{ ymax int 32 unused  }
	{ ymin int 32 unused  }
	{ maxiter int 32 unused  }
	{ xres int 32 unused  }
	{ yres int 32 unused  }
	{ dx int 32 unused  }
	{ dy int 32 unused  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xmax", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xmax","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "xmin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xmin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ymax", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ymax","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ymin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ymin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "maxiter", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "maxiter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "xres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "yres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "yres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dy","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xmax sc_in sc_lv 32 signal 0 } 
	{ xmin sc_in sc_lv 32 signal 1 } 
	{ ymax sc_in sc_lv 32 signal 2 } 
	{ ymin sc_in sc_lv 32 signal 3 } 
	{ maxiter sc_in sc_lv 32 signal 4 } 
	{ xres sc_in sc_lv 32 signal 5 } 
	{ yres sc_in sc_lv 32 signal 6 } 
	{ dx sc_in sc_lv 32 signal 7 } 
	{ dy sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xmax", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xmax", "role": "default" }} , 
 	{ "name": "xmin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xmin", "role": "default" }} , 
 	{ "name": "ymax", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ymax", "role": "default" }} , 
 	{ "name": "ymin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ymin", "role": "default" }} , 
 	{ "name": "maxiter", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "maxiter", "role": "default" }} , 
 	{ "name": "xres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xres", "role": "default" }} , 
 	{ "name": "yres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yres", "role": "default" }} , 
 	{ "name": "dx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dx", "role": "default" }} , 
 	{ "name": "dy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dy", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "mandelbrot",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xmax", "Type" : "None", "Direction" : "I"},
			{"Name" : "xmin", "Type" : "None", "Direction" : "I"},
			{"Name" : "ymax", "Type" : "None", "Direction" : "I"},
			{"Name" : "ymin", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxiter", "Type" : "None", "Direction" : "I"},
			{"Name" : "xres", "Type" : "None", "Direction" : "I"},
			{"Name" : "yres", "Type" : "None", "Direction" : "I"},
			{"Name" : "dx", "Type" : "None", "Direction" : "I"},
			{"Name" : "dy", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	mandelbrot {
		xmax {Type I LastRead -1 FirstWrite -1}
		xmin {Type I LastRead -1 FirstWrite -1}
		ymax {Type I LastRead -1 FirstWrite -1}
		ymin {Type I LastRead -1 FirstWrite -1}
		maxiter {Type I LastRead -1 FirstWrite -1}
		xres {Type I LastRead -1 FirstWrite -1}
		yres {Type I LastRead -1 FirstWrite -1}
		dx {Type I LastRead -1 FirstWrite -1}
		dy {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xmax { ap_none {  { xmax in_data 0 32 } } }
	xmin { ap_none {  { xmin in_data 0 32 } } }
	ymax { ap_none {  { ymax in_data 0 32 } } }
	ymin { ap_none {  { ymin in_data 0 32 } } }
	maxiter { ap_none {  { maxiter in_data 0 32 } } }
	xres { ap_none {  { xres in_data 0 32 } } }
	yres { ap_none {  { yres in_data 0 32 } } }
	dx { ap_none {  { dx in_data 0 32 } } }
	dy { ap_none {  { dy in_data 0 32 } } }
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
set moduleName mandelbrot
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
set C_modelName {mandelbrot}
set C_modelType { void 0 }
set C_modelArgList {
	{ color int 8 regular {array 6 { 0 0 } 0 1 }  }
	{ xmax int 32 unused  }
	{ xmin int 32 regular  }
	{ ymax int 32 regular  }
	{ ymin int 32 unused  }
	{ maxiter int 32 regular  }
	{ xres int 32 regular  }
	{ yres int 32 regular  }
	{ dx int 32 regular  }
	{ dy int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "color", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "color","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "xmax", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xmax","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "xmin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xmin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ymax", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ymax","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ymin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ymin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "maxiter", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "maxiter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "xres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "yres", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "yres","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dy","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ color_address0 sc_out sc_lv 3 signal 0 } 
	{ color_ce0 sc_out sc_logic 1 signal 0 } 
	{ color_we0 sc_out sc_logic 1 signal 0 } 
	{ color_d0 sc_out sc_lv 8 signal 0 } 
	{ color_address1 sc_out sc_lv 3 signal 0 } 
	{ color_ce1 sc_out sc_logic 1 signal 0 } 
	{ color_we1 sc_out sc_logic 1 signal 0 } 
	{ color_d1 sc_out sc_lv 8 signal 0 } 
	{ xmax sc_in sc_lv 32 signal 1 } 
	{ xmin sc_in sc_lv 32 signal 2 } 
	{ ymax sc_in sc_lv 32 signal 3 } 
	{ ymin sc_in sc_lv 32 signal 4 } 
	{ maxiter sc_in sc_lv 32 signal 5 } 
	{ xres sc_in sc_lv 32 signal 6 } 
	{ yres sc_in sc_lv 32 signal 7 } 
	{ dx sc_in sc_lv 32 signal 8 } 
	{ dy sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "color_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "color", "role": "address0" }} , 
 	{ "name": "color_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color", "role": "ce0" }} , 
 	{ "name": "color_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color", "role": "we0" }} , 
 	{ "name": "color_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color", "role": "d0" }} , 
 	{ "name": "color_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "color", "role": "address1" }} , 
 	{ "name": "color_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color", "role": "ce1" }} , 
 	{ "name": "color_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color", "role": "we1" }} , 
 	{ "name": "color_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color", "role": "d1" }} , 
 	{ "name": "xmax", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xmax", "role": "default" }} , 
 	{ "name": "xmin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xmin", "role": "default" }} , 
 	{ "name": "ymax", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ymax", "role": "default" }} , 
 	{ "name": "ymin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ymin", "role": "default" }} , 
 	{ "name": "maxiter", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "maxiter", "role": "default" }} , 
 	{ "name": "xres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xres", "role": "default" }} , 
 	{ "name": "yres", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "yres", "role": "default" }} , 
 	{ "name": "dx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dx", "role": "default" }} , 
 	{ "name": "dy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dy", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "mandelbrot",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "color", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "xmax", "Type" : "None", "Direction" : "I"},
			{"Name" : "xmin", "Type" : "None", "Direction" : "I"},
			{"Name" : "ymax", "Type" : "None", "Direction" : "I"},
			{"Name" : "ymin", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxiter", "Type" : "None", "Direction" : "I"},
			{"Name" : "xres", "Type" : "None", "Direction" : "I"},
			{"Name" : "yres", "Type" : "None", "Direction" : "I"},
			{"Name" : "dx", "Type" : "None", "Direction" : "I"},
			{"Name" : "dy", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mandelbrot_dadddsub_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mandelbrot_dadd_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mandelbrot_dmul_64ns_64ns_64_5_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mandelbrot_dmul_64ns_64ns_64_5_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mandelbrot_dmul_64ns_64ns_64_5_max_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mandelbrot_dcmp_64ns_64ns_1_2_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mandelbrot_sitodp_32ns_64_4_1_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mandelbrot {
		color {Type O LastRead -1 FirstWrite 17}
		xmax {Type I LastRead -1 FirstWrite -1}
		xmin {Type I LastRead 0 FirstWrite -1}
		ymax {Type I LastRead 0 FirstWrite -1}
		ymin {Type I LastRead -1 FirstWrite -1}
		maxiter {Type I LastRead 0 FirstWrite -1}
		xres {Type I LastRead 0 FirstWrite -1}
		yres {Type I LastRead 0 FirstWrite -1}
		dx {Type I LastRead 0 FirstWrite -1}
		dy {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	color { ap_memory {  { color_address0 mem_address 1 3 }  { color_ce0 mem_ce 1 1 }  { color_we0 mem_we 1 1 }  { color_d0 mem_din 1 8 }  { color_address1 MemPortADDR2 1 3 }  { color_ce1 MemPortCE2 1 1 }  { color_we1 MemPortWE2 1 1 }  { color_d1 MemPortDIN2 1 8 } } }
	xmax { ap_none {  { xmax in_data 0 32 } } }
	xmin { ap_none {  { xmin in_data 0 32 } } }
	ymax { ap_none {  { ymax in_data 0 32 } } }
	ymin { ap_none {  { ymin in_data 0 32 } } }
	maxiter { ap_none {  { maxiter in_data 0 32 } } }
	xres { ap_none {  { xres in_data 0 32 } } }
	yres { ap_none {  { yres in_data 0 32 } } }
	dx { ap_none {  { dx in_data 0 32 } } }
	dy { ap_none {  { dy in_data 0 32 } } }
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
