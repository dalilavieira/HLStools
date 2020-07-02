set moduleName p_ccv_sparse_matrix_index_for_hash
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
set C_modelName {_ccv_sparse_matrix_index_for_hash}
set C_modelType { int 32 }
set C_modelArgList {
	{ hash int 32 regular  }
	{ prime_index int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hash", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hash","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "prime_index", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "prime_index","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "uint32_t","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hash sc_in sc_lv 32 signal 0 } 
	{ prime_index sc_in sc_lv 32 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hash", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash", "role": "default" }} , 
 	{ "name": "prime_index", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prime_index", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86"],
		"CDFG" : "p_ccv_sparse_matrix_index_for_hash",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hash", "Type" : "None", "Direction" : "I"},
			{"Name" : "prime_index", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_32ns_32_36_seq_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_32ns_32_36_seq_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_32ns_32_36_seq_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_31ns_32_36_seq_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_31ns_32_36_seq_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_31ns_32_36_seq_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_30ns_32_36_seq_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_30ns_32_36_seq_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_30ns_32_36_seq_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_29ns_32_36_seq_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_29ns_32_36_seq_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_29ns_32_36_seq_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_28ns_32_36_seq_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_28ns_32_36_seq_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_28ns_32_36_seq_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_27ns_32_36_seq_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_27ns_32_36_seq_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_27ns_32_36_seq_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_26ns_32_36_seq_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_26ns_32_36_seq_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_26ns_32_36_seq_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_25ns_32_36_seq_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_25ns_32_36_seq_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_25ns_32_36_seq_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_24ns_32_36_seq_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_24ns_32_36_seq_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_24ns_32_36_seq_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_23ns_32_36_seq_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_23ns_32_36_seq_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_23ns_32_36_seq_1_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_22ns_32_36_seq_1_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_22ns_32_36_seq_1_U32", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_22ns_32_36_seq_1_U33", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_21ns_32_36_seq_1_U34", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_21ns_32_36_seq_1_U35", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_21ns_32_36_seq_1_U36", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_20ns_32_36_seq_1_U37", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_20ns_32_36_seq_1_U38", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_20ns_32_36_seq_1_U39", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_19ns_32_36_seq_1_U40", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_19ns_32_36_seq_1_U41", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_19ns_32_36_seq_1_U42", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_18ns_32_36_seq_1_U43", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_18ns_32_36_seq_1_U44", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_18ns_32_36_seq_1_U45", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_17ns_32_36_seq_1_U46", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_17ns_32_36_seq_1_U47", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_17ns_32_36_seq_1_U48", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_16ns_32_36_seq_1_U49", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_16ns_32_36_seq_1_U50", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_16ns_32_36_seq_1_U51", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_15ns_32_36_seq_1_U52", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_15ns_32_36_seq_1_U53", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_15ns_32_36_seq_1_U54", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_14ns_32_36_seq_1_U55", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_14ns_32_36_seq_1_U56", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_14ns_32_36_seq_1_U57", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_13ns_32_36_seq_1_U58", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_13ns_32_36_seq_1_U59", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_13ns_32_36_seq_1_U60", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_12ns_32_36_seq_1_U61", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_12ns_32_36_seq_1_U62", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_12ns_32_36_seq_1_U63", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_11ns_32_36_seq_1_U64", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_11ns_32_36_seq_1_U65", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_11ns_32_36_seq_1_U66", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_10ns_32_36_seq_1_U67", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_10ns_32_36_seq_1_U68", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_10ns_32_36_seq_1_U69", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_9ns_32_36_seq_1_U70", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_9ns_32_36_seq_1_U71", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_9ns_32_36_seq_1_U72", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_8ns_32_36_seq_1_U73", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_8ns_32_36_seq_1_U74", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_8ns_32_36_seq_1_U75", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_7ns_32_36_seq_1_U76", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_7ns_32_36_seq_1_U77", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_7ns_32_36_seq_1_U78", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_6ns_32_36_seq_1_U79", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_6ns_32_36_seq_1_U80", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_6ns_32_36_seq_1_U81", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_5ns_32_36_seq_1_U82", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_5ns_32_36_seq_1_U83", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_4ns_32_36_seq_1_U84", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_4ns_32_36_seq_1_U85", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ccv_sparse_matrix_index_for_hash_urem_32ns_3ns_32_36_seq_1_U86", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_ccv_sparse_matrix_index_for_hash {
		hash {Type I LastRead 0 FirstWrite -1}
		prime_index {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hash { ap_none {  { hash in_data 0 32 } } }
	prime_index { ap_none {  { prime_index in_data 0 32 } } }
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
