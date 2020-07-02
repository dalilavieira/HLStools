set moduleName ff_rgb24toyv12_c
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
set C_modelName {ff_rgb24toyv12_c}
set C_modelType { void 0 }
set C_modelArgList {
	{ src int 32 regular {array 1000 { 1 1 } 1 1 }  }
	{ ydst int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ udst int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ vdst int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ width int 32 regular  }
	{ height int 32 regular  }
	{ lumStride int 32 regular  }
	{ chromStride int 32 regular  }
	{ srcStride int 32 regular  }
	{ rgb2yuv int 32 regular {array 1000 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "src","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "ydst", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ydst","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "udst", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "udst","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "vdst", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "vdst","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "height","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "lumStride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "lumStride","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "chromStride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "chromStride","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "srcStride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "srcStride","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rgb2yuv", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rgb2yuv","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_address0 sc_out sc_lv 10 signal 0 } 
	{ src_ce0 sc_out sc_logic 1 signal 0 } 
	{ src_q0 sc_in sc_lv 32 signal 0 } 
	{ src_address1 sc_out sc_lv 10 signal 0 } 
	{ src_ce1 sc_out sc_logic 1 signal 0 } 
	{ src_q1 sc_in sc_lv 32 signal 0 } 
	{ ydst_address0 sc_out sc_lv 10 signal 1 } 
	{ ydst_ce0 sc_out sc_logic 1 signal 1 } 
	{ ydst_we0 sc_out sc_logic 1 signal 1 } 
	{ ydst_d0 sc_out sc_lv 32 signal 1 } 
	{ udst_address0 sc_out sc_lv 10 signal 2 } 
	{ udst_ce0 sc_out sc_logic 1 signal 2 } 
	{ udst_we0 sc_out sc_logic 1 signal 2 } 
	{ udst_d0 sc_out sc_lv 32 signal 2 } 
	{ vdst_address0 sc_out sc_lv 10 signal 3 } 
	{ vdst_ce0 sc_out sc_logic 1 signal 3 } 
	{ vdst_we0 sc_out sc_logic 1 signal 3 } 
	{ vdst_d0 sc_out sc_lv 32 signal 3 } 
	{ width sc_in sc_lv 32 signal 4 } 
	{ height sc_in sc_lv 32 signal 5 } 
	{ lumStride sc_in sc_lv 32 signal 6 } 
	{ chromStride sc_in sc_lv 32 signal 7 } 
	{ srcStride sc_in sc_lv 32 signal 8 } 
	{ rgb2yuv_address0 sc_out sc_lv 10 signal 9 } 
	{ rgb2yuv_ce0 sc_out sc_logic 1 signal 9 } 
	{ rgb2yuv_q0 sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "src", "role": "address0" }} , 
 	{ "name": "src_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "ce0" }} , 
 	{ "name": "src_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src", "role": "q0" }} , 
 	{ "name": "src_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "src", "role": "address1" }} , 
 	{ "name": "src_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "ce1" }} , 
 	{ "name": "src_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src", "role": "q1" }} , 
 	{ "name": "ydst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ydst", "role": "address0" }} , 
 	{ "name": "ydst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ydst", "role": "ce0" }} , 
 	{ "name": "ydst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ydst", "role": "we0" }} , 
 	{ "name": "ydst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ydst", "role": "d0" }} , 
 	{ "name": "udst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "udst", "role": "address0" }} , 
 	{ "name": "udst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udst", "role": "ce0" }} , 
 	{ "name": "udst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "udst", "role": "we0" }} , 
 	{ "name": "udst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "udst", "role": "d0" }} , 
 	{ "name": "vdst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vdst", "role": "address0" }} , 
 	{ "name": "vdst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vdst", "role": "ce0" }} , 
 	{ "name": "vdst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vdst", "role": "we0" }} , 
 	{ "name": "vdst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vdst", "role": "d0" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "lumStride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lumStride", "role": "default" }} , 
 	{ "name": "chromStride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "chromStride", "role": "default" }} , 
 	{ "name": "srcStride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "srcStride", "role": "default" }} , 
 	{ "name": "rgb2yuv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rgb2yuv", "role": "address0" }} , 
 	{ "name": "rgb2yuv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2yuv", "role": "ce0" }} , 
 	{ "name": "rgb2yuv_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2yuv", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ff_rgb24toyv12_c",
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
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ydst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "udst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "vdst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "lumStride", "Type" : "None", "Direction" : "I"},
			{"Name" : "chromStride", "Type" : "None", "Direction" : "I"},
			{"Name" : "srcStride", "Type" : "None", "Direction" : "I"},
			{"Name" : "rgb2yuv", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	ff_rgb24toyv12_c {
		src {Type I LastRead 7 FirstWrite -1}
		ydst {Type O LastRead -1 FirstWrite 7}
		udst {Type O LastRead -1 FirstWrite 7}
		vdst {Type O LastRead -1 FirstWrite 7}
		width {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 1 FirstWrite -1}
		lumStride {Type I LastRead 1 FirstWrite -1}
		chromStride {Type I LastRead 1 FirstWrite -1}
		srcStride {Type I LastRead 1 FirstWrite -1}
		rgb2yuv {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src { ap_memory {  { src_address0 mem_address 1 10 }  { src_ce0 mem_ce 1 1 }  { src_q0 mem_dout 0 32 }  { src_address1 MemPortADDR2 1 10 }  { src_ce1 MemPortCE2 1 1 }  { src_q1 MemPortDOUT2 0 32 } } }
	ydst { ap_memory {  { ydst_address0 mem_address 1 10 }  { ydst_ce0 mem_ce 1 1 }  { ydst_we0 mem_we 1 1 }  { ydst_d0 mem_din 1 32 } } }
	udst { ap_memory {  { udst_address0 mem_address 1 10 }  { udst_ce0 mem_ce 1 1 }  { udst_we0 mem_we 1 1 }  { udst_d0 mem_din 1 32 } } }
	vdst { ap_memory {  { vdst_address0 mem_address 1 10 }  { vdst_ce0 mem_ce 1 1 }  { vdst_we0 mem_we 1 1 }  { vdst_d0 mem_din 1 32 } } }
	width { ap_none {  { width in_data 0 32 } } }
	height { ap_none {  { height in_data 0 32 } } }
	lumStride { ap_none {  { lumStride in_data 0 32 } } }
	chromStride { ap_none {  { chromStride in_data 0 32 } } }
	srcStride { ap_none {  { srcStride in_data 0 32 } } }
	rgb2yuv { ap_memory {  { rgb2yuv_address0 mem_address 1 10 }  { rgb2yuv_ce0 mem_ce 1 1 }  { rgb2yuv_q0 mem_dout 0 32 } } }
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
