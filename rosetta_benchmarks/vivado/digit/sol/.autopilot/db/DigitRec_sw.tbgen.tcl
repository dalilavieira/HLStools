set moduleName DigitRec_sw
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
set C_modelName {DigitRec_sw}
set C_modelType { void 0 }
set C_modelArgList {
	{ training_set int 64 regular {array 72000 { 1 3 } 1 1 }  }
	{ test_set int 64 regular {array 8000 { 1 3 } 1 1 }  }
	{ results int 8 regular {array 2000 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "training_set", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "training_set","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 71999,"step" : 1}]}]}]} , 
 	{ "Name" : "test_set", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "test_set","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 7999,"step" : 1}]}]}]} , 
 	{ "Name" : "results", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "results","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ training_set_address0 sc_out sc_lv 17 signal 0 } 
	{ training_set_ce0 sc_out sc_logic 1 signal 0 } 
	{ training_set_q0 sc_in sc_lv 64 signal 0 } 
	{ test_set_address0 sc_out sc_lv 13 signal 1 } 
	{ test_set_ce0 sc_out sc_logic 1 signal 1 } 
	{ test_set_q0 sc_in sc_lv 64 signal 1 } 
	{ results_address0 sc_out sc_lv 11 signal 2 } 
	{ results_ce0 sc_out sc_logic 1 signal 2 } 
	{ results_we0 sc_out sc_logic 1 signal 2 } 
	{ results_d0 sc_out sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "training_set_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "training_set", "role": "address0" }} , 
 	{ "name": "training_set_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "training_set", "role": "ce0" }} , 
 	{ "name": "training_set_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "training_set", "role": "q0" }} , 
 	{ "name": "test_set_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "test_set", "role": "address0" }} , 
 	{ "name": "test_set_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "test_set", "role": "ce0" }} , 
 	{ "name": "test_set_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "test_set", "role": "q0" }} , 
 	{ "name": "results_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "results", "role": "address0" }} , 
 	{ "name": "results_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "ce0" }} , 
 	{ "name": "results_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "we0" }} , 
 	{ "name": "results_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "results", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "DigitRec_sw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "864088001", "EstimateLatencyMax" : "864088001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_knn_fu_454"}],
		"Port" : [
			{"Name" : "training_set", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_update_knn_fu_454", "Port" : "train_inst"}]},
			{"Name" : "test_set", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_update_knn_fu_454", "Port" : "test_inst"}]},
			{"Name" : "results", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.votes_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_454", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_454.DigitRec_sw_mux_32_32_1_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_454.DigitRec_sw_mux_42_1_1_1_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_454.DigitRec_sw_mux_42_1_1_1_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_454.DigitRec_sw_mux_42_1_1_1_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_32_1_1_U23", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_32_1_1_U24", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_32_1_1_U25", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_32_1_1_U26", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_32_1_1_U27", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_42_32_1_1_U28", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DigitRec_sw_mux_32_32_1_1_U29", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DigitRec_sw {
		training_set {Type I LastRead 1 FirstWrite -1}
		test_set {Type I LastRead 1 FirstWrite -1}
		results {Type O LastRead -1 FirstWrite 6}}
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
	{"Name" : "Latency", "Min" : "864088001", "Max" : "864088001"}
	, {"Name" : "Interval", "Min" : "864088002", "Max" : "864088002"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	training_set { ap_memory {  { training_set_address0 mem_address 1 17 }  { training_set_ce0 mem_ce 1 1 }  { training_set_q0 mem_dout 0 64 } } }
	test_set { ap_memory {  { test_set_address0 mem_address 1 13 }  { test_set_ce0 mem_ce 1 1 }  { test_set_q0 mem_dout 0 64 } } }
	results { ap_memory {  { results_address0 mem_address 1 11 }  { results_ce0 mem_ce 1 1 }  { results_we0 mem_we 1 1 }  { results_d0 mem_din 1 8 } } }
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
