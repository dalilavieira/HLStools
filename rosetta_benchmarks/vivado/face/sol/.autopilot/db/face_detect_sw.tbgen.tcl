set moduleName face_detect_sw
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
set C_modelName {face_detect_sw}
set C_modelType { void 0 }
set C_modelArgList {
	{ Data int 8 regular {array 76800 { 1 3 } 1 1 }  }
	{ result_x int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ result_y int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ result_w int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ result_h int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ result_size int 32 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Data","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 239,"step" : 1},{"low" : 0,"up" : 319,"step" : 1}]}]}]} , 
 	{ "Name" : "result_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result_x","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "result_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result_y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "result_w", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "result_h", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result_h","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "result_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result_size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 28
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
	{ result_x_address0 sc_out sc_lv 7 signal 1 } 
	{ result_x_ce0 sc_out sc_logic 1 signal 1 } 
	{ result_x_we0 sc_out sc_logic 1 signal 1 } 
	{ result_x_d0 sc_out sc_lv 32 signal 1 } 
	{ result_y_address0 sc_out sc_lv 7 signal 2 } 
	{ result_y_ce0 sc_out sc_logic 1 signal 2 } 
	{ result_y_we0 sc_out sc_logic 1 signal 2 } 
	{ result_y_d0 sc_out sc_lv 32 signal 2 } 
	{ result_w_address0 sc_out sc_lv 7 signal 3 } 
	{ result_w_ce0 sc_out sc_logic 1 signal 3 } 
	{ result_w_we0 sc_out sc_logic 1 signal 3 } 
	{ result_w_d0 sc_out sc_lv 32 signal 3 } 
	{ result_h_address0 sc_out sc_lv 7 signal 4 } 
	{ result_h_ce0 sc_out sc_logic 1 signal 4 } 
	{ result_h_we0 sc_out sc_logic 1 signal 4 } 
	{ result_h_d0 sc_out sc_lv 32 signal 4 } 
	{ result_size_i sc_in sc_lv 32 signal 5 } 
	{ result_size_o sc_out sc_lv 32 signal 5 } 
	{ result_size_o_ap_vld sc_out sc_logic 1 outvld 5 } 
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
 	{ "name": "result_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "result_x", "role": "address0" }} , 
 	{ "name": "result_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_x", "role": "ce0" }} , 
 	{ "name": "result_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_x", "role": "we0" }} , 
 	{ "name": "result_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_x", "role": "d0" }} , 
 	{ "name": "result_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "result_y", "role": "address0" }} , 
 	{ "name": "result_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_y", "role": "ce0" }} , 
 	{ "name": "result_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_y", "role": "we0" }} , 
 	{ "name": "result_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_y", "role": "d0" }} , 
 	{ "name": "result_w_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "result_w", "role": "address0" }} , 
 	{ "name": "result_w_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_w", "role": "ce0" }} , 
 	{ "name": "result_w_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_w", "role": "we0" }} , 
 	{ "name": "result_w_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_w", "role": "d0" }} , 
 	{ "name": "result_h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "result_h", "role": "address0" }} , 
 	{ "name": "result_h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_h", "role": "ce0" }} , 
 	{ "name": "result_h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_h", "role": "we0" }} , 
 	{ "name": "result_h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_h", "role": "d0" }} , 
 	{ "name": "result_size_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_size", "role": "i" }} , 
 	{ "name": "result_size_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_size", "role": "o" }} , 
 	{ "name": "result_size_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_size", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "35", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "face_detect_sw",
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
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_processImage_fu_194"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_imageScaler_fu_262"}],
		"Port" : [
			{"Name" : "Data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_imageScaler_fu_262", "Port" : "Data"}]},
			{"Name" : "result_x", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "AllCandidates_x"}]},
			{"Name" : "result_y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "AllCandidates_y"}]},
			{"Name" : "result_w", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "AllCandidates_w"}]},
			{"Name" : "result_h", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "AllCandidates_h"}]},
			{"Name" : "result_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "stages_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "stages_array"}]},
			{"Name" : "rectangles_array0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array0"}]},
			{"Name" : "rectangles_array2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array2"}]},
			{"Name" : "rectangles_array1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array1"}]},
			{"Name" : "rectangles_array3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array3"}]},
			{"Name" : "rectangles_array4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array4"}]},
			{"Name" : "rectangles_array6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array6"}]},
			{"Name" : "rectangles_array5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array5"}]},
			{"Name" : "rectangles_array7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array7"}]},
			{"Name" : "rectangles_array8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array8"}]},
			{"Name" : "rectangles_array10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array10"}]},
			{"Name" : "rectangles_array9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array9"}]},
			{"Name" : "rectangles_array11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "rectangles_array11"}]},
			{"Name" : "coord_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "coord_8"}]},
			{"Name" : "coord_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "coord_9"}]},
			{"Name" : "coord_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "coord_10"}]},
			{"Name" : "tree_thresh_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "tree_thresh_array"}]},
			{"Name" : "weights_array0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "weights_array0"}]},
			{"Name" : "weights_array1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "weights_array1"}]},
			{"Name" : "weights_array2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "weights_array2"}]},
			{"Name" : "alpha1_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "alpha1_array"}]},
			{"Name" : "alpha2_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "alpha2_array"}]},
			{"Name" : "stages_thresh_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_processImage_fu_194", "Port" : "stages_thresh_array"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IMG1_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194", "Parent" : "0", "Child" : ["3", "4", "5", "29", "30", "31", "32", "33", "34"],
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
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "stages_array"}]},
			{"Name" : "rectangles_array0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array0"}]},
			{"Name" : "rectangles_array2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array2"}]},
			{"Name" : "rectangles_array1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array1"}]},
			{"Name" : "rectangles_array3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array3"}]},
			{"Name" : "rectangles_array4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array4"}]},
			{"Name" : "rectangles_array6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array6"}]},
			{"Name" : "rectangles_array5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array5"}]},
			{"Name" : "rectangles_array7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array7"}]},
			{"Name" : "rectangles_array8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array8"}]},
			{"Name" : "rectangles_array10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array10"}]},
			{"Name" : "rectangles_array9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array9"}]},
			{"Name" : "rectangles_array11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "rectangles_array11"}]},
			{"Name" : "coord_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "coord_8"}]},
			{"Name" : "coord_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "coord_9"}]},
			{"Name" : "coord_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "coord_10"}]},
			{"Name" : "tree_thresh_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "tree_thresh_array"}]},
			{"Name" : "weights_array0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "weights_array0"}]},
			{"Name" : "weights_array1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "weights_array1"}]},
			{"Name" : "weights_array2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "weights_array2"}]},
			{"Name" : "alpha1_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "alpha1_array"}]},
			{"Name" : "alpha2_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "alpha2_array"}]},
			{"Name" : "stages_thresh_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cascadeClassifier_fu_377", "Port" : "stages_thresh_array"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.SUM1_data_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.SQSUM1_data_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377", "Parent" : "2", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.stages_array_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array0_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array2_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array1_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array3_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array4_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array6_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array5_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array7_U", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array8_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array10_U", "Parent" : "5"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array9_U", "Parent" : "5"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.rectangles_array11_U", "Parent" : "5"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.tree_thresh_array_U", "Parent" : "5"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.weights_array0_U", "Parent" : "5"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.weights_array1_U", "Parent" : "5"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.weights_array2_U", "Parent" : "5"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.alpha1_array_U", "Parent" : "5"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.alpha2_array_U", "Parent" : "5"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.stages_thresh_array_U", "Parent" : "5"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.face_detect_sw_dmul_64ns_64ns_64_5_max_dsp_1_U9", "Parent" : "5"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.face_detect_sw_dcmp_64ns_64ns_1_2_1_U10", "Parent" : "5"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.grp_cascadeClassifier_fu_377.face_detect_sw_sitodp_32s_64_4_1_U11", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.face_detect_sw_fmul_32ns_32ns_32_3_max_dsp_1_U39", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.face_detect_sw_sitofp_32ns_32_4_1_U40", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.face_detect_sw_fpext_32ns_64_2_1_U41", "Parent" : "2"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.face_detect_sw_fcmp_32ns_32ns_1_2_1_U42", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.face_detect_sw_dadd_64ns_64ns_64_5_full_dsp_1_U43", "Parent" : "2"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_processImage_fu_194.face_detect_sw_mac_muladd_8ns_8ns_32ns_32_1_1_U44", "Parent" : "2"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_imageScaler_fu_262", "Parent" : "0", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imageScaler_fu_262.face_detect_sw_sdiv_27ns_32ns_32_31_seq_1_U1", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_imageScaler_fu_262.face_detect_sw_sdiv_26ns_32ns_32_30_seq_1_U2", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fmul_32ns_32ns_32_3_max_dsp_1_U63", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fdiv_32ns_32ns_32_9_1_U64", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fdiv_32ns_32ns_32_9_1_U65", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fpext_32ns_64_2_1_U66", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fcmp_32ns_32ns_1_2_1_U67", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_fcmp_32ns_32ns_1_2_1_U68", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.face_detect_sw_dadd_64ns_64ns_64_5_full_dsp_1_U69", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	face_detect_sw {
		Data {Type I LastRead 32 FirstWrite -1}
		result_x {Type O LastRead -1 FirstWrite 32}
		result_y {Type O LastRead -1 FirstWrite 18}
		result_w {Type O LastRead -1 FirstWrite 18}
		result_h {Type O LastRead -1 FirstWrite 18}
		result_size {Type IO LastRead 21 FirstWrite 0}
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
		stages_thresh_array {Type I LastRead -1 FirstWrite -1}}
	imageScaler {
		Data {Type I LastRead 32 FirstWrite -1}
		dest_height {Type I LastRead 1 FirstWrite -1}
		dest_width {Type I LastRead 0 FirstWrite -1}
		IMG1_data {Type O LastRead -1 FirstWrite 33}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Data { ap_memory {  { Data_address0 mem_address 1 17 }  { Data_ce0 mem_ce 1 1 }  { Data_q0 mem_dout 0 8 } } }
	result_x { ap_memory {  { result_x_address0 mem_address 1 7 }  { result_x_ce0 mem_ce 1 1 }  { result_x_we0 mem_we 1 1 }  { result_x_d0 mem_din 1 32 } } }
	result_y { ap_memory {  { result_y_address0 mem_address 1 7 }  { result_y_ce0 mem_ce 1 1 }  { result_y_we0 mem_we 1 1 }  { result_y_d0 mem_din 1 32 } } }
	result_w { ap_memory {  { result_w_address0 mem_address 1 7 }  { result_w_ce0 mem_ce 1 1 }  { result_w_we0 mem_we 1 1 }  { result_w_d0 mem_din 1 32 } } }
	result_h { ap_memory {  { result_h_address0 mem_address 1 7 }  { result_h_ce0 mem_ce 1 1 }  { result_h_we0 mem_we 1 1 }  { result_h_d0 mem_din 1 32 } } }
	result_size { ap_ovld {  { result_size_i in_data 0 32 }  { result_size_o out_data 1 32 }  { result_size_o_ap_vld out_vld 1 1 } } }
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
