set moduleName update_knn
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
set C_modelName {update_knn}
set C_modelType { int 192 }
set C_modelArgList {
	{ train_inst int 64 regular {array 72000 { 1 3 } 1 1 }  }
	{ train_inst_offset int 17 regular  }
	{ test_inst int 64 regular {array 8000 { 1 3 } 1 1 }  }
	{ test_inst_offset int 13 regular  }
	{ dists_0_read_5 int 32 regular  }
	{ dists_0_read int 32 regular  }
	{ dists_1_read_5 int 32 regular  }
	{ dists_1_read int 32 regular  }
	{ dists_2_read_5 int 32 regular  }
	{ dists_2_read int 32 regular  }
	{ labels_0_read int 32 regular  }
	{ labels_1_read int 32 regular  }
	{ labels_2_read int 32 regular  }
	{ label_r int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "train_inst", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "train_inst_offset", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "test_inst", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "test_inst_offset", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "dists_0_read_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dists_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dists_1_read_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dists_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dists_2_read_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dists_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "labels_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "labels_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "labels_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "label_r", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 192} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ train_inst_address0 sc_out sc_lv 17 signal 0 } 
	{ train_inst_ce0 sc_out sc_logic 1 signal 0 } 
	{ train_inst_q0 sc_in sc_lv 64 signal 0 } 
	{ train_inst_offset sc_in sc_lv 17 signal 1 } 
	{ test_inst_address0 sc_out sc_lv 13 signal 2 } 
	{ test_inst_ce0 sc_out sc_logic 1 signal 2 } 
	{ test_inst_q0 sc_in sc_lv 64 signal 2 } 
	{ test_inst_offset sc_in sc_lv 13 signal 3 } 
	{ dists_0_read_5 sc_in sc_lv 32 signal 4 } 
	{ dists_0_read sc_in sc_lv 32 signal 5 } 
	{ dists_1_read_5 sc_in sc_lv 32 signal 6 } 
	{ dists_1_read sc_in sc_lv 32 signal 7 } 
	{ dists_2_read_5 sc_in sc_lv 32 signal 8 } 
	{ dists_2_read sc_in sc_lv 32 signal 9 } 
	{ labels_0_read sc_in sc_lv 32 signal 10 } 
	{ labels_1_read sc_in sc_lv 32 signal 11 } 
	{ labels_2_read sc_in sc_lv 32 signal 12 } 
	{ label_r sc_in sc_lv 4 signal 13 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "train_inst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "train_inst", "role": "address0" }} , 
 	{ "name": "train_inst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "train_inst", "role": "ce0" }} , 
 	{ "name": "train_inst_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "train_inst", "role": "q0" }} , 
 	{ "name": "train_inst_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "train_inst_offset", "role": "default" }} , 
 	{ "name": "test_inst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "test_inst", "role": "address0" }} , 
 	{ "name": "test_inst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "test_inst", "role": "ce0" }} , 
 	{ "name": "test_inst_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "test_inst", "role": "q0" }} , 
 	{ "name": "test_inst_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "test_inst_offset", "role": "default" }} , 
 	{ "name": "dists_0_read_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dists_0_read_5", "role": "default" }} , 
 	{ "name": "dists_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dists_0_read", "role": "default" }} , 
 	{ "name": "dists_1_read_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dists_1_read_5", "role": "default" }} , 
 	{ "name": "dists_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dists_1_read", "role": "default" }} , 
 	{ "name": "dists_2_read_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dists_2_read_5", "role": "default" }} , 
 	{ "name": "dists_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dists_2_read", "role": "default" }} , 
 	{ "name": "labels_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "labels_0_read", "role": "default" }} , 
 	{ "name": "labels_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "labels_1_read", "role": "default" }} , 
 	{ "name": "labels_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "labels_2_read", "role": "default" }} , 
 	{ "name": "label_r", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "label_r", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "update_knn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "train_inst", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "train_inst_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "test_inst", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "test_inst_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "dists_0_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "dists_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "dists_1_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "dists_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "dists_2_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "dists_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "labels_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "labels_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "labels_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "label_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_32_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_1_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_1_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_1_1_1_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	update_knn {
		train_inst {Type I LastRead 1 FirstWrite -1}
		train_inst_offset {Type I LastRead 0 FirstWrite -1}
		test_inst {Type I LastRead 1 FirstWrite -1}
		test_inst_offset {Type I LastRead 0 FirstWrite -1}
		dists_0_read_5 {Type I LastRead 0 FirstWrite -1}
		dists_0_read {Type I LastRead 0 FirstWrite -1}
		dists_1_read_5 {Type I LastRead 0 FirstWrite -1}
		dists_1_read {Type I LastRead 0 FirstWrite -1}
		dists_2_read_5 {Type I LastRead 0 FirstWrite -1}
		dists_2_read {Type I LastRead 0 FirstWrite -1}
		labels_0_read {Type I LastRead 0 FirstWrite -1}
		labels_1_read {Type I LastRead 0 FirstWrite -1}
		labels_2_read {Type I LastRead 0 FirstWrite -1}
		label_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	train_inst { ap_memory {  { train_inst_address0 mem_address 1 17 }  { train_inst_ce0 mem_ce 1 1 }  { train_inst_q0 mem_dout 0 64 } } }
	train_inst_offset { ap_none {  { train_inst_offset in_data 0 17 } } }
	test_inst { ap_memory {  { test_inst_address0 mem_address 1 13 }  { test_inst_ce0 mem_ce 1 1 }  { test_inst_q0 mem_dout 0 64 } } }
	test_inst_offset { ap_none {  { test_inst_offset in_data 0 13 } } }
	dists_0_read_5 { ap_none {  { dists_0_read_5 in_data 0 32 } } }
	dists_0_read { ap_none {  { dists_0_read in_data 0 32 } } }
	dists_1_read_5 { ap_none {  { dists_1_read_5 in_data 0 32 } } }
	dists_1_read { ap_none {  { dists_1_read in_data 0 32 } } }
	dists_2_read_5 { ap_none {  { dists_2_read_5 in_data 0 32 } } }
	dists_2_read { ap_none {  { dists_2_read in_data 0 32 } } }
	labels_0_read { ap_none {  { labels_0_read in_data 0 32 } } }
	labels_1_read { ap_none {  { labels_1_read in_data 0 32 } } }
	labels_2_read { ap_none {  { labels_2_read in_data 0 32 } } }
	label_r { ap_none {  { label_r in_data 0 4 } } }
}
