set moduleName imageScaler
set isTopModule 0
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
set C_modelName {imageScaler}
set C_modelType { void 0 }
set C_modelArgList {
	{ Data int 8 regular {array 76800 { 1 3 } 1 1 }  }
	{ dest_height int 32 regular  }
	{ dest_width int 32 regular  }
	{ IMG1_data int 8 regular {array 76800 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dest_height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dest_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "IMG1_data", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Data_address0 sc_out sc_lv 17 signal 0 } 
	{ Data_ce0 sc_out sc_logic 1 signal 0 } 
	{ Data_q0 sc_in sc_lv 8 signal 0 } 
	{ dest_height sc_in sc_lv 32 signal 1 } 
	{ dest_width sc_in sc_lv 32 signal 2 } 
	{ IMG1_data_address0 sc_out sc_lv 17 signal 3 } 
	{ IMG1_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ IMG1_data_we0 sc_out sc_logic 1 signal 3 } 
	{ IMG1_data_d0 sc_out sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "Data", "role": "address0" }} , 
 	{ "name": "Data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Data", "role": "ce0" }} , 
 	{ "name": "Data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Data", "role": "q0" }} , 
 	{ "name": "dest_height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_height", "role": "default" }} , 
 	{ "name": "dest_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_width", "role": "default" }} , 
 	{ "name": "IMG1_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "IMG1_data", "role": "address0" }} , 
 	{ "name": "IMG1_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMG1_data", "role": "ce0" }} , 
 	{ "name": "IMG1_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMG1_data", "role": "we0" }} , 
 	{ "name": "IMG1_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IMG1_data", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "imageScaler",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "154111", "EstimateLatencyMax" : "154111",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dest_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "dest_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "IMG1_data", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_sdiv_27ns_32ns_32_31_seq_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_sdiv_26ns_32ns_32_30_seq_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	imageScaler {
		Data {Type I LastRead 32 FirstWrite -1}
		dest_height {Type I LastRead 1 FirstWrite -1}
		dest_width {Type I LastRead 0 FirstWrite -1}
		IMG1_data {Type O LastRead -1 FirstWrite 33}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "154111", "Max" : "154111"}
	, {"Name" : "Interval", "Min" : "154111", "Max" : "154111"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Data { ap_memory {  { Data_address0 mem_address 1 17 }  { Data_ce0 mem_ce 1 1 }  { Data_q0 mem_dout 0 8 } } }
	dest_height { ap_none {  { dest_height in_data 0 32 } } }
	dest_width { ap_none {  { dest_width in_data 0 32 } } }
	IMG1_data { ap_memory {  { IMG1_data_address0 mem_address 1 17 }  { IMG1_data_ce0 mem_ce 1 1 }  { IMG1_data_we0 mem_we 1 1 }  { IMG1_data_d0 mem_din 1 8 } } }
}
