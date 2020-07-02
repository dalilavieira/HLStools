set moduleName tta_filter_process_c
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
set C_modelName {tta_filter_process_c}
set C_modelType { void 0 }
set C_modelArgList {
	{ qm int 32 regular {array 10 { 2 2 } 1 1 }  }
	{ dx int 32 regular {array 10 { 2 2 } 1 1 }  }
	{ dl int 32 regular {array 10 { 2 2 } 1 1 }  }
	{ error int 32 regular {array 10 { 2 3 } 1 1 }  }
	{ in_r int 32 regular {array 10 { 2 3 } 1 1 }  }
	{ shift int 32 regular  }
	{ round int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "qm", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "qm","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "dx", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "dl", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dl","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "error", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "error","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "shift","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "round", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "round","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ qm_address0 sc_out sc_lv 4 signal 0 } 
	{ qm_ce0 sc_out sc_logic 1 signal 0 } 
	{ qm_we0 sc_out sc_logic 1 signal 0 } 
	{ qm_d0 sc_out sc_lv 32 signal 0 } 
	{ qm_q0 sc_in sc_lv 32 signal 0 } 
	{ qm_address1 sc_out sc_lv 4 signal 0 } 
	{ qm_ce1 sc_out sc_logic 1 signal 0 } 
	{ qm_we1 sc_out sc_logic 1 signal 0 } 
	{ qm_d1 sc_out sc_lv 32 signal 0 } 
	{ qm_q1 sc_in sc_lv 32 signal 0 } 
	{ dx_address0 sc_out sc_lv 4 signal 1 } 
	{ dx_ce0 sc_out sc_logic 1 signal 1 } 
	{ dx_we0 sc_out sc_logic 1 signal 1 } 
	{ dx_d0 sc_out sc_lv 32 signal 1 } 
	{ dx_q0 sc_in sc_lv 32 signal 1 } 
	{ dx_address1 sc_out sc_lv 4 signal 1 } 
	{ dx_ce1 sc_out sc_logic 1 signal 1 } 
	{ dx_we1 sc_out sc_logic 1 signal 1 } 
	{ dx_d1 sc_out sc_lv 32 signal 1 } 
	{ dx_q1 sc_in sc_lv 32 signal 1 } 
	{ dl_address0 sc_out sc_lv 4 signal 2 } 
	{ dl_ce0 sc_out sc_logic 1 signal 2 } 
	{ dl_we0 sc_out sc_logic 1 signal 2 } 
	{ dl_d0 sc_out sc_lv 32 signal 2 } 
	{ dl_q0 sc_in sc_lv 32 signal 2 } 
	{ dl_address1 sc_out sc_lv 4 signal 2 } 
	{ dl_ce1 sc_out sc_logic 1 signal 2 } 
	{ dl_we1 sc_out sc_logic 1 signal 2 } 
	{ dl_d1 sc_out sc_lv 32 signal 2 } 
	{ dl_q1 sc_in sc_lv 32 signal 2 } 
	{ error_address0 sc_out sc_lv 4 signal 3 } 
	{ error_ce0 sc_out sc_logic 1 signal 3 } 
	{ error_we0 sc_out sc_logic 1 signal 3 } 
	{ error_d0 sc_out sc_lv 32 signal 3 } 
	{ error_q0 sc_in sc_lv 32 signal 3 } 
	{ in_r_address0 sc_out sc_lv 4 signal 4 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_r_we0 sc_out sc_logic 1 signal 4 } 
	{ in_r_d0 sc_out sc_lv 32 signal 4 } 
	{ in_r_q0 sc_in sc_lv 32 signal 4 } 
	{ shift sc_in sc_lv 32 signal 5 } 
	{ round sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "qm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "qm", "role": "address0" }} , 
 	{ "name": "qm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qm", "role": "ce0" }} , 
 	{ "name": "qm_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qm", "role": "we0" }} , 
 	{ "name": "qm_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "qm", "role": "d0" }} , 
 	{ "name": "qm_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "qm", "role": "q0" }} , 
 	{ "name": "qm_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "qm", "role": "address1" }} , 
 	{ "name": "qm_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qm", "role": "ce1" }} , 
 	{ "name": "qm_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qm", "role": "we1" }} , 
 	{ "name": "qm_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "qm", "role": "d1" }} , 
 	{ "name": "qm_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "qm", "role": "q1" }} , 
 	{ "name": "dx_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dx", "role": "address0" }} , 
 	{ "name": "dx_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dx", "role": "ce0" }} , 
 	{ "name": "dx_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dx", "role": "we0" }} , 
 	{ "name": "dx_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dx", "role": "d0" }} , 
 	{ "name": "dx_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dx", "role": "q0" }} , 
 	{ "name": "dx_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dx", "role": "address1" }} , 
 	{ "name": "dx_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dx", "role": "ce1" }} , 
 	{ "name": "dx_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dx", "role": "we1" }} , 
 	{ "name": "dx_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dx", "role": "d1" }} , 
 	{ "name": "dx_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dx", "role": "q1" }} , 
 	{ "name": "dl_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dl", "role": "address0" }} , 
 	{ "name": "dl_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dl", "role": "ce0" }} , 
 	{ "name": "dl_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dl", "role": "we0" }} , 
 	{ "name": "dl_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dl", "role": "d0" }} , 
 	{ "name": "dl_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dl", "role": "q0" }} , 
 	{ "name": "dl_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dl", "role": "address1" }} , 
 	{ "name": "dl_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dl", "role": "ce1" }} , 
 	{ "name": "dl_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dl", "role": "we1" }} , 
 	{ "name": "dl_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dl", "role": "d1" }} , 
 	{ "name": "dl_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dl", "role": "q1" }} , 
 	{ "name": "error_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "error", "role": "address0" }} , 
 	{ "name": "error_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "error", "role": "ce0" }} , 
 	{ "name": "error_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "error", "role": "we0" }} , 
 	{ "name": "error_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "error", "role": "d0" }} , 
 	{ "name": "error_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "error", "role": "q0" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "we0" }} , 
 	{ "name": "in_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "d0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "round", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "round", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "tta_filter_process_c",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "qm", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dx", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dl", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "error", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "round", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	tta_filter_process_c {
		qm {Type IO LastRead 13 FirstWrite 5}
		dx {Type IO LastRead 10 FirstWrite 10}
		dl {Type IO LastRead 13 FirstWrite 13}
		error {Type IO LastRead 0 FirstWrite 14}
		in_r {Type IO LastRead 13 FirstWrite 15}
		shift {Type I LastRead 1 FirstWrite -1}
		round {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	qm { ap_memory {  { qm_address0 mem_address 1 4 }  { qm_ce0 mem_ce 1 1 }  { qm_we0 mem_we 1 1 }  { qm_d0 mem_din 1 32 }  { qm_q0 mem_dout 0 32 }  { qm_address1 MemPortADDR2 1 4 }  { qm_ce1 MemPortCE2 1 1 }  { qm_we1 MemPortWE2 1 1 }  { qm_d1 MemPortDIN2 1 32 }  { qm_q1 MemPortDOUT2 0 32 } } }
	dx { ap_memory {  { dx_address0 mem_address 1 4 }  { dx_ce0 mem_ce 1 1 }  { dx_we0 mem_we 1 1 }  { dx_d0 mem_din 1 32 }  { dx_q0 mem_dout 0 32 }  { dx_address1 MemPortADDR2 1 4 }  { dx_ce1 MemPortCE2 1 1 }  { dx_we1 MemPortWE2 1 1 }  { dx_d1 MemPortDIN2 1 32 }  { dx_q1 MemPortDOUT2 0 32 } } }
	dl { ap_memory {  { dl_address0 mem_address 1 4 }  { dl_ce0 mem_ce 1 1 }  { dl_we0 mem_we 1 1 }  { dl_d0 mem_din 1 32 }  { dl_q0 mem_dout 0 32 }  { dl_address1 MemPortADDR2 1 4 }  { dl_ce1 MemPortCE2 1 1 }  { dl_we1 MemPortWE2 1 1 }  { dl_d1 MemPortDIN2 1 32 }  { dl_q1 MemPortDOUT2 0 32 } } }
	error { ap_memory {  { error_address0 mem_address 1 4 }  { error_ce0 mem_ce 1 1 }  { error_we0 mem_we 1 1 }  { error_d0 mem_din 1 32 }  { error_q0 mem_dout 0 32 } } }
	in_r { ap_memory {  { in_r_address0 mem_address 1 4 }  { in_r_ce0 mem_ce 1 1 }  { in_r_we0 mem_we 1 1 }  { in_r_d0 mem_din 1 32 }  { in_r_q0 mem_dout 0 32 } } }
	shift { ap_none {  { shift in_data 0 32 } } }
	round { ap_none {  { round in_data 0 32 } } }
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
