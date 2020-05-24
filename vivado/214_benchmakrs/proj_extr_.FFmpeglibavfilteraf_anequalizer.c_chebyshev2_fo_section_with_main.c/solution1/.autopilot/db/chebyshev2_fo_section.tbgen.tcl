set moduleName chebyshev2_fo_section
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
set C_modelName {chebyshev2_fo_section}
set C_modelType { void 0 }
set C_modelArgList {
	{ S_b0 double 64 regular {pointer 1}  }
	{ S_b1 int 32 regular {pointer 1}  }
	{ S_b2 double 64 regular {pointer 1}  }
	{ S_b3 int 32 regular {pointer 1}  }
	{ S_b4 double 64 regular {pointer 1}  }
	{ S_a0 int 32 regular {pointer 1}  }
	{ S_a1 int 32 regular {pointer 1}  }
	{ S_a2 double 64 regular {pointer 1}  }
	{ S_a3 int 32 regular {pointer 1}  }
	{ S_a4 double 64 regular {pointer 1}  }
	{ a double 64 regular  }
	{ c double 64 regular  }
	{ tetta_b double 64 regular  }
	{ g double 64 regular  }
	{ si double 64 regular  }
	{ b double 64 regular  }
	{ D double 64 regular  }
	{ c0 double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "S_b0", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "S.b0","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_b1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S.b1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_b2", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "S.b2","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_b3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S.b3","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_b4", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "S.b4","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_a0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S.a0","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_a1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S.a1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_a2", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "S.a2","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_a3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S.a3","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "S_a4", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "S.a4","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "a","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "c", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "c","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tetta_b", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "tetta_b","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "g", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "g","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "si", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "si","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "b","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "D", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "D","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "c0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "c0","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ S_b0 sc_out sc_lv 64 signal 0 } 
	{ S_b0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ S_b1 sc_out sc_lv 32 signal 1 } 
	{ S_b1_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ S_b2 sc_out sc_lv 64 signal 2 } 
	{ S_b2_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ S_b3 sc_out sc_lv 32 signal 3 } 
	{ S_b3_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ S_b4 sc_out sc_lv 64 signal 4 } 
	{ S_b4_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ S_a0 sc_out sc_lv 32 signal 5 } 
	{ S_a0_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ S_a1 sc_out sc_lv 32 signal 6 } 
	{ S_a1_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ S_a2 sc_out sc_lv 64 signal 7 } 
	{ S_a2_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ S_a3 sc_out sc_lv 32 signal 8 } 
	{ S_a3_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ S_a4 sc_out sc_lv 64 signal 9 } 
	{ S_a4_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ a sc_in sc_lv 64 signal 10 } 
	{ c sc_in sc_lv 64 signal 11 } 
	{ tetta_b sc_in sc_lv 64 signal 12 } 
	{ g sc_in sc_lv 64 signal 13 } 
	{ si sc_in sc_lv 64 signal 14 } 
	{ b sc_in sc_lv 64 signal 15 } 
	{ D sc_in sc_lv 64 signal 16 } 
	{ c0 sc_in sc_lv 64 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "S_b0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S_b0", "role": "default" }} , 
 	{ "name": "S_b0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_b0", "role": "ap_vld" }} , 
 	{ "name": "S_b1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_b1", "role": "default" }} , 
 	{ "name": "S_b1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_b1", "role": "ap_vld" }} , 
 	{ "name": "S_b2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S_b2", "role": "default" }} , 
 	{ "name": "S_b2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_b2", "role": "ap_vld" }} , 
 	{ "name": "S_b3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_b3", "role": "default" }} , 
 	{ "name": "S_b3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_b3", "role": "ap_vld" }} , 
 	{ "name": "S_b4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S_b4", "role": "default" }} , 
 	{ "name": "S_b4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_b4", "role": "ap_vld" }} , 
 	{ "name": "S_a0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_a0", "role": "default" }} , 
 	{ "name": "S_a0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_a0", "role": "ap_vld" }} , 
 	{ "name": "S_a1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_a1", "role": "default" }} , 
 	{ "name": "S_a1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_a1", "role": "ap_vld" }} , 
 	{ "name": "S_a2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S_a2", "role": "default" }} , 
 	{ "name": "S_a2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_a2", "role": "ap_vld" }} , 
 	{ "name": "S_a3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_a3", "role": "default" }} , 
 	{ "name": "S_a3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_a3", "role": "ap_vld" }} , 
 	{ "name": "S_a4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S_a4", "role": "default" }} , 
 	{ "name": "S_a4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "S_a4", "role": "ap_vld" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "c", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "default" }} , 
 	{ "name": "tetta_b", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tetta_b", "role": "default" }} , 
 	{ "name": "g", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "g", "role": "default" }} , 
 	{ "name": "si", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "si", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "D", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "D", "role": "default" }} , 
 	{ "name": "c0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c0", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "chebyshev2_fo_section",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "70",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "S_b0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_b1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_b2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_b3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_b4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_a0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_a1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_a2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_a3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_a4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "tetta_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "si", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "D", "Type" : "None", "Direction" : "I"},
			{"Name" : "c0", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dadddsub_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dadddsub_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dadddsub_64ns_64ns_64_5_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dsub_64ns_64ns_64_5_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dadd_64ns_64ns_64_5_full_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dsub_64ns_64ns_64_5_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dsub_64ns_64ns_64_5_full_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dmul_64ns_64ns_64_5_max_dsp_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_ddiv_64ns_64ns_64_22_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_ddiv_64ns_64ns_64_22_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_ddiv_64ns_64ns_64_22_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_ddiv_64ns_64ns_64_22_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_ddiv_64ns_64ns_64_22_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dcmp_64ns_64ns_1_2_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.chebyshev2_fo_section_dcmp_64ns_64ns_1_2_1_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	chebyshev2_fo_section {
		S_b0 {Type O LastRead -1 FirstWrite 70}
		S_b1 {Type O LastRead -1 FirstWrite 66}
		S_b2 {Type O LastRead -1 FirstWrite 70}
		S_b3 {Type O LastRead -1 FirstWrite 66}
		S_b4 {Type O LastRead -1 FirstWrite 70}
		S_a0 {Type O LastRead -1 FirstWrite 70}
		S_a1 {Type O LastRead -1 FirstWrite 66}
		S_a2 {Type O LastRead -1 FirstWrite 65}
		S_a3 {Type O LastRead -1 FirstWrite 66}
		S_a4 {Type O LastRead -1 FirstWrite 70}
		a {Type I LastRead 14 FirstWrite -1}
		c {Type I LastRead 14 FirstWrite -1}
		tetta_b {Type I LastRead 5 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		si {Type I LastRead 14 FirstWrite -1}
		b {Type I LastRead 14 FirstWrite -1}
		D {Type I LastRead 14 FirstWrite -1}
		c0 {Type I LastRead 13 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "70", "Max" : "70"}
	, {"Name" : "Interval", "Min" : "71", "Max" : "71"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	S_b0 { ap_vld {  { S_b0 out_data 1 64 }  { S_b0_ap_vld out_vld 1 1 } } }
	S_b1 { ap_vld {  { S_b1 out_data 1 32 }  { S_b1_ap_vld out_vld 1 1 } } }
	S_b2 { ap_vld {  { S_b2 out_data 1 64 }  { S_b2_ap_vld out_vld 1 1 } } }
	S_b3 { ap_vld {  { S_b3 out_data 1 32 }  { S_b3_ap_vld out_vld 1 1 } } }
	S_b4 { ap_vld {  { S_b4 out_data 1 64 }  { S_b4_ap_vld out_vld 1 1 } } }
	S_a0 { ap_vld {  { S_a0 out_data 1 32 }  { S_a0_ap_vld out_vld 1 1 } } }
	S_a1 { ap_vld {  { S_a1 out_data 1 32 }  { S_a1_ap_vld out_vld 1 1 } } }
	S_a2 { ap_vld {  { S_a2 out_data 1 64 }  { S_a2_ap_vld out_vld 1 1 } } }
	S_a3 { ap_vld {  { S_a3 out_data 1 32 }  { S_a3_ap_vld out_vld 1 1 } } }
	S_a4 { ap_vld {  { S_a4 out_data 1 64 }  { S_a4_ap_vld out_vld 1 1 } } }
	a { ap_none {  { a in_data 0 64 } } }
	c { ap_none {  { c in_data 0 64 } } }
	tetta_b { ap_none {  { tetta_b in_data 0 64 } } }
	g { ap_none {  { g in_data 0 64 } } }
	si { ap_none {  { si in_data 0 64 } } }
	b { ap_none {  { b in_data 0 64 } } }
	D { ap_none {  { D in_data 0 64 } } }
	c0 { ap_none {  { c0 in_data 0 64 } } }
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
