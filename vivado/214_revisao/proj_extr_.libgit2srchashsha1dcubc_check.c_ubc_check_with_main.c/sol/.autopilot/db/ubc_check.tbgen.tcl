set moduleName ubc_check
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
set C_modelName {ubc_check}
set C_modelType { void 0 }
set C_modelArgList {
	{ W int 32 unused {array 80 { } 0 1 }  }
	{ dvmask int 32 regular {array 1 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "W", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "W","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 79,"step" : 1}]}]}]} , 
 	{ "Name" : "dvmask", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dvmask","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ W_address0 sc_out sc_lv 7 signal 0 } 
	{ W_ce0 sc_out sc_logic 1 signal 0 } 
	{ W_we0 sc_out sc_logic 1 signal 0 } 
	{ W_d0 sc_out sc_lv 32 signal 0 } 
	{ W_q0 sc_in sc_lv 32 signal 0 } 
	{ W_address1 sc_out sc_lv 7 signal 0 } 
	{ W_ce1 sc_out sc_logic 1 signal 0 } 
	{ W_we1 sc_out sc_logic 1 signal 0 } 
	{ W_d1 sc_out sc_lv 32 signal 0 } 
	{ W_q1 sc_in sc_lv 32 signal 0 } 
	{ dvmask_address0 sc_out sc_lv 1 signal 1 } 
	{ dvmask_ce0 sc_out sc_logic 1 signal 1 } 
	{ dvmask_we0 sc_out sc_logic 1 signal 1 } 
	{ dvmask_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "W_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "W", "role": "address0" }} , 
 	{ "name": "W_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ce0" }} , 
 	{ "name": "W_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "we0" }} , 
 	{ "name": "W_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "d0" }} , 
 	{ "name": "W_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "q0" }} , 
 	{ "name": "W_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "W", "role": "address1" }} , 
 	{ "name": "W_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ce1" }} , 
 	{ "name": "W_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "we1" }} , 
 	{ "name": "W_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "d1" }} , 
 	{ "name": "W_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "q1" }} , 
 	{ "name": "dvmask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dvmask", "role": "address0" }} , 
 	{ "name": "dvmask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dvmask", "role": "ce0" }} , 
 	{ "name": "dvmask_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dvmask", "role": "we0" }} , 
 	{ "name": "dvmask_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dvmask", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ubc_check",
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
			{"Name" : "W", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "dvmask", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	ubc_check {
		W {Type X LastRead -1 FirstWrite -1}
		dvmask {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	W { ap_memory {  { W_address0 mem_address 1 7 }  { W_ce0 mem_ce 1 1 }  { W_we0 mem_we 1 1 }  { W_d0 mem_din 1 32 }  { W_q0 mem_dout 0 32 }  { W_address1 MemPortADDR2 1 7 }  { W_ce1 MemPortCE2 1 1 }  { W_we1 MemPortWE2 1 1 }  { W_d1 MemPortDIN2 1 32 }  { W_q1 MemPortDOUT2 0 32 } } }
	dvmask { ap_memory {  { dvmask_address0 mem_address 1 1 }  { dvmask_ce0 mem_ce 1 1 }  { dvmask_we0 mem_we 1 1 }  { dvmask_d0 mem_din 1 32 } } }
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
