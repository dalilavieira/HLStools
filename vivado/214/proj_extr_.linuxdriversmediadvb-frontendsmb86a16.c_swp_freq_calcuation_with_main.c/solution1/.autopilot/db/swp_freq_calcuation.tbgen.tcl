set moduleName swp_freq_calcuation
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
set C_modelName {swp_freq_calcuation}
set C_modelType { int 32 }
set C_modelArgList {
	{ state_dummy int 32 unused {pointer 0}  }
	{ i int 32 regular  }
	{ v int 32 regular  }
	{ V_r int 32 regular {array 1000 { 1 3 } 1 1 }  }
	{ vmax int 32 regular  }
	{ vmin int 32 regular  }
	{ SIGMIN int 32 regular  }
	{ fOSC int 32 regular  }
	{ afcex_freq int 32 regular  }
	{ swp_ofs int 32 regular  }
	{ SIG1 int 8 regular {array 1000 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_dummy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "state.dummy","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "i","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "v","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "V_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "vmax", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "vmax","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vmin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "vmin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "SIGMIN", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SIGMIN","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "fOSC", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fOSC","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "afcex_freq", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "afcex_freq","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "swp_ofs", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "swp_ofs","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "SIG1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "SIG1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_dummy sc_in sc_lv 32 signal 0 } 
	{ i sc_in sc_lv 32 signal 1 } 
	{ v sc_in sc_lv 32 signal 2 } 
	{ V_r_address0 sc_out sc_lv 10 signal 3 } 
	{ V_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ V_r_q0 sc_in sc_lv 32 signal 3 } 
	{ vmax sc_in sc_lv 32 signal 4 } 
	{ vmin sc_in sc_lv 32 signal 5 } 
	{ SIGMIN sc_in sc_lv 32 signal 6 } 
	{ fOSC sc_in sc_lv 32 signal 7 } 
	{ afcex_freq sc_in sc_lv 32 signal 8 } 
	{ swp_ofs sc_in sc_lv 32 signal 9 } 
	{ SIG1_address0 sc_out sc_lv 10 signal 10 } 
	{ SIG1_ce0 sc_out sc_logic 1 signal 10 } 
	{ SIG1_we0 sc_out sc_logic 1 signal 10 } 
	{ SIG1_d0 sc_out sc_lv 8 signal 10 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_dummy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_dummy", "role": "default" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "v", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v", "role": "default" }} , 
 	{ "name": "V_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "V_r", "role": "address0" }} , 
 	{ "name": "V_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_r", "role": "ce0" }} , 
 	{ "name": "V_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_r", "role": "q0" }} , 
 	{ "name": "vmax", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vmax", "role": "default" }} , 
 	{ "name": "vmin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vmin", "role": "default" }} , 
 	{ "name": "SIGMIN", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SIGMIN", "role": "default" }} , 
 	{ "name": "fOSC", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fOSC", "role": "default" }} , 
 	{ "name": "afcex_freq", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "afcex_freq", "role": "default" }} , 
 	{ "name": "swp_ofs", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "swp_ofs", "role": "default" }} , 
 	{ "name": "SIG1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "SIG1", "role": "address0" }} , 
 	{ "name": "SIG1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SIG1", "role": "ce0" }} , 
 	{ "name": "SIG1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SIG1", "role": "we0" }} , 
 	{ "name": "SIG1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SIG1", "role": "d0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "swp_freq_calcuation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_dummy", "Type" : "None", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vmax", "Type" : "None", "Direction" : "I"},
			{"Name" : "vmin", "Type" : "None", "Direction" : "I"},
			{"Name" : "SIGMIN", "Type" : "None", "Direction" : "I"},
			{"Name" : "fOSC", "Type" : "None", "Direction" : "I"},
			{"Name" : "afcex_freq", "Type" : "None", "Direction" : "I"},
			{"Name" : "swp_ofs", "Type" : "None", "Direction" : "I"},
			{"Name" : "SIG1", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	swp_freq_calcuation {
		state_dummy {Type I LastRead -1 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		V_r {Type I LastRead 11 FirstWrite -1}
		vmax {Type I LastRead 0 FirstWrite -1}
		vmin {Type I LastRead 0 FirstWrite -1}
		SIGMIN {Type I LastRead 0 FirstWrite -1}
		fOSC {Type I LastRead 0 FirstWrite -1}
		afcex_freq {Type I LastRead 0 FirstWrite -1}
		swp_ofs {Type I LastRead 0 FirstWrite -1}
		SIG1 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_dummy { ap_none {  { state_dummy in_data 0 32 } } }
	i { ap_none {  { i in_data 0 32 } } }
	v { ap_none {  { v in_data 0 32 } } }
	V_r { ap_memory {  { V_r_address0 mem_address 1 10 }  { V_r_ce0 mem_ce 1 1 }  { V_r_q0 mem_dout 0 32 } } }
	vmax { ap_none {  { vmax in_data 0 32 } } }
	vmin { ap_none {  { vmin in_data 0 32 } } }
	SIGMIN { ap_none {  { SIGMIN in_data 0 32 } } }
	fOSC { ap_none {  { fOSC in_data 0 32 } } }
	afcex_freq { ap_none {  { afcex_freq in_data 0 32 } } }
	swp_ofs { ap_none {  { swp_ofs in_data 0 32 } } }
	SIG1 { ap_memory {  { SIG1_address0 mem_address 1 10 }  { SIG1_ce0 mem_ce 1 1 }  { SIG1_we0 mem_we 1 1 }  { SIG1_d0 mem_din 1 8 } } }
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
