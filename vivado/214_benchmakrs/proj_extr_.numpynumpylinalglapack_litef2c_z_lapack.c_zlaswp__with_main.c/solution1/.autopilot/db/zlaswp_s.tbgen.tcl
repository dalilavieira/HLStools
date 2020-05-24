set moduleName zlaswp_s
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
set C_modelName {zlaswp_}
set C_modelType { int 32 }
set C_modelArgList {
	{ n int 32 regular {pointer 0}  }
	{ a_i int 32 regular {array 1000 { 2 2 } 1 1 }  }
	{ a_r int 32 regular {array 1000 { 2 2 } 1 1 }  }
	{ lda int 32 regular {pointer 0}  }
	{ k1 int 32 regular {pointer 0}  }
	{ k2 int 32 regular {pointer 0}  }
	{ ipiv int 32 regular {array 1000 { 1 3 } 1 1 }  }
	{ incx int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "n","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "a_i", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a.i","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "a_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a.r","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "lda", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "lda","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "k1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "k1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "k2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "k2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ipiv", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ipiv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "incx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "incx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ n sc_in sc_lv 32 signal 0 } 
	{ a_i_address0 sc_out sc_lv 10 signal 1 } 
	{ a_i_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_i_we0 sc_out sc_logic 1 signal 1 } 
	{ a_i_d0 sc_out sc_lv 32 signal 1 } 
	{ a_i_q0 sc_in sc_lv 32 signal 1 } 
	{ a_i_address1 sc_out sc_lv 10 signal 1 } 
	{ a_i_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_i_we1 sc_out sc_logic 1 signal 1 } 
	{ a_i_d1 sc_out sc_lv 32 signal 1 } 
	{ a_i_q1 sc_in sc_lv 32 signal 1 } 
	{ a_r_address0 sc_out sc_lv 10 signal 2 } 
	{ a_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_r_we0 sc_out sc_logic 1 signal 2 } 
	{ a_r_d0 sc_out sc_lv 32 signal 2 } 
	{ a_r_q0 sc_in sc_lv 32 signal 2 } 
	{ a_r_address1 sc_out sc_lv 10 signal 2 } 
	{ a_r_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_r_we1 sc_out sc_logic 1 signal 2 } 
	{ a_r_d1 sc_out sc_lv 32 signal 2 } 
	{ a_r_q1 sc_in sc_lv 32 signal 2 } 
	{ lda sc_in sc_lv 32 signal 3 } 
	{ k1 sc_in sc_lv 32 signal 4 } 
	{ k2 sc_in sc_lv 32 signal 5 } 
	{ ipiv_address0 sc_out sc_lv 10 signal 6 } 
	{ ipiv_ce0 sc_out sc_logic 1 signal 6 } 
	{ ipiv_q0 sc_in sc_lv 32 signal 6 } 
	{ incx sc_in sc_lv 32 signal 7 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "a_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "a_i", "role": "address0" }} , 
 	{ "name": "a_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i", "role": "ce0" }} , 
 	{ "name": "a_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i", "role": "we0" }} , 
 	{ "name": "a_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i", "role": "d0" }} , 
 	{ "name": "a_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i", "role": "q0" }} , 
 	{ "name": "a_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "a_i", "role": "address1" }} , 
 	{ "name": "a_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i", "role": "ce1" }} , 
 	{ "name": "a_i_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i", "role": "we1" }} , 
 	{ "name": "a_i_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i", "role": "d1" }} , 
 	{ "name": "a_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i", "role": "q1" }} , 
 	{ "name": "a_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "a_r", "role": "address0" }} , 
 	{ "name": "a_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_r", "role": "ce0" }} , 
 	{ "name": "a_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_r", "role": "we0" }} , 
 	{ "name": "a_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_r", "role": "d0" }} , 
 	{ "name": "a_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_r", "role": "q0" }} , 
 	{ "name": "a_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "a_r", "role": "address1" }} , 
 	{ "name": "a_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_r", "role": "ce1" }} , 
 	{ "name": "a_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_r", "role": "we1" }} , 
 	{ "name": "a_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_r", "role": "d1" }} , 
 	{ "name": "a_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_r", "role": "q1" }} , 
 	{ "name": "lda", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lda", "role": "default" }} , 
 	{ "name": "k1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k1", "role": "default" }} , 
 	{ "name": "k2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k2", "role": "default" }} , 
 	{ "name": "ipiv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ipiv", "role": "address0" }} , 
 	{ "name": "ipiv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipiv", "role": "ce0" }} , 
 	{ "name": "ipiv_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ipiv", "role": "q0" }} , 
 	{ "name": "incx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "incx", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "zlaswp_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lda", "Type" : "None", "Direction" : "I"},
			{"Name" : "k1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ipiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "incx", "Type" : "None", "Direction" : "I"},
			{"Name" : "ix0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ix", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	zlaswp_s {
		n {Type I LastRead 1 FirstWrite -1}
		a_i {Type IO LastRead 7 FirstWrite 7}
		a_r {Type IO LastRead 7 FirstWrite 7}
		lda {Type I LastRead 0 FirstWrite -1}
		k1 {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 0 FirstWrite -1}
		ipiv {Type I LastRead 4 FirstWrite -1}
		incx {Type I LastRead 0 FirstWrite -1}
		ix0 {Type IO LastRead -1 FirstWrite -1}
		i1 {Type IO LastRead -1 FirstWrite -1}
		i2 {Type IO LastRead -1 FirstWrite -1}
		j {Type IO LastRead -1 FirstWrite -1}
		ix {Type IO LastRead -1 FirstWrite -1}
		i_s {Type IO LastRead -1 FirstWrite -1}
		ip {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	n { ap_none {  { n in_data 0 32 } } }
	a_i { ap_memory {  { a_i_address0 mem_address 1 10 }  { a_i_ce0 mem_ce 1 1 }  { a_i_we0 mem_we 1 1 }  { a_i_d0 mem_din 1 32 }  { a_i_q0 mem_dout 0 32 }  { a_i_address1 MemPortADDR2 1 10 }  { a_i_ce1 MemPortCE2 1 1 }  { a_i_we1 MemPortWE2 1 1 }  { a_i_d1 MemPortDIN2 1 32 }  { a_i_q1 MemPortDOUT2 0 32 } } }
	a_r { ap_memory {  { a_r_address0 mem_address 1 10 }  { a_r_ce0 mem_ce 1 1 }  { a_r_we0 mem_we 1 1 }  { a_r_d0 mem_din 1 32 }  { a_r_q0 mem_dout 0 32 }  { a_r_address1 MemPortADDR2 1 10 }  { a_r_ce1 MemPortCE2 1 1 }  { a_r_we1 MemPortWE2 1 1 }  { a_r_d1 MemPortDIN2 1 32 }  { a_r_q1 MemPortDOUT2 0 32 } } }
	lda { ap_none {  { lda in_data 0 32 } } }
	k1 { ap_none {  { k1 in_data 0 32 } } }
	k2 { ap_none {  { k2 in_data 0 32 } } }
	ipiv { ap_memory {  { ipiv_address0 mem_address 1 10 }  { ipiv_ce0 mem_ce 1 1 }  { ipiv_q0 mem_dout 0 32 } } }
	incx { ap_none {  { incx in_data 0 32 } } }
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
