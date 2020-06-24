set moduleName cascadeClassifier
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
set C_modelName {cascadeClassifier}
set C_modelType { int 6 }
set C_modelArgList {
	{ SUM1_data int 32 regular {array 76800 { 1 1 } 1 1 }  }
	{ SQSUM1_data int 32 regular {array 76800 { 1 1 } 1 1 }  }
	{ pt_x int 31 regular  }
	{ pt_y int 31 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SUM1_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SQSUM1_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pt_x", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "pt_y", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 6} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SUM1_data_address0 sc_out sc_lv 17 signal 0 } 
	{ SUM1_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ SUM1_data_q0 sc_in sc_lv 32 signal 0 } 
	{ SUM1_data_address1 sc_out sc_lv 17 signal 0 } 
	{ SUM1_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ SUM1_data_q1 sc_in sc_lv 32 signal 0 } 
	{ SQSUM1_data_address0 sc_out sc_lv 17 signal 1 } 
	{ SQSUM1_data_ce0 sc_out sc_logic 1 signal 1 } 
	{ SQSUM1_data_q0 sc_in sc_lv 32 signal 1 } 
	{ SQSUM1_data_address1 sc_out sc_lv 17 signal 1 } 
	{ SQSUM1_data_ce1 sc_out sc_logic 1 signal 1 } 
	{ SQSUM1_data_q1 sc_in sc_lv 32 signal 1 } 
	{ pt_x sc_in sc_lv 31 signal 2 } 
	{ pt_y sc_in sc_lv 31 signal 3 } 
	{ ap_return sc_out sc_lv 6 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SUM1_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "SUM1_data", "role": "address0" }} , 
 	{ "name": "SUM1_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SUM1_data", "role": "ce0" }} , 
 	{ "name": "SUM1_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SUM1_data", "role": "q0" }} , 
 	{ "name": "SUM1_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "SUM1_data", "role": "address1" }} , 
 	{ "name": "SUM1_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SUM1_data", "role": "ce1" }} , 
 	{ "name": "SUM1_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SUM1_data", "role": "q1" }} , 
 	{ "name": "SQSUM1_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "SQSUM1_data", "role": "address0" }} , 
 	{ "name": "SQSUM1_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SQSUM1_data", "role": "ce0" }} , 
 	{ "name": "SQSUM1_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SQSUM1_data", "role": "q0" }} , 
 	{ "name": "SQSUM1_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "SQSUM1_data", "role": "address1" }} , 
 	{ "name": "SQSUM1_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SQSUM1_data", "role": "ce1" }} , 
 	{ "name": "SQSUM1_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SQSUM1_data", "role": "q1" }} , 
 	{ "name": "pt_x", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "pt_x", "role": "default" }} , 
 	{ "name": "pt_y", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "pt_y", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "cascadeClassifier",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "63712",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "SUM1_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SQSUM1_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "pt_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "stages_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rectangles_array11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coord_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "coord_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "coord_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tree_thresh_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_array0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_array1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_array2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alpha1_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alpha2_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "stages_thresh_array", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stages_array_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array5_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array9_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rectangles_array11_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tree_thresh_array_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_array0_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_array1_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_array2_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alpha1_array_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.alpha2_array_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stages_thresh_array_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_dmul_64ns_64ns_64_5_max_dsp_1_U9", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_dcmp_64ns_64ns_1_2_1_U10", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_sitodp_32s_64_4_1_U11", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cascadeClassifier {
		SUM1_data {Type I LastRead 16 FirstWrite -1}
		SQSUM1_data {Type I LastRead 2 FirstWrite -1}
		pt_x {Type I LastRead 0 FirstWrite -1}
		pt_y {Type I LastRead 0 FirstWrite -1}
		stages_array {Type I LastRead -1 FirstWrite -1}
		rectangles_array0 {Type I LastRead -1 FirstWrite -1}
		rectangles_array2 {Type I LastRead -1 FirstWrite -1}
		rectangles_array1 {Type I LastRead -1 FirstWrite -1}
		rectangles_array3 {Type I LastRead -1 FirstWrite -1}
		rectangles_array4 {Type I LastRead -1 FirstWrite -1}
		rectangles_array6 {Type I LastRead -1 FirstWrite -1}
		rectangles_array5 {Type I LastRead -1 FirstWrite -1}
		rectangles_array7 {Type I LastRead -1 FirstWrite -1}
		rectangles_array8 {Type I LastRead -1 FirstWrite -1}
		rectangles_array10 {Type I LastRead -1 FirstWrite -1}
		rectangles_array9 {Type I LastRead -1 FirstWrite -1}
		rectangles_array11 {Type I LastRead -1 FirstWrite -1}
		coord_8 {Type IO LastRead -1 FirstWrite -1}
		coord_9 {Type IO LastRead -1 FirstWrite -1}
		coord_10 {Type IO LastRead -1 FirstWrite -1}
		tree_thresh_array {Type I LastRead -1 FirstWrite -1}
		weights_array0 {Type I LastRead -1 FirstWrite -1}
		weights_array1 {Type I LastRead -1 FirstWrite -1}
		weights_array2 {Type I LastRead -1 FirstWrite -1}
		alpha1_array {Type I LastRead -1 FirstWrite -1}
		alpha2_array {Type I LastRead -1 FirstWrite -1}
		stages_thresh_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "63712"}
	, {"Name" : "Interval", "Min" : "120", "Max" : "63712"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	SUM1_data { ap_memory {  { SUM1_data_address0 mem_address 1 17 }  { SUM1_data_ce0 mem_ce 1 1 }  { SUM1_data_q0 mem_dout 0 32 }  { SUM1_data_address1 MemPortADDR2 1 17 }  { SUM1_data_ce1 MemPortCE2 1 1 }  { SUM1_data_q1 MemPortDOUT2 0 32 } } }
	SQSUM1_data { ap_memory {  { SQSUM1_data_address0 mem_address 1 17 }  { SQSUM1_data_ce0 mem_ce 1 1 }  { SQSUM1_data_q0 mem_dout 0 32 }  { SQSUM1_data_address1 MemPortADDR2 1 17 }  { SQSUM1_data_ce1 MemPortCE2 1 1 }  { SQSUM1_data_q1 MemPortDOUT2 0 32 } } }
	pt_x { ap_none {  { pt_x in_data 0 31 } } }
	pt_y { ap_none {  { pt_y in_data 0 31 } } }
}
