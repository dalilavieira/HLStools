set moduleName hamming_window
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
set C_modelName {hamming_window}
set C_modelType { void 0 }
set C_modelArgList {
	{ outdata int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ indata int 16 regular {array 256 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outdata", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outdata","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "indata", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "indata","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outdata_address0 sc_out sc_lv 8 signal 0 } 
	{ outdata_ce0 sc_out sc_logic 1 signal 0 } 
	{ outdata_we0 sc_out sc_logic 1 signal 0 } 
	{ outdata_d0 sc_out sc_lv 32 signal 0 } 
	{ indata_address0 sc_out sc_lv 8 signal 1 } 
	{ indata_ce0 sc_out sc_logic 1 signal 1 } 
	{ indata_q0 sc_in sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outdata_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outdata", "role": "address0" }} , 
 	{ "name": "outdata_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outdata", "role": "ce0" }} , 
 	{ "name": "outdata_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outdata", "role": "we0" }} , 
 	{ "name": "outdata_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outdata", "role": "d0" }} , 
 	{ "name": "indata_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "indata", "role": "address0" }} , 
 	{ "name": "indata_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "indata", "role": "ce0" }} , 
 	{ "name": "indata_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "indata", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "hamming_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262", "EstimateLatencyMax" : "262",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "outdata", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "indata", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "window_coeff", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.window_coeff_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hamming_window_mul_mul_14ns_16s_30_3_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hamming_window {
		outdata {Type O LastRead -1 FirstWrite 6}
		indata {Type I LastRead 1 FirstWrite -1}
		window_coeff {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "262", "Max" : "262"}
	, {"Name" : "Interval", "Min" : "263", "Max" : "263"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	outdata { ap_memory {  { outdata_address0 mem_address 1 8 }  { outdata_ce0 mem_ce 1 1 }  { outdata_we0 mem_we 1 1 }  { outdata_d0 mem_din 1 32 } } }
	indata { ap_memory {  { indata_address0 mem_address 1 8 }  { indata_ce0 mem_ce 1 1 }  { indata_q0 mem_dout 0 16 } } }
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
set moduleName hamming_window
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
set C_modelName {hamming_window}
set C_modelType { void 0 }
set C_modelArgList {
	{ outdata int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ indata int 16 regular {array 256 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outdata", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outdata","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "indata", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "indata","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outdata_address0 sc_out sc_lv 8 signal 0 } 
	{ outdata_ce0 sc_out sc_logic 1 signal 0 } 
	{ outdata_we0 sc_out sc_logic 1 signal 0 } 
	{ outdata_d0 sc_out sc_lv 32 signal 0 } 
	{ indata_address0 sc_out sc_lv 8 signal 1 } 
	{ indata_ce0 sc_out sc_logic 1 signal 1 } 
	{ indata_q0 sc_in sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outdata_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outdata", "role": "address0" }} , 
 	{ "name": "outdata_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outdata", "role": "ce0" }} , 
 	{ "name": "outdata_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outdata", "role": "we0" }} , 
 	{ "name": "outdata_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outdata", "role": "d0" }} , 
 	{ "name": "indata_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "indata", "role": "address0" }} , 
 	{ "name": "indata_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "indata", "role": "ce0" }} , 
 	{ "name": "indata_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "indata", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "hamming_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "outdata", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "indata", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "window_coeff", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.window_coeff_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hamming_window_mul_mul_14ns_16s_30_1_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hamming_window {
		outdata {Type O LastRead -1 FirstWrite 3}
		indata {Type I LastRead 1 FirstWrite -1}
		window_coeff {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "259", "Max" : "259"}
	, {"Name" : "Interval", "Min" : "260", "Max" : "260"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	outdata { ap_memory {  { outdata_address0 mem_address 1 8 }  { outdata_ce0 mem_ce 1 1 }  { outdata_we0 mem_we 1 1 }  { outdata_d0 mem_din 1 32 } } }
	indata { ap_memory {  { indata_address0 mem_address 1 8 }  { indata_ce0 mem_ce 1 1 }  { indata_q0 mem_dout 0 16 } } }
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
