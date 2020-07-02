set moduleName acado_setObjQN1QN2
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
set C_modelName {acado_setObjQN1QN2}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmpFx int 32 regular {array 1000 { 1 1 } 1 1 }  }
	{ tmpObjSEndTerm int 32 regular {array 1000 { 1 1 } 1 1 }  }
	{ tmpQN1 int 32 regular {array 1000 { 0 0 } 0 1 }  }
	{ tmpQN2 int 32 regular {array 1000 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmpFx", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tmpFx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "tmpObjSEndTerm", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tmpObjSEndTerm","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "tmpQN1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tmpQN1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "tmpQN2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tmpQN2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmpFx_address0 sc_out sc_lv 10 signal 0 } 
	{ tmpFx_ce0 sc_out sc_logic 1 signal 0 } 
	{ tmpFx_q0 sc_in sc_lv 32 signal 0 } 
	{ tmpFx_address1 sc_out sc_lv 10 signal 0 } 
	{ tmpFx_ce1 sc_out sc_logic 1 signal 0 } 
	{ tmpFx_q1 sc_in sc_lv 32 signal 0 } 
	{ tmpObjSEndTerm_address0 sc_out sc_lv 10 signal 1 } 
	{ tmpObjSEndTerm_ce0 sc_out sc_logic 1 signal 1 } 
	{ tmpObjSEndTerm_q0 sc_in sc_lv 32 signal 1 } 
	{ tmpObjSEndTerm_address1 sc_out sc_lv 10 signal 1 } 
	{ tmpObjSEndTerm_ce1 sc_out sc_logic 1 signal 1 } 
	{ tmpObjSEndTerm_q1 sc_in sc_lv 32 signal 1 } 
	{ tmpQN1_address0 sc_out sc_lv 10 signal 2 } 
	{ tmpQN1_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmpQN1_we0 sc_out sc_logic 1 signal 2 } 
	{ tmpQN1_d0 sc_out sc_lv 32 signal 2 } 
	{ tmpQN1_address1 sc_out sc_lv 10 signal 2 } 
	{ tmpQN1_ce1 sc_out sc_logic 1 signal 2 } 
	{ tmpQN1_we1 sc_out sc_logic 1 signal 2 } 
	{ tmpQN1_d1 sc_out sc_lv 32 signal 2 } 
	{ tmpQN2_address0 sc_out sc_lv 10 signal 3 } 
	{ tmpQN2_ce0 sc_out sc_logic 1 signal 3 } 
	{ tmpQN2_we0 sc_out sc_logic 1 signal 3 } 
	{ tmpQN2_d0 sc_out sc_lv 32 signal 3 } 
	{ tmpQN2_address1 sc_out sc_lv 10 signal 3 } 
	{ tmpQN2_ce1 sc_out sc_logic 1 signal 3 } 
	{ tmpQN2_we1 sc_out sc_logic 1 signal 3 } 
	{ tmpQN2_d1 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmpFx_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpFx", "role": "address0" }} , 
 	{ "name": "tmpFx_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpFx", "role": "ce0" }} , 
 	{ "name": "tmpFx_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpFx", "role": "q0" }} , 
 	{ "name": "tmpFx_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpFx", "role": "address1" }} , 
 	{ "name": "tmpFx_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpFx", "role": "ce1" }} , 
 	{ "name": "tmpFx_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpFx", "role": "q1" }} , 
 	{ "name": "tmpObjSEndTerm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpObjSEndTerm", "role": "address0" }} , 
 	{ "name": "tmpObjSEndTerm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpObjSEndTerm", "role": "ce0" }} , 
 	{ "name": "tmpObjSEndTerm_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpObjSEndTerm", "role": "q0" }} , 
 	{ "name": "tmpObjSEndTerm_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpObjSEndTerm", "role": "address1" }} , 
 	{ "name": "tmpObjSEndTerm_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpObjSEndTerm", "role": "ce1" }} , 
 	{ "name": "tmpObjSEndTerm_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpObjSEndTerm", "role": "q1" }} , 
 	{ "name": "tmpQN1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpQN1", "role": "address0" }} , 
 	{ "name": "tmpQN1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQN1", "role": "ce0" }} , 
 	{ "name": "tmpQN1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQN1", "role": "we0" }} , 
 	{ "name": "tmpQN1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpQN1", "role": "d0" }} , 
 	{ "name": "tmpQN1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpQN1", "role": "address1" }} , 
 	{ "name": "tmpQN1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQN1", "role": "ce1" }} , 
 	{ "name": "tmpQN1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQN1", "role": "we1" }} , 
 	{ "name": "tmpQN1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpQN1", "role": "d1" }} , 
 	{ "name": "tmpQN2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpQN2", "role": "address0" }} , 
 	{ "name": "tmpQN2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQN2", "role": "ce0" }} , 
 	{ "name": "tmpQN2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQN2", "role": "we0" }} , 
 	{ "name": "tmpQN2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpQN2", "role": "d0" }} , 
 	{ "name": "tmpQN2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpQN2", "role": "address1" }} , 
 	{ "name": "tmpQN2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQN2", "role": "ce1" }} , 
 	{ "name": "tmpQN2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQN2", "role": "we1" }} , 
 	{ "name": "tmpQN2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpQN2", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "acado_setObjQN1QN2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmpFx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmpObjSEndTerm", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmpQN1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmpQN2", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	acado_setObjQN1QN2 {
		tmpFx {Type I LastRead 5 FirstWrite -1}
		tmpObjSEndTerm {Type I LastRead 5 FirstWrite -1}
		tmpQN1 {Type O LastRead -1 FirstWrite 9}
		tmpQN2 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tmpFx { ap_memory {  { tmpFx_address0 mem_address 1 10 }  { tmpFx_ce0 mem_ce 1 1 }  { tmpFx_q0 mem_dout 0 32 }  { tmpFx_address1 MemPortADDR2 1 10 }  { tmpFx_ce1 MemPortCE2 1 1 }  { tmpFx_q1 MemPortDOUT2 0 32 } } }
	tmpObjSEndTerm { ap_memory {  { tmpObjSEndTerm_address0 mem_address 1 10 }  { tmpObjSEndTerm_ce0 mem_ce 1 1 }  { tmpObjSEndTerm_q0 mem_dout 0 32 }  { tmpObjSEndTerm_address1 MemPortADDR2 1 10 }  { tmpObjSEndTerm_ce1 MemPortCE2 1 1 }  { tmpObjSEndTerm_q1 MemPortDOUT2 0 32 } } }
	tmpQN1 { ap_memory {  { tmpQN1_address0 mem_address 1 10 }  { tmpQN1_ce0 mem_ce 1 1 }  { tmpQN1_we0 mem_we 1 1 }  { tmpQN1_d0 mem_din 1 32 }  { tmpQN1_address1 MemPortADDR2 1 10 }  { tmpQN1_ce1 MemPortCE2 1 1 }  { tmpQN1_we1 MemPortWE2 1 1 }  { tmpQN1_d1 MemPortDIN2 1 32 } } }
	tmpQN2 { ap_memory {  { tmpQN2_address0 mem_address 1 10 }  { tmpQN2_ce0 mem_ce 1 1 }  { tmpQN2_we0 mem_we 1 1 }  { tmpQN2_d0 mem_din 1 32 }  { tmpQN2_address1 MemPortADDR2 1 10 }  { tmpQN2_ce1 MemPortCE2 1 1 }  { tmpQN2_we1 MemPortWE2 1 1 }  { tmpQN2_d1 MemPortDIN2 1 32 } } }
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
