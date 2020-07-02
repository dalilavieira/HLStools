set moduleName get_input
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
set C_modelName {get_input}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_depth int 32 regular {pointer 0 volatile }  }
	{ fft_hdata_re float 32 regular {array 10 { 2 3 } 1 1 }  }
	{ fft_hdata_im int 32 regular {array 10 { 0 3 } 0 1 }  }
	{ in_data float 32 regular {array 1000 { 1 3 } 1 1 }  }
	{ in_linesize int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ w int 32 regular  }
	{ h int 32 regular  }
	{ n int 32 regular  }
	{ plane int 32 regular  }
	{ scale float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_depth", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s.depth","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fft_hdata_re", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fft_hdata.re","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "fft_hdata_im", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fft_hdata.im","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 0,"up" : 9,"step" : 1},{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in_linesize", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.linesize","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "n","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "plane", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "plane","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "scale", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "scale","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_depth sc_in sc_lv 32 signal 0 } 
	{ fft_hdata_re_address0 sc_out sc_lv 4 signal 1 } 
	{ fft_hdata_re_ce0 sc_out sc_logic 1 signal 1 } 
	{ fft_hdata_re_we0 sc_out sc_logic 1 signal 1 } 
	{ fft_hdata_re_d0 sc_out sc_lv 32 signal 1 } 
	{ fft_hdata_re_q0 sc_in sc_lv 32 signal 1 } 
	{ fft_hdata_im_address0 sc_out sc_lv 4 signal 2 } 
	{ fft_hdata_im_ce0 sc_out sc_logic 1 signal 2 } 
	{ fft_hdata_im_we0 sc_out sc_logic 1 signal 2 } 
	{ fft_hdata_im_d0 sc_out sc_lv 32 signal 2 } 
	{ in_data_address0 sc_out sc_lv 10 signal 3 } 
	{ in_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_data_q0 sc_in sc_lv 32 signal 3 } 
	{ in_linesize_address0 sc_out sc_lv 7 signal 4 } 
	{ in_linesize_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_linesize_q0 sc_in sc_lv 32 signal 4 } 
	{ w sc_in sc_lv 32 signal 5 } 
	{ h sc_in sc_lv 32 signal 6 } 
	{ n sc_in sc_lv 32 signal 7 } 
	{ plane sc_in sc_lv 32 signal 8 } 
	{ scale sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_depth", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_depth", "role": "default" }} , 
 	{ "name": "fft_hdata_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_hdata_re", "role": "address0" }} , 
 	{ "name": "fft_hdata_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_hdata_re", "role": "ce0" }} , 
 	{ "name": "fft_hdata_re_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_hdata_re", "role": "we0" }} , 
 	{ "name": "fft_hdata_re_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_hdata_re", "role": "d0" }} , 
 	{ "name": "fft_hdata_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_hdata_re", "role": "q0" }} , 
 	{ "name": "fft_hdata_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_hdata_im", "role": "address0" }} , 
 	{ "name": "fft_hdata_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_hdata_im", "role": "ce0" }} , 
 	{ "name": "fft_hdata_im_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_hdata_im", "role": "we0" }} , 
 	{ "name": "fft_hdata_im_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_hdata_im", "role": "d0" }} , 
 	{ "name": "in_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "in_data", "role": "address0" }} , 
 	{ "name": "in_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data", "role": "ce0" }} , 
 	{ "name": "in_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data", "role": "q0" }} , 
 	{ "name": "in_linesize_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_linesize", "role": "address0" }} , 
 	{ "name": "in_linesize_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_linesize", "role": "ce0" }} , 
 	{ "name": "in_linesize_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_linesize", "role": "q0" }} , 
 	{ "name": "w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "default" }} , 
 	{ "name": "h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "plane", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plane", "role": "default" }} , 
 	{ "name": "scale", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scale", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "get_input",
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
			{"Name" : "s_depth", "Type" : "None", "Direction" : "I"},
			{"Name" : "fft_hdata_re", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fft_hdata_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_linesize", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"},
			{"Name" : "scale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.get_input_fmul_32ns_32ns_32_3_max_dsp_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	get_input {
		s_depth {Type I LastRead 0 FirstWrite -1}
		fft_hdata_re {Type IO LastRead 6 FirstWrite 4}
		fft_hdata_im {Type O LastRead -1 FirstWrite 4}
		in_data {Type I LastRead 4 FirstWrite -1}
		in_linesize {Type I LastRead 2 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}
		scale {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_depth { ap_none {  { s_depth in_data 0 32 } } }
	fft_hdata_re { ap_memory {  { fft_hdata_re_address0 mem_address 1 4 }  { fft_hdata_re_ce0 mem_ce 1 1 }  { fft_hdata_re_we0 mem_we 1 1 }  { fft_hdata_re_d0 mem_din 1 32 }  { fft_hdata_re_q0 mem_dout 0 32 } } }
	fft_hdata_im { ap_memory {  { fft_hdata_im_address0 mem_address 1 4 }  { fft_hdata_im_ce0 mem_ce 1 1 }  { fft_hdata_im_we0 mem_we 1 1 }  { fft_hdata_im_d0 mem_din 1 32 } } }
	in_data { ap_memory {  { in_data_address0 mem_address 1 10 }  { in_data_ce0 mem_ce 1 1 }  { in_data_q0 mem_dout 0 32 } } }
	in_linesize { ap_memory {  { in_linesize_address0 mem_address 1 7 }  { in_linesize_ce0 mem_ce 1 1 }  { in_linesize_q0 mem_dout 0 32 } } }
	w { ap_none {  { w in_data 0 32 } } }
	h { ap_none {  { h in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
	plane { ap_none {  { plane in_data 0 32 } } }
	scale { ap_none {  { scale in_data 0 32 } } }
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
