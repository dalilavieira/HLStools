set moduleName acado_multCTQC
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
set C_modelName {acado_multCTQC}
set C_modelType { void 0 }
set C_modelArgList {
	{ Gx1 int 32 regular {array 1000 { 1 1 } 1 1 }  }
	{ Gx2 int 32 regular {array 1000 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Gx1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Gx1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "Gx2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Gx2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Gx1_address0 sc_out sc_lv 10 signal 0 } 
	{ Gx1_ce0 sc_out sc_logic 1 signal 0 } 
	{ Gx1_q0 sc_in sc_lv 32 signal 0 } 
	{ Gx1_address1 sc_out sc_lv 10 signal 0 } 
	{ Gx1_ce1 sc_out sc_logic 1 signal 0 } 
	{ Gx1_q1 sc_in sc_lv 32 signal 0 } 
	{ Gx2_address0 sc_out sc_lv 10 signal 1 } 
	{ Gx2_ce0 sc_out sc_logic 1 signal 1 } 
	{ Gx2_q0 sc_in sc_lv 32 signal 1 } 
	{ Gx2_address1 sc_out sc_lv 10 signal 1 } 
	{ Gx2_ce1 sc_out sc_logic 1 signal 1 } 
	{ Gx2_q1 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Gx1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Gx1", "role": "address0" }} , 
 	{ "name": "Gx1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Gx1", "role": "ce0" }} , 
 	{ "name": "Gx1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Gx1", "role": "q0" }} , 
 	{ "name": "Gx1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Gx1", "role": "address1" }} , 
 	{ "name": "Gx1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Gx1", "role": "ce1" }} , 
 	{ "name": "Gx1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Gx1", "role": "q1" }} , 
 	{ "name": "Gx2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Gx2", "role": "address0" }} , 
 	{ "name": "Gx2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Gx2", "role": "ce0" }} , 
 	{ "name": "Gx2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Gx2", "role": "q0" }} , 
 	{ "name": "Gx2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Gx2", "role": "address1" }} , 
 	{ "name": "Gx2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Gx2", "role": "ce1" }} , 
 	{ "name": "Gx2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Gx2", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "acado_multCTQC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Gx1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Gx2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acadoWorkspace_H", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acadoWorkspace_H_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	acado_multCTQC {
		Gx1 {Type I LastRead 8 FirstWrite -1}
		Gx2 {Type I LastRead 8 FirstWrite -1}
		acadoWorkspace_H {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Gx1 { ap_memory {  { Gx1_address0 mem_address 1 10 }  { Gx1_ce0 mem_ce 1 1 }  { Gx1_q0 mem_dout 0 32 }  { Gx1_address1 MemPortADDR2 1 10 }  { Gx1_ce1 MemPortCE2 1 1 }  { Gx1_q1 MemPortDOUT2 0 32 } } }
	Gx2 { ap_memory {  { Gx2_address0 mem_address 1 10 }  { Gx2_ce0 mem_ce 1 1 }  { Gx2_q0 mem_dout 0 32 }  { Gx2_address1 MemPortADDR2 1 10 }  { Gx2_ce1 MemPortCE2 1 1 }  { Gx2_q1 MemPortDOUT2 0 32 } } }
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
