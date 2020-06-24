set moduleName handle_small_bpp
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
set C_modelName {handle_small_bpp}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_bits_per_pixel int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ s_color_type int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ s_height int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ s_width int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ s_image_linesize int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ p_data int 32 regular {array 160 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_bits_per_pixel", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s.bits_per_pixel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "s_color_type", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s.color_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "s_height", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s.height","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "s_width", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s.width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "s_image_linesize", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "s.image_linesize","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "p_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "p.data","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_bits_per_pixel_address0 sc_out sc_lv 4 signal 0 } 
	{ s_bits_per_pixel_ce0 sc_out sc_logic 1 signal 0 } 
	{ s_bits_per_pixel_q0 sc_in sc_lv 32 signal 0 } 
	{ s_color_type_address0 sc_out sc_lv 4 signal 1 } 
	{ s_color_type_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_color_type_q0 sc_in sc_lv 32 signal 1 } 
	{ s_height_address0 sc_out sc_lv 4 signal 2 } 
	{ s_height_ce0 sc_out sc_logic 1 signal 2 } 
	{ s_height_q0 sc_in sc_lv 32 signal 2 } 
	{ s_width_address0 sc_out sc_lv 4 signal 3 } 
	{ s_width_ce0 sc_out sc_logic 1 signal 3 } 
	{ s_width_q0 sc_in sc_lv 32 signal 3 } 
	{ s_image_linesize_address0 sc_out sc_lv 4 signal 4 } 
	{ s_image_linesize_ce0 sc_out sc_logic 1 signal 4 } 
	{ s_image_linesize_q0 sc_in sc_lv 32 signal 4 } 
	{ p_data_address0 sc_out sc_lv 8 signal 5 } 
	{ p_data_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_data_we0 sc_out sc_logic 1 signal 5 } 
	{ p_data_d0 sc_out sc_lv 32 signal 5 } 
	{ p_data_q0 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_bits_per_pixel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_bits_per_pixel", "role": "address0" }} , 
 	{ "name": "s_bits_per_pixel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_bits_per_pixel", "role": "ce0" }} , 
 	{ "name": "s_bits_per_pixel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_bits_per_pixel", "role": "q0" }} , 
 	{ "name": "s_color_type_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_color_type", "role": "address0" }} , 
 	{ "name": "s_color_type_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_color_type", "role": "ce0" }} , 
 	{ "name": "s_color_type_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_color_type", "role": "q0" }} , 
 	{ "name": "s_height_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_height", "role": "address0" }} , 
 	{ "name": "s_height_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_height", "role": "ce0" }} , 
 	{ "name": "s_height_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_height", "role": "q0" }} , 
 	{ "name": "s_width_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_width", "role": "address0" }} , 
 	{ "name": "s_width_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_width", "role": "ce0" }} , 
 	{ "name": "s_width_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_width", "role": "q0" }} , 
 	{ "name": "s_image_linesize_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_image_linesize", "role": "address0" }} , 
 	{ "name": "s_image_linesize_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_image_linesize", "role": "ce0" }} , 
 	{ "name": "s_image_linesize_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_image_linesize", "role": "q0" }} , 
 	{ "name": "p_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_data", "role": "address0" }} , 
 	{ "name": "p_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_data", "role": "ce0" }} , 
 	{ "name": "p_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_data", "role": "we0" }} , 
 	{ "name": "p_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_data", "role": "d0" }} , 
 	{ "name": "p_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_data", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "handle_small_bpp",
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
			{"Name" : "s_bits_per_pixel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_color_type", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_height", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_width", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_image_linesize", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_data", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.handle_small_bpp_mul_mul_8ns_26s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.handle_small_bpp_mul_mul_8ns_26s_32_1_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	handle_small_bpp {
		s_bits_per_pixel {Type I LastRead 0 FirstWrite -1}
		s_color_type {Type I LastRead 5 FirstWrite -1}
		s_height {Type I LastRead 4 FirstWrite -1}
		s_width {Type I LastRead 6 FirstWrite -1}
		s_image_linesize {Type I LastRead 13 FirstWrite -1}
		p_data {Type IO LastRead 21 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_bits_per_pixel { ap_memory {  { s_bits_per_pixel_address0 mem_address 1 4 }  { s_bits_per_pixel_ce0 mem_ce 1 1 }  { s_bits_per_pixel_q0 mem_dout 0 32 } } }
	s_color_type { ap_memory {  { s_color_type_address0 mem_address 1 4 }  { s_color_type_ce0 mem_ce 1 1 }  { s_color_type_q0 mem_dout 0 32 } } }
	s_height { ap_memory {  { s_height_address0 mem_address 1 4 }  { s_height_ce0 mem_ce 1 1 }  { s_height_q0 mem_dout 0 32 } } }
	s_width { ap_memory {  { s_width_address0 mem_address 1 4 }  { s_width_ce0 mem_ce 1 1 }  { s_width_q0 mem_dout 0 32 } } }
	s_image_linesize { ap_memory {  { s_image_linesize_address0 mem_address 1 4 }  { s_image_linesize_ce0 mem_ce 1 1 }  { s_image_linesize_q0 mem_dout 0 32 } } }
	p_data { ap_memory {  { p_data_address0 mem_address 1 8 }  { p_data_ce0 mem_ce 1 1 }  { p_data_we0 mem_we 1 1 }  { p_data_d0 mem_din 1 32 }  { p_data_q0 mem_dout 0 32 } } }
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
