set moduleName acado_setObjQ1Q2
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
set C_modelName {acado_setObjQ1Q2}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmpFx int 32 regular {array 1000 { 1 1 } 1 1 }  }
	{ tmpObjS int 32 regular {array 1000 { 1 1 } 1 1 }  }
	{ tmpQ1 int 32 regular {array 1000 { 0 0 } 0 1 }  }
	{ tmpQ2 int 32 regular {array 1000 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmpFx", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tmpFx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "tmpObjS", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tmpObjS","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "tmpQ1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tmpQ1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "tmpQ2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tmpQ2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} ]}
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
	{ tmpObjS_address0 sc_out sc_lv 10 signal 1 } 
	{ tmpObjS_ce0 sc_out sc_logic 1 signal 1 } 
	{ tmpObjS_q0 sc_in sc_lv 32 signal 1 } 
	{ tmpObjS_address1 sc_out sc_lv 10 signal 1 } 
	{ tmpObjS_ce1 sc_out sc_logic 1 signal 1 } 
	{ tmpObjS_q1 sc_in sc_lv 32 signal 1 } 
	{ tmpQ1_address0 sc_out sc_lv 10 signal 2 } 
	{ tmpQ1_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmpQ1_we0 sc_out sc_logic 1 signal 2 } 
	{ tmpQ1_d0 sc_out sc_lv 32 signal 2 } 
	{ tmpQ1_address1 sc_out sc_lv 10 signal 2 } 
	{ tmpQ1_ce1 sc_out sc_logic 1 signal 2 } 
	{ tmpQ1_we1 sc_out sc_logic 1 signal 2 } 
	{ tmpQ1_d1 sc_out sc_lv 32 signal 2 } 
	{ tmpQ2_address0 sc_out sc_lv 10 signal 3 } 
	{ tmpQ2_ce0 sc_out sc_logic 1 signal 3 } 
	{ tmpQ2_we0 sc_out sc_logic 1 signal 3 } 
	{ tmpQ2_d0 sc_out sc_lv 32 signal 3 } 
	{ tmpQ2_address1 sc_out sc_lv 10 signal 3 } 
	{ tmpQ2_ce1 sc_out sc_logic 1 signal 3 } 
	{ tmpQ2_we1 sc_out sc_logic 1 signal 3 } 
	{ tmpQ2_d1 sc_out sc_lv 32 signal 3 } 
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
 	{ "name": "tmpObjS_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpObjS", "role": "address0" }} , 
 	{ "name": "tmpObjS_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpObjS", "role": "ce0" }} , 
 	{ "name": "tmpObjS_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpObjS", "role": "q0" }} , 
 	{ "name": "tmpObjS_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpObjS", "role": "address1" }} , 
 	{ "name": "tmpObjS_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpObjS", "role": "ce1" }} , 
 	{ "name": "tmpObjS_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpObjS", "role": "q1" }} , 
 	{ "name": "tmpQ1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpQ1", "role": "address0" }} , 
 	{ "name": "tmpQ1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQ1", "role": "ce0" }} , 
 	{ "name": "tmpQ1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQ1", "role": "we0" }} , 
 	{ "name": "tmpQ1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpQ1", "role": "d0" }} , 
 	{ "name": "tmpQ1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpQ1", "role": "address1" }} , 
 	{ "name": "tmpQ1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQ1", "role": "ce1" }} , 
 	{ "name": "tmpQ1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQ1", "role": "we1" }} , 
 	{ "name": "tmpQ1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpQ1", "role": "d1" }} , 
 	{ "name": "tmpQ2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpQ2", "role": "address0" }} , 
 	{ "name": "tmpQ2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQ2", "role": "ce0" }} , 
 	{ "name": "tmpQ2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQ2", "role": "we0" }} , 
 	{ "name": "tmpQ2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpQ2", "role": "d0" }} , 
 	{ "name": "tmpQ2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmpQ2", "role": "address1" }} , 
 	{ "name": "tmpQ2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQ2", "role": "ce1" }} , 
 	{ "name": "tmpQ2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpQ2", "role": "we1" }} , 
 	{ "name": "tmpQ2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmpQ2", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "acado_setObjQ1Q2",
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
			{"Name" : "tmpFx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmpObjS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmpQ1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmpQ2", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	acado_setObjQ1Q2 {
		tmpFx {Type I LastRead 8 FirstWrite -1}
		tmpObjS {Type I LastRead 8 FirstWrite -1}
		tmpQ1 {Type O LastRead -1 FirstWrite 12}
		tmpQ2 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tmpFx { ap_memory {  { tmpFx_address0 mem_address 1 10 }  { tmpFx_ce0 mem_ce 1 1 }  { tmpFx_q0 mem_dout 0 32 }  { tmpFx_address1 MemPortADDR2 1 10 }  { tmpFx_ce1 MemPortCE2 1 1 }  { tmpFx_q1 MemPortDOUT2 0 32 } } }
	tmpObjS { ap_memory {  { tmpObjS_address0 mem_address 1 10 }  { tmpObjS_ce0 mem_ce 1 1 }  { tmpObjS_q0 mem_dout 0 32 }  { tmpObjS_address1 MemPortADDR2 1 10 }  { tmpObjS_ce1 MemPortCE2 1 1 }  { tmpObjS_q1 MemPortDOUT2 0 32 } } }
	tmpQ1 { ap_memory {  { tmpQ1_address0 mem_address 1 10 }  { tmpQ1_ce0 mem_ce 1 1 }  { tmpQ1_we0 mem_we 1 1 }  { tmpQ1_d0 mem_din 1 32 }  { tmpQ1_address1 MemPortADDR2 1 10 }  { tmpQ1_ce1 MemPortCE2 1 1 }  { tmpQ1_we1 MemPortWE2 1 1 }  { tmpQ1_d1 MemPortDIN2 1 32 } } }
	tmpQ2 { ap_memory {  { tmpQ2_address0 mem_address 1 10 }  { tmpQ2_ce0 mem_ce 1 1 }  { tmpQ2_we0 mem_we 1 1 }  { tmpQ2_d0 mem_din 1 32 }  { tmpQ2_address1 MemPortADDR2 1 10 }  { tmpQ2_ce1 MemPortCE2 1 1 }  { tmpQ2_we1 MemPortWE2 1 1 }  { tmpQ2_d1 MemPortDIN2 1 32 } } }
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
