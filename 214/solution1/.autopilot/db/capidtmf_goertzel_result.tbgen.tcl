set moduleName capidtmf_goertzel_result
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
set C_modelName {capidtmf_goertzel_result}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_r int 64 unused {array 1000 { } 0 1 }  }
	{ coeffs int 64 unused {array 1000 { } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_r", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "buffer","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "coeffs", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "coeffs","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_r_address0 sc_out sc_lv 10 signal 0 } 
	{ buffer_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_r_we0 sc_out sc_logic 1 signal 0 } 
	{ buffer_r_d0 sc_out sc_lv 64 signal 0 } 
	{ buffer_r_q0 sc_in sc_lv 64 signal 0 } 
	{ buffer_r_address1 sc_out sc_lv 10 signal 0 } 
	{ buffer_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ buffer_r_we1 sc_out sc_logic 1 signal 0 } 
	{ buffer_r_d1 sc_out sc_lv 64 signal 0 } 
	{ buffer_r_q1 sc_in sc_lv 64 signal 0 } 
	{ coeffs_address0 sc_out sc_lv 10 signal 1 } 
	{ coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ coeffs_we0 sc_out sc_logic 1 signal 1 } 
	{ coeffs_d0 sc_out sc_lv 64 signal 1 } 
	{ coeffs_q0 sc_in sc_lv 64 signal 1 } 
	{ coeffs_address1 sc_out sc_lv 10 signal 1 } 
	{ coeffs_ce1 sc_out sc_logic 1 signal 1 } 
	{ coeffs_we1 sc_out sc_logic 1 signal 1 } 
	{ coeffs_d1 sc_out sc_lv 64 signal 1 } 
	{ coeffs_q1 sc_in sc_lv 64 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer_r", "role": "address0" }} , 
 	{ "name": "buffer_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce0" }} , 
 	{ "name": "buffer_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "we0" }} , 
 	{ "name": "buffer_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_r", "role": "d0" }} , 
 	{ "name": "buffer_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_r", "role": "q0" }} , 
 	{ "name": "buffer_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer_r", "role": "address1" }} , 
 	{ "name": "buffer_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce1" }} , 
 	{ "name": "buffer_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "we1" }} , 
 	{ "name": "buffer_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_r", "role": "d1" }} , 
 	{ "name": "buffer_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_r", "role": "q1" }} , 
 	{ "name": "coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "coeffs", "role": "address0" }} , 
 	{ "name": "coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeffs", "role": "ce0" }} , 
 	{ "name": "coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeffs", "role": "we0" }} , 
 	{ "name": "coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeffs", "role": "d0" }} , 
 	{ "name": "coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeffs", "role": "q0" }} , 
 	{ "name": "coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "coeffs", "role": "address1" }} , 
 	{ "name": "coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeffs", "role": "ce1" }} , 
 	{ "name": "coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeffs", "role": "we1" }} , 
 	{ "name": "coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeffs", "role": "d1" }} , 
 	{ "name": "coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeffs", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "capidtmf_goertzel_result",
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
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "coeffs", "Type" : "Memory", "Direction" : "X"}]}]}


set ArgLastReadFirstWriteLatency {
	capidtmf_goertzel_result {
		buffer_r {Type X LastRead -1 FirstWrite -1}
		coeffs {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_r { ap_memory {  { buffer_r_address0 mem_address 1 10 }  { buffer_r_ce0 mem_ce 1 1 }  { buffer_r_we0 mem_we 1 1 }  { buffer_r_d0 mem_din 1 64 }  { buffer_r_q0 mem_dout 0 64 }  { buffer_r_address1 MemPortADDR2 1 10 }  { buffer_r_ce1 MemPortCE2 1 1 }  { buffer_r_we1 MemPortWE2 1 1 }  { buffer_r_d1 MemPortDIN2 1 64 }  { buffer_r_q1 MemPortDOUT2 0 64 } } }
	coeffs { ap_memory {  { coeffs_address0 mem_address 1 10 }  { coeffs_ce0 mem_ce 1 1 }  { coeffs_we0 mem_we 1 1 }  { coeffs_d0 mem_din 1 64 }  { coeffs_q0 mem_dout 0 64 }  { coeffs_address1 MemPortADDR2 1 10 }  { coeffs_ce1 MemPortCE2 1 1 }  { coeffs_we1 MemPortWE2 1 1 }  { coeffs_d1 MemPortDIN2 1 64 }  { coeffs_q1 MemPortDOUT2 0 64 } } }
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
