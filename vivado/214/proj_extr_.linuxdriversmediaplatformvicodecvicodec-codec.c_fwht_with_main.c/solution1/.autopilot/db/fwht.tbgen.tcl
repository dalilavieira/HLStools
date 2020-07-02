set moduleName fwht
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
set C_modelName {fwht}
set C_modelType { void 0 }
set C_modelArgList {
	{ block_r int 32 regular {array 30 { 1 1 } 1 1 }  }
	{ output_block int 32 regular {array 30 { 2 2 } 1 1 }  }
	{ stride int 32 regular  }
	{ input_step int 32 regular  }
	{ intra int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "block_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "block","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "output_block", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_block","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 29,"step" : 1}]}]}]} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stride","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "input_step", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_step","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "intra", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "intra","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ block_r_address0 sc_out sc_lv 5 signal 0 } 
	{ block_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ block_r_q0 sc_in sc_lv 32 signal 0 } 
	{ block_r_address1 sc_out sc_lv 5 signal 0 } 
	{ block_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ block_r_q1 sc_in sc_lv 32 signal 0 } 
	{ output_block_address0 sc_out sc_lv 5 signal 1 } 
	{ output_block_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_block_we0 sc_out sc_logic 1 signal 1 } 
	{ output_block_d0 sc_out sc_lv 32 signal 1 } 
	{ output_block_q0 sc_in sc_lv 32 signal 1 } 
	{ output_block_address1 sc_out sc_lv 5 signal 1 } 
	{ output_block_ce1 sc_out sc_logic 1 signal 1 } 
	{ output_block_we1 sc_out sc_logic 1 signal 1 } 
	{ output_block_d1 sc_out sc_lv 32 signal 1 } 
	{ output_block_q1 sc_in sc_lv 32 signal 1 } 
	{ stride sc_in sc_lv 32 signal 2 } 
	{ input_step sc_in sc_lv 32 signal 3 } 
	{ intra sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "block_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "block_r", "role": "address0" }} , 
 	{ "name": "block_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_r", "role": "ce0" }} , 
 	{ "name": "block_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_r", "role": "q0" }} , 
 	{ "name": "block_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "block_r", "role": "address1" }} , 
 	{ "name": "block_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_r", "role": "ce1" }} , 
 	{ "name": "block_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_r", "role": "q1" }} , 
 	{ "name": "output_block_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_block", "role": "address0" }} , 
 	{ "name": "output_block_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_block", "role": "ce0" }} , 
 	{ "name": "output_block_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_block", "role": "we0" }} , 
 	{ "name": "output_block_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_block", "role": "d0" }} , 
 	{ "name": "output_block_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_block", "role": "q0" }} , 
 	{ "name": "output_block_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_block", "role": "address1" }} , 
 	{ "name": "output_block_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_block", "role": "ce1" }} , 
 	{ "name": "output_block_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_block", "role": "we1" }} , 
 	{ "name": "output_block_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_block", "role": "d1" }} , 
 	{ "name": "output_block_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_block", "role": "q1" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "input_step", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_step", "role": "default" }} , 
 	{ "name": "intra", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "intra", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "fwht",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "154", "EstimateLatencyMax" : "154",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "block_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_block", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_step", "Type" : "None", "Direction" : "I"},
			{"Name" : "intra", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	fwht {
		block_r {Type I LastRead 7 FirstWrite -1}
		output_block {Type IO LastRead 6 FirstWrite 6}
		stride {Type I LastRead 0 FirstWrite -1}
		input_step {Type I LastRead 0 FirstWrite -1}
		intra {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "154", "Max" : "154"}
	, {"Name" : "Interval", "Min" : "155", "Max" : "155"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	block_r { ap_memory {  { block_r_address0 mem_address 1 5 }  { block_r_ce0 mem_ce 1 1 }  { block_r_q0 mem_dout 0 32 }  { block_r_address1 MemPortADDR2 1 5 }  { block_r_ce1 MemPortCE2 1 1 }  { block_r_q1 MemPortDOUT2 0 32 } } }
	output_block { ap_memory {  { output_block_address0 mem_address 1 5 }  { output_block_ce0 mem_ce 1 1 }  { output_block_we0 mem_we 1 1 }  { output_block_d0 mem_din 1 32 }  { output_block_q0 mem_dout 0 32 }  { output_block_address1 MemPortADDR2 1 5 }  { output_block_ce1 MemPortCE2 1 1 }  { output_block_we1 MemPortWE2 1 1 }  { output_block_d1 MemPortDIN2 1 32 }  { output_block_q1 MemPortDOUT2 0 32 } } }
	stride { ap_none {  { stride in_data 0 32 } } }
	input_step { ap_none {  { input_step in_data 0 32 } } }
	intra { ap_none {  { intra in_data 0 32 } } }
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
