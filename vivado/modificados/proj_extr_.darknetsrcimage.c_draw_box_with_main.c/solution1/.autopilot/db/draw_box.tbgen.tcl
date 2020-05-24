set moduleName draw_box
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
set C_modelName {draw_box}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_w int 32 regular  }
	{ a_h int 32 regular  }
	{ a_data float 32 unused {array 100000 { } 0 1 }  }
	{ x1 int 32 regular  }
	{ y1 int 32 regular  }
	{ x2 int 32 regular  }
	{ y2 int 32 regular  }
	{ r float 32 unused  }
	{ g float 32 unused  }
	{ b float 32 unused  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a.w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "a_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a.h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "a_data", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99999,"step" : 1}]}]}]} , 
 	{ "Name" : "x1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "y1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "x2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "y2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "r","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "g", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "g","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_w sc_in sc_lv 32 signal 0 } 
	{ a_h sc_in sc_lv 32 signal 1 } 
	{ a_data_address0 sc_out sc_lv 17 signal 2 } 
	{ a_data_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_data_we0 sc_out sc_logic 1 signal 2 } 
	{ a_data_d0 sc_out sc_lv 32 signal 2 } 
	{ a_data_q0 sc_in sc_lv 32 signal 2 } 
	{ a_data_address1 sc_out sc_lv 17 signal 2 } 
	{ a_data_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_data_we1 sc_out sc_logic 1 signal 2 } 
	{ a_data_d1 sc_out sc_lv 32 signal 2 } 
	{ a_data_q1 sc_in sc_lv 32 signal 2 } 
	{ x1 sc_in sc_lv 32 signal 3 } 
	{ y1 sc_in sc_lv 32 signal 4 } 
	{ x2 sc_in sc_lv 32 signal 5 } 
	{ y2 sc_in sc_lv 32 signal 6 } 
	{ r sc_in sc_lv 32 signal 7 } 
	{ g sc_in sc_lv 32 signal 8 } 
	{ b sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_w", "role": "default" }} , 
 	{ "name": "a_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_h", "role": "default" }} , 
 	{ "name": "a_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "a_data", "role": "address0" }} , 
 	{ "name": "a_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_data", "role": "ce0" }} , 
 	{ "name": "a_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_data", "role": "we0" }} , 
 	{ "name": "a_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_data", "role": "d0" }} , 
 	{ "name": "a_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_data", "role": "q0" }} , 
 	{ "name": "a_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "a_data", "role": "address1" }} , 
 	{ "name": "a_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_data", "role": "ce1" }} , 
 	{ "name": "a_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_data", "role": "we1" }} , 
 	{ "name": "a_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_data", "role": "d1" }} , 
 	{ "name": "a_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_data", "role": "q1" }} , 
 	{ "name": "x1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x1", "role": "default" }} , 
 	{ "name": "y1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y1", "role": "default" }} , 
 	{ "name": "x2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x2", "role": "default" }} , 
 	{ "name": "y2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y2", "role": "default" }} , 
 	{ "name": "r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "default" }} , 
 	{ "name": "g", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "draw_box",
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
			{"Name" : "a_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_data", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "x1", "Type" : "None", "Direction" : "I"},
			{"Name" : "y1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x2", "Type" : "None", "Direction" : "I"},
			{"Name" : "y2", "Type" : "None", "Direction" : "I"},
			{"Name" : "r", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	draw_box {
		a_w {Type I LastRead 0 FirstWrite -1}
		a_h {Type I LastRead 0 FirstWrite -1}
		a_data {Type X LastRead -1 FirstWrite -1}
		x1 {Type I LastRead 0 FirstWrite -1}
		y1 {Type I LastRead 0 FirstWrite -1}
		x2 {Type I LastRead 0 FirstWrite -1}
		y2 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead -1 FirstWrite -1}
		g {Type I LastRead -1 FirstWrite -1}
		b {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_w { ap_none {  { a_w in_data 0 32 } } }
	a_h { ap_none {  { a_h in_data 0 32 } } }
	a_data { ap_memory {  { a_data_address0 mem_address 1 17 }  { a_data_ce0 mem_ce 1 1 }  { a_data_we0 mem_we 1 1 }  { a_data_d0 mem_din 1 32 }  { a_data_q0 mem_dout 0 32 }  { a_data_address1 MemPortADDR2 1 17 }  { a_data_ce1 MemPortCE2 1 1 }  { a_data_we1 MemPortWE2 1 1 }  { a_data_d1 MemPortDIN2 1 32 }  { a_data_q1 MemPortDOUT2 0 32 } } }
	x1 { ap_none {  { x1 in_data 0 32 } } }
	y1 { ap_none {  { y1 in_data 0 32 } } }
	x2 { ap_none {  { x2 in_data 0 32 } } }
	y2 { ap_none {  { y2 in_data 0 32 } } }
	r { ap_none {  { r in_data 0 32 } } }
	g { ap_none {  { g in_data 0 32 } } }
	b { ap_none {  { b in_data 0 32 } } }
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
