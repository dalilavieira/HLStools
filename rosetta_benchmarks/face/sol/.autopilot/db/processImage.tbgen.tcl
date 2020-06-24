set moduleName processImage
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
set C_modelName {processImage}
set C_modelType { int 32 }
set C_modelArgList {
	{ factor float 32 regular  }
	{ sum_row int 32 regular  }
	{ sum_col int 32 regular  }
	{ AllCandidates_x int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ AllCandidates_y int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ AllCandidates_w int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ AllCandidates_h int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ AllCandidates_size_r int 32 regular  }
	{ IMG1_data int 8 regular {array 76800 { 1 3 } 1 1 }  }
	{ winSize_width int 32 regular  }
	{ winSize_height int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "factor", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_row", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_col", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AllCandidates_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AllCandidates_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AllCandidates_w", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AllCandidates_h", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AllCandidates_size_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "IMG1_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "winSize_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "winSize_height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ factor sc_in sc_lv 32 signal 0 } 
	{ sum_row sc_in sc_lv 32 signal 1 } 
	{ sum_col sc_in sc_lv 32 signal 2 } 
	{ AllCandidates_x_address0 sc_out sc_lv 7 signal 3 } 
	{ AllCandidates_x_ce0 sc_out sc_logic 1 signal 3 } 
	{ AllCandidates_x_we0 sc_out sc_logic 1 signal 3 } 
	{ AllCandidates_x_d0 sc_out sc_lv 32 signal 3 } 
	{ AllCandidates_y_address0 sc_out sc_lv 7 signal 4 } 
	{ AllCandidates_y_ce0 sc_out sc_logic 1 signal 4 } 
	{ AllCandidates_y_we0 sc_out sc_logic 1 signal 4 } 
	{ AllCandidates_y_d0 sc_out sc_lv 32 signal 4 } 
	{ AllCandidates_w_address0 sc_out sc_lv 7 signal 5 } 
	{ AllCandidates_w_ce0 sc_out sc_logic 1 signal 5 } 
	{ AllCandidates_w_we0 sc_out sc_logic 1 signal 5 } 
	{ AllCandidates_w_d0 sc_out sc_lv 32 signal 5 } 
	{ AllCandidates_h_address0 sc_out sc_lv 7 signal 6 } 
	{ AllCandidates_h_ce0 sc_out sc_logic 1 signal 6 } 
	{ AllCandidates_h_we0 sc_out sc_logic 1 signal 6 } 
	{ AllCandidates_h_d0 sc_out sc_lv 32 signal 6 } 
	{ AllCandidates_size_r sc_in sc_lv 32 signal 7 } 
	{ IMG1_data_address0 sc_out sc_lv 17 signal 8 } 
	{ IMG1_data_ce0 sc_out sc_logic 1 signal 8 } 
	{ IMG1_data_q0 sc_in sc_lv 8 signal 8 } 
	{ winSize_width sc_in sc_lv 32 signal 9 } 
	{ winSize_height sc_in sc_lv 32 signal 10 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "factor", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor", "role": "default" }} , 
 	{ "name": "sum_row", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_row", "role": "default" }} , 
 	{ "name": "sum_col", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_col", "role": "default" }} , 
 	{ "name": "AllCandidates_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AllCandidates_x", "role": "address0" }} , 
 	{ "name": "AllCandidates_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AllCandidates_x", "role": "ce0" }} , 
 	{ "name": "AllCandidates_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AllCandidates_x", "role": "we0" }} , 
 	{ "name": "AllCandidates_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AllCandidates_x", "role": "d0" }} , 
 	{ "name": "AllCandidates_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AllCandidates_y", "role": "address0" }} , 
 	{ "name": "AllCandidates_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AllCandidates_y", "role": "ce0" }} , 
 	{ "name": "AllCandidates_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AllCandidates_y", "role": "we0" }} , 
 	{ "name": "AllCandidates_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AllCandidates_y", "role": "d0" }} , 
 	{ "name": "AllCandidates_w_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AllCandidates_w", "role": "address0" }} , 
 	{ "name": "AllCandidates_w_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AllCandidates_w", "role": "ce0" }} , 
 	{ "name": "AllCandidates_w_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AllCandidates_w", "role": "we0" }} , 
 	{ "name": "AllCandidates_w_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AllCandidates_w", "role": "d0" }} , 
 	{ "name": "AllCandidates_h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AllCandidates_h", "role": "address0" }} , 
 	{ "name": "AllCandidates_h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AllCandidates_h", "role": "ce0" }} , 
 	{ "name": "AllCandidates_h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AllCandidates_h", "role": "we0" }} , 
 	{ "name": "AllCandidates_h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AllCandidates_h", "role": "d0" }} , 
 	{ "name": "AllCandidates_size_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AllCandidates_size_r", "role": "default" }} , 
 	{ "name": "IMG1_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "IMG1_data", "role": "address0" }} , 
 	{ "name": "IMG1_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMG1_data", "role": "ce0" }} , 
 	{ "name": "IMG1_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IMG1_data", "role": "q0" }} , 
 	{ "name": "winSize_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "winSize_width", "role": "default" }} , 
 	{ "name": "winSize_height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "winSize_height", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "processImage",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cascadeClassifier_fu_377"}],
		"Port" : [
			{"Name" : "factor", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_row", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_col", "Type" : "None", "Direction" : "I"},
			{"Name" : "AllCandidates_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AllCandidates_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AllCandidates_w", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AllCandidates_h", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AllCandidates_size_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "IMG1_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "winSize_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "winSize_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "stages_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "stages_array"}]},
			{"Name" : "rectangles_array0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array0"}]},
			{"Name" : "rectangles_array2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array2"}]},
			{"Name" : "rectangles_array1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array1"}]},
			{"Name" : "rectangles_array3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array3"}]},
			{"Name" : "rectangles_array4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array4"}]},
			{"Name" : "rectangles_array6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array6"}]},
			{"Name" : "rectangles_array5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array5"}]},
			{"Name" : "rectangles_array7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array7"}]},
			{"Name" : "rectangles_array8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array8"}]},
			{"Name" : "rectangles_array10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array10"}]},
			{"Name" : "rectangles_array9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array9"}]},
			{"Name" : "rectangles_array11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array11"}]},
			{"Name" : "coord_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "coord_8"}]},
			{"Name" : "coord_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "coord_9"}]},
			{"Name" : "coord_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "coord_10"}]},
			{"Name" : "tree_thresh_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "tree_thresh_array"}]},
			{"Name" : "weights_array0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "weights_array0"}]},
			{"Name" : "weights_array1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "weights_array1"}]},
			{"Name" : "weights_array2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "weights_array2"}]},
			{"Name" : "alpha1_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "alpha1_array"}]},
			{"Name" : "alpha2_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "alpha2_array"}]},
			{"Name" : "stages_thresh_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "stages_thresh_array"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SUM1_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SQSUM1_data_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.stages_array_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array0_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array2_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array1_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array3_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array4_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array6_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array5_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array7_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array8_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array10_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array9_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.rectangles_array11_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.tree_thresh_array_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.weights_array0_U", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.weights_array1_U", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.weights_array2_U", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.alpha1_array_U", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.alpha2_array_U", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.stages_thresh_array_U", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.face_detect_sw_dmul_64ns_64ns_64_5_max_dsp_1_U9", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.face_detect_sw_dcmp_64ns_64ns_1_2_1_U10", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cascadeClassifier_fu_377.face_detect_sw_sitodp_32s_64_4_1_U11", "Parent" : "3"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fmul_32ns_32ns_32_3_max_dsp_1_U39", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_sitofp_32ns_32_4_1_U40", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fpext_32ns_64_2_1_U41", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fcmp_32ns_32ns_1_2_1_U42", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_dadd_64ns_64ns_64_5_full_dsp_1_U43", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_mac_muladd_8ns_8ns_32ns_32_1_1_U44", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	processImage {
		factor {Type I LastRead 0 FirstWrite -1}
		sum_row {Type I LastRead 0 FirstWrite -1}
		sum_col {Type I LastRead 0 FirstWrite -1}
		AllCandidates_x {Type O LastRead -1 FirstWrite 32}
		AllCandidates_y {Type O LastRead -1 FirstWrite 18}
		AllCandidates_w {Type O LastRead -1 FirstWrite 18}
		AllCandidates_h {Type O LastRead -1 FirstWrite 18}
		AllCandidates_size_r {Type I LastRead 0 FirstWrite -1}
		IMG1_data {Type I LastRead 2 FirstWrite -1}
		winSize_width {Type I LastRead 0 FirstWrite -1}
		winSize_height {Type I LastRead 0 FirstWrite -1}
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
		stages_thresh_array {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	factor { ap_none {  { factor in_data 0 32 } } }
	sum_row { ap_none {  { sum_row in_data 0 32 } } }
	sum_col { ap_none {  { sum_col in_data 0 32 } } }
	AllCandidates_x { ap_memory {  { AllCandidates_x_address0 mem_address 1 7 }  { AllCandidates_x_ce0 mem_ce 1 1 }  { AllCandidates_x_we0 mem_we 1 1 }  { AllCandidates_x_d0 mem_din 1 32 } } }
	AllCandidates_y { ap_memory {  { AllCandidates_y_address0 mem_address 1 7 }  { AllCandidates_y_ce0 mem_ce 1 1 }  { AllCandidates_y_we0 mem_we 1 1 }  { AllCandidates_y_d0 mem_din 1 32 } } }
	AllCandidates_w { ap_memory {  { AllCandidates_w_address0 mem_address 1 7 }  { AllCandidates_w_ce0 mem_ce 1 1 }  { AllCandidates_w_we0 mem_we 1 1 }  { AllCandidates_w_d0 mem_din 1 32 } } }
	AllCandidates_h { ap_memory {  { AllCandidates_h_address0 mem_address 1 7 }  { AllCandidates_h_ce0 mem_ce 1 1 }  { AllCandidates_h_we0 mem_we 1 1 }  { AllCandidates_h_d0 mem_din 1 32 } } }
	AllCandidates_size_r { ap_none {  { AllCandidates_size_r in_data 0 32 } } }
	IMG1_data { ap_memory {  { IMG1_data_address0 mem_address 1 17 }  { IMG1_data_ce0 mem_ce 1 1 }  { IMG1_data_q0 mem_dout 0 8 } } }
	winSize_width { ap_none {  { winSize_width in_data 0 32 } } }
	winSize_height { ap_none {  { winSize_height in_data 0 32 } } }
}
