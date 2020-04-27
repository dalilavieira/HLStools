set moduleName fir
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
set C_modelName {fir}
set C_modelType { int 32 }
set C_modelArgList {
	{ coef int 16 regular {array 100 { 1 3 } 1 1 }  }
	{ data_in int 16 regular {array 200 { 1 3 } 1 1 }  }
	{ data_out int 32 regular {array 200 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "coef", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "coef","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "data_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 199,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ coef_address0 sc_out sc_lv 7 signal 0 } 
	{ coef_ce0 sc_out sc_logic 1 signal 0 } 
	{ coef_q0 sc_in sc_lv 16 signal 0 } 
	{ data_in_address0 sc_out sc_lv 8 signal 1 } 
	{ data_in_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_in_q0 sc_in sc_lv 16 signal 1 } 
	{ data_out_address0 sc_out sc_lv 8 signal 2 } 
	{ data_out_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_out_we0 sc_out sc_logic 1 signal 2 } 
	{ data_out_d0 sc_out sc_lv 32 signal 2 } 
	{ data_out_q0 sc_in sc_lv 32 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "coef_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coef", "role": "address0" }} , 
 	{ "name": "coef_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef", "role": "ce0" }} , 
 	{ "name": "coef_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coef", "role": "q0" }} , 
 	{ "name": "data_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in", "role": "address0" }} , 
 	{ "name": "data_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "ce0" }} , 
 	{ "name": "data_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_in", "role": "q0" }} , 
 	{ "name": "data_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out", "role": "address0" }} , 
 	{ "name": "data_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "ce0" }} , 
 	{ "name": "data_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "we0" }} , 
 	{ "name": "data_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "d0" }} , 
 	{ "name": "data_out_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fir",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2020202", "EstimateLatencyMax" : "2020202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "coef", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fir_mac_muladd_16s_16s_16ns_16_1_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir {
		coef {Type I LastRead 3 FirstWrite -1}
		data_in {Type I LastRead 3 FirstWrite -1}
		data_out {Type IO LastRead 1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2020202", "Max" : "2020202"}
	, {"Name" : "Interval", "Min" : "2020203", "Max" : "2020203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	coef { ap_memory {  { coef_address0 mem_address 1 7 }  { coef_ce0 mem_ce 1 1 }  { coef_q0 mem_dout 0 16 } } }
	data_in { ap_memory {  { data_in_address0 mem_address 1 8 }  { data_in_ce0 mem_ce 1 1 }  { data_in_q0 mem_dout 0 16 } } }
	data_out { ap_memory {  { data_out_address0 mem_address 1 8 }  { data_out_ce0 mem_ce 1 1 }  { data_out_we0 mem_we 1 1 }  { data_out_d0 mem_din 1 32 }  { data_out_q0 mem_dout 0 32 } } }
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
