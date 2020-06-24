set moduleName fft5
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
set C_modelName {fft5}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_re int 32 regular {array 100 { 0 0 } 0 1 }  }
	{ out_im int 32 regular {array 100 { 0 0 } 0 1 }  }
	{ in_re int 32 regular {array 100 { 1 1 } 1 1 }  }
	{ in_im int 32 regular {array 100 { 1 1 } 1 1 }  }
	{ exptab_re int 32 regular {array 2 { 1 1 } 1 1 }  }
	{ exptab_im int 32 regular {array 2 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_re", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.re","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "out_im", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.im","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "in_re", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.re","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "in_im", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.im","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "exptab_re", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "exptab.re","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "exptab_im", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "exptab.im","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_re_address0 sc_out sc_lv 7 signal 0 } 
	{ out_re_ce0 sc_out sc_logic 1 signal 0 } 
	{ out_re_we0 sc_out sc_logic 1 signal 0 } 
	{ out_re_d0 sc_out sc_lv 32 signal 0 } 
	{ out_re_address1 sc_out sc_lv 7 signal 0 } 
	{ out_re_ce1 sc_out sc_logic 1 signal 0 } 
	{ out_re_we1 sc_out sc_logic 1 signal 0 } 
	{ out_re_d1 sc_out sc_lv 32 signal 0 } 
	{ out_im_address0 sc_out sc_lv 7 signal 1 } 
	{ out_im_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_im_we0 sc_out sc_logic 1 signal 1 } 
	{ out_im_d0 sc_out sc_lv 32 signal 1 } 
	{ out_im_address1 sc_out sc_lv 7 signal 1 } 
	{ out_im_ce1 sc_out sc_logic 1 signal 1 } 
	{ out_im_we1 sc_out sc_logic 1 signal 1 } 
	{ out_im_d1 sc_out sc_lv 32 signal 1 } 
	{ in_re_address0 sc_out sc_lv 7 signal 2 } 
	{ in_re_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_re_q0 sc_in sc_lv 32 signal 2 } 
	{ in_re_address1 sc_out sc_lv 7 signal 2 } 
	{ in_re_ce1 sc_out sc_logic 1 signal 2 } 
	{ in_re_q1 sc_in sc_lv 32 signal 2 } 
	{ in_im_address0 sc_out sc_lv 7 signal 3 } 
	{ in_im_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_im_q0 sc_in sc_lv 32 signal 3 } 
	{ in_im_address1 sc_out sc_lv 7 signal 3 } 
	{ in_im_ce1 sc_out sc_logic 1 signal 3 } 
	{ in_im_q1 sc_in sc_lv 32 signal 3 } 
	{ exptab_re_address0 sc_out sc_lv 1 signal 4 } 
	{ exptab_re_ce0 sc_out sc_logic 1 signal 4 } 
	{ exptab_re_q0 sc_in sc_lv 32 signal 4 } 
	{ exptab_re_address1 sc_out sc_lv 1 signal 4 } 
	{ exptab_re_ce1 sc_out sc_logic 1 signal 4 } 
	{ exptab_re_q1 sc_in sc_lv 32 signal 4 } 
	{ exptab_im_address0 sc_out sc_lv 1 signal 5 } 
	{ exptab_im_ce0 sc_out sc_logic 1 signal 5 } 
	{ exptab_im_q0 sc_in sc_lv 32 signal 5 } 
	{ exptab_im_address1 sc_out sc_lv 1 signal 5 } 
	{ exptab_im_ce1 sc_out sc_logic 1 signal 5 } 
	{ exptab_im_q1 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_re", "role": "address0" }} , 
 	{ "name": "out_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_re", "role": "ce0" }} , 
 	{ "name": "out_re_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_re", "role": "we0" }} , 
 	{ "name": "out_re_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_re", "role": "d0" }} , 
 	{ "name": "out_re_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_re", "role": "address1" }} , 
 	{ "name": "out_re_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_re", "role": "ce1" }} , 
 	{ "name": "out_re_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_re", "role": "we1" }} , 
 	{ "name": "out_re_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_re", "role": "d1" }} , 
 	{ "name": "out_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_im", "role": "address0" }} , 
 	{ "name": "out_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_im", "role": "ce0" }} , 
 	{ "name": "out_im_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_im", "role": "we0" }} , 
 	{ "name": "out_im_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_im", "role": "d0" }} , 
 	{ "name": "out_im_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_im", "role": "address1" }} , 
 	{ "name": "out_im_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_im", "role": "ce1" }} , 
 	{ "name": "out_im_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_im", "role": "we1" }} , 
 	{ "name": "out_im_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_im", "role": "d1" }} , 
 	{ "name": "in_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_re", "role": "address0" }} , 
 	{ "name": "in_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_re", "role": "ce0" }} , 
 	{ "name": "in_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_re", "role": "q0" }} , 
 	{ "name": "in_re_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_re", "role": "address1" }} , 
 	{ "name": "in_re_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_re", "role": "ce1" }} , 
 	{ "name": "in_re_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_re", "role": "q1" }} , 
 	{ "name": "in_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_im", "role": "address0" }} , 
 	{ "name": "in_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_im", "role": "ce0" }} , 
 	{ "name": "in_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_im", "role": "q0" }} , 
 	{ "name": "in_im_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_im", "role": "address1" }} , 
 	{ "name": "in_im_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_im", "role": "ce1" }} , 
 	{ "name": "in_im_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_im", "role": "q1" }} , 
 	{ "name": "exptab_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "exptab_re", "role": "address0" }} , 
 	{ "name": "exptab_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exptab_re", "role": "ce0" }} , 
 	{ "name": "exptab_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "exptab_re", "role": "q0" }} , 
 	{ "name": "exptab_re_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "exptab_re", "role": "address1" }} , 
 	{ "name": "exptab_re_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exptab_re", "role": "ce1" }} , 
 	{ "name": "exptab_re_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "exptab_re", "role": "q1" }} , 
 	{ "name": "exptab_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "exptab_im", "role": "address0" }} , 
 	{ "name": "exptab_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exptab_im", "role": "ce0" }} , 
 	{ "name": "exptab_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "exptab_im", "role": "q0" }} , 
 	{ "name": "exptab_im_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "exptab_im", "role": "address1" }} , 
 	{ "name": "exptab_im_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exptab_im", "role": "ce1" }} , 
 	{ "name": "exptab_im_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "exptab_im", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "fft5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exptab_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exptab_im", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	fft5 {
		out_re {Type O LastRead -1 FirstWrite 3}
		out_im {Type O LastRead -1 FirstWrite 3}
		in_re {Type I LastRead 2 FirstWrite -1}
		in_im {Type I LastRead 2 FirstWrite -1}
		exptab_re {Type I LastRead 2 FirstWrite -1}
		exptab_im {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out_re { ap_memory {  { out_re_address0 mem_address 1 7 }  { out_re_ce0 mem_ce 1 1 }  { out_re_we0 mem_we 1 1 }  { out_re_d0 mem_din 1 32 }  { out_re_address1 MemPortADDR2 1 7 }  { out_re_ce1 MemPortCE2 1 1 }  { out_re_we1 MemPortWE2 1 1 }  { out_re_d1 MemPortDIN2 1 32 } } }
	out_im { ap_memory {  { out_im_address0 mem_address 1 7 }  { out_im_ce0 mem_ce 1 1 }  { out_im_we0 mem_we 1 1 }  { out_im_d0 mem_din 1 32 }  { out_im_address1 MemPortADDR2 1 7 }  { out_im_ce1 MemPortCE2 1 1 }  { out_im_we1 MemPortWE2 1 1 }  { out_im_d1 MemPortDIN2 1 32 } } }
	in_re { ap_memory {  { in_re_address0 mem_address 1 7 }  { in_re_ce0 mem_ce 1 1 }  { in_re_q0 mem_dout 0 32 }  { in_re_address1 MemPortADDR2 1 7 }  { in_re_ce1 MemPortCE2 1 1 }  { in_re_q1 MemPortDOUT2 0 32 } } }
	in_im { ap_memory {  { in_im_address0 mem_address 1 7 }  { in_im_ce0 mem_ce 1 1 }  { in_im_q0 mem_dout 0 32 }  { in_im_address1 MemPortADDR2 1 7 }  { in_im_ce1 MemPortCE2 1 1 }  { in_im_q1 MemPortDOUT2 0 32 } } }
	exptab_re { ap_memory {  { exptab_re_address0 mem_address 1 1 }  { exptab_re_ce0 mem_ce 1 1 }  { exptab_re_q0 mem_dout 0 32 }  { exptab_re_address1 MemPortADDR2 1 1 }  { exptab_re_ce1 MemPortCE2 1 1 }  { exptab_re_q1 MemPortDOUT2 0 32 } } }
	exptab_im { ap_memory {  { exptab_im_address0 mem_address 1 1 }  { exptab_im_ce0 mem_ce 1 1 }  { exptab_im_q0 mem_dout 0 32 }  { exptab_im_address1 MemPortADDR2 1 1 }  { exptab_im_ce1 MemPortCE2 1 1 }  { exptab_im_q1 MemPortDOUT2 0 32 } } }
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
