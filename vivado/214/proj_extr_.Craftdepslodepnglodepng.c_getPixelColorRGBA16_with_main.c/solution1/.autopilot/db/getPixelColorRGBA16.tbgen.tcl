set moduleName getPixelColorRGBA16
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
set C_modelName {getPixelColorRGBA16}
set C_modelType { int 32 }
set C_modelArgList {
	{ r int 16 regular {array 1000 { 0 3 } 0 1 }  }
	{ g int 16 regular {array 1000 { 0 3 } 0 1 }  }
	{ b int 16 regular {array 1000 { 0 3 } 0 1 }  }
	{ a int 16 regular {array 1000 { 0 3 } 0 1 }  }
	{ in_r int 8 regular {array 1000 { 1 1 } 1 1 }  }
	{ i int 64 regular  }
	{ mode_bitdepth int 32 regular {array 1000 { 1 3 } 1 1 }  }
	{ mode_colortype int 32 regular {array 1000 { 1 3 } 1 1 }  }
	{ mode_key_r int 32 regular {array 1000 { 1 3 } 1 1 }  }
	{ mode_key_g int 32 unused {array 1000 { } 0 1 }  }
	{ mode_key_b int 32 unused {array 1000 { } 0 1 }  }
	{ mode_key_defined int 32 regular {array 1000 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "r","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "g", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "g","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "b","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "a","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "i", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "i","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "mode_bitdepth", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mode.bitdepth","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "mode_colortype", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mode.colortype","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "mode_key_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mode.key_r","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "mode_key_g", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mode.key_g","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "mode_key_b", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mode.key_b","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "mode_key_defined", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mode.key_defined","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_address0 sc_out sc_lv 10 signal 0 } 
	{ r_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_we0 sc_out sc_logic 1 signal 0 } 
	{ r_d0 sc_out sc_lv 16 signal 0 } 
	{ g_address0 sc_out sc_lv 10 signal 1 } 
	{ g_ce0 sc_out sc_logic 1 signal 1 } 
	{ g_we0 sc_out sc_logic 1 signal 1 } 
	{ g_d0 sc_out sc_lv 16 signal 1 } 
	{ b_address0 sc_out sc_lv 10 signal 2 } 
	{ b_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_we0 sc_out sc_logic 1 signal 2 } 
	{ b_d0 sc_out sc_lv 16 signal 2 } 
	{ a_address0 sc_out sc_lv 10 signal 3 } 
	{ a_ce0 sc_out sc_logic 1 signal 3 } 
	{ a_we0 sc_out sc_logic 1 signal 3 } 
	{ a_d0 sc_out sc_lv 16 signal 3 } 
	{ in_r_address0 sc_out sc_lv 10 signal 4 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_r_q0 sc_in sc_lv 8 signal 4 } 
	{ in_r_address1 sc_out sc_lv 10 signal 4 } 
	{ in_r_ce1 sc_out sc_logic 1 signal 4 } 
	{ in_r_q1 sc_in sc_lv 8 signal 4 } 
	{ i sc_in sc_lv 64 signal 5 } 
	{ mode_bitdepth_address0 sc_out sc_lv 10 signal 6 } 
	{ mode_bitdepth_ce0 sc_out sc_logic 1 signal 6 } 
	{ mode_bitdepth_q0 sc_in sc_lv 32 signal 6 } 
	{ mode_colortype_address0 sc_out sc_lv 10 signal 7 } 
	{ mode_colortype_ce0 sc_out sc_logic 1 signal 7 } 
	{ mode_colortype_q0 sc_in sc_lv 32 signal 7 } 
	{ mode_key_r_address0 sc_out sc_lv 10 signal 8 } 
	{ mode_key_r_ce0 sc_out sc_logic 1 signal 8 } 
	{ mode_key_r_q0 sc_in sc_lv 32 signal 8 } 
	{ mode_key_g_address0 sc_out sc_lv 10 signal 9 } 
	{ mode_key_g_ce0 sc_out sc_logic 1 signal 9 } 
	{ mode_key_g_we0 sc_out sc_logic 1 signal 9 } 
	{ mode_key_g_d0 sc_out sc_lv 32 signal 9 } 
	{ mode_key_g_q0 sc_in sc_lv 32 signal 9 } 
	{ mode_key_g_address1 sc_out sc_lv 10 signal 9 } 
	{ mode_key_g_ce1 sc_out sc_logic 1 signal 9 } 
	{ mode_key_g_we1 sc_out sc_logic 1 signal 9 } 
	{ mode_key_g_d1 sc_out sc_lv 32 signal 9 } 
	{ mode_key_g_q1 sc_in sc_lv 32 signal 9 } 
	{ mode_key_b_address0 sc_out sc_lv 10 signal 10 } 
	{ mode_key_b_ce0 sc_out sc_logic 1 signal 10 } 
	{ mode_key_b_we0 sc_out sc_logic 1 signal 10 } 
	{ mode_key_b_d0 sc_out sc_lv 32 signal 10 } 
	{ mode_key_b_q0 sc_in sc_lv 32 signal 10 } 
	{ mode_key_b_address1 sc_out sc_lv 10 signal 10 } 
	{ mode_key_b_ce1 sc_out sc_logic 1 signal 10 } 
	{ mode_key_b_we1 sc_out sc_logic 1 signal 10 } 
	{ mode_key_b_d1 sc_out sc_lv 32 signal 10 } 
	{ mode_key_b_q1 sc_in sc_lv 32 signal 10 } 
	{ mode_key_defined_address0 sc_out sc_lv 10 signal 11 } 
	{ mode_key_defined_ce0 sc_out sc_logic 1 signal 11 } 
	{ mode_key_defined_q0 sc_in sc_lv 32 signal 11 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "r", "role": "address0" }} , 
 	{ "name": "r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce0" }} , 
 	{ "name": "r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "we0" }} , 
 	{ "name": "r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "r", "role": "d0" }} , 
 	{ "name": "g_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "g", "role": "address0" }} , 
 	{ "name": "g_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g", "role": "ce0" }} , 
 	{ "name": "g_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g", "role": "we0" }} , 
 	{ "name": "g_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "g", "role": "d0" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "we0" }} , 
 	{ "name": "b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b", "role": "d0" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "we0" }} , 
 	{ "name": "a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a", "role": "d0" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "in_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "in_r", "role": "address1" }} , 
 	{ "name": "in_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce1" }} , 
 	{ "name": "in_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q1" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "mode_bitdepth_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mode_bitdepth", "role": "address0" }} , 
 	{ "name": "mode_bitdepth_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_bitdepth", "role": "ce0" }} , 
 	{ "name": "mode_bitdepth_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_bitdepth", "role": "q0" }} , 
 	{ "name": "mode_colortype_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mode_colortype", "role": "address0" }} , 
 	{ "name": "mode_colortype_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_colortype", "role": "ce0" }} , 
 	{ "name": "mode_colortype_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_colortype", "role": "q0" }} , 
 	{ "name": "mode_key_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mode_key_r", "role": "address0" }} , 
 	{ "name": "mode_key_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_r", "role": "ce0" }} , 
 	{ "name": "mode_key_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_r", "role": "q0" }} , 
 	{ "name": "mode_key_g_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mode_key_g", "role": "address0" }} , 
 	{ "name": "mode_key_g_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_g", "role": "ce0" }} , 
 	{ "name": "mode_key_g_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_g", "role": "we0" }} , 
 	{ "name": "mode_key_g_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_g", "role": "d0" }} , 
 	{ "name": "mode_key_g_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_g", "role": "q0" }} , 
 	{ "name": "mode_key_g_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mode_key_g", "role": "address1" }} , 
 	{ "name": "mode_key_g_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_g", "role": "ce1" }} , 
 	{ "name": "mode_key_g_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_g", "role": "we1" }} , 
 	{ "name": "mode_key_g_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_g", "role": "d1" }} , 
 	{ "name": "mode_key_g_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_g", "role": "q1" }} , 
 	{ "name": "mode_key_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mode_key_b", "role": "address0" }} , 
 	{ "name": "mode_key_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_b", "role": "ce0" }} , 
 	{ "name": "mode_key_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_b", "role": "we0" }} , 
 	{ "name": "mode_key_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_b", "role": "d0" }} , 
 	{ "name": "mode_key_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_b", "role": "q0" }} , 
 	{ "name": "mode_key_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mode_key_b", "role": "address1" }} , 
 	{ "name": "mode_key_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_b", "role": "ce1" }} , 
 	{ "name": "mode_key_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_b", "role": "we1" }} , 
 	{ "name": "mode_key_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_b", "role": "d1" }} , 
 	{ "name": "mode_key_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_b", "role": "q1" }} , 
 	{ "name": "mode_key_defined_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mode_key_defined", "role": "address0" }} , 
 	{ "name": "mode_key_defined_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode_key_defined", "role": "ce0" }} , 
 	{ "name": "mode_key_defined_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode_key_defined", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "getPixelColorRGBA16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "g", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode_bitdepth", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mode_colortype", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mode_key_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mode_key_g", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "mode_key_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "mode_key_defined", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	getPixelColorRGBA16 {
		r {Type O LastRead -1 FirstWrite 3}
		g {Type O LastRead -1 FirstWrite 3}
		b {Type O LastRead -1 FirstWrite 3}
		a {Type O LastRead -1 FirstWrite 3}
		in_r {Type I LastRead 3 FirstWrite -1}
		i {Type I LastRead 1 FirstWrite -1}
		mode_bitdepth {Type I LastRead 0 FirstWrite -1}
		mode_colortype {Type I LastRead 1 FirstWrite -1}
		mode_key_r {Type I LastRead 2 FirstWrite -1}
		mode_key_g {Type X LastRead -1 FirstWrite -1}
		mode_key_b {Type X LastRead -1 FirstWrite -1}
		mode_key_defined {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r { ap_memory {  { r_address0 mem_address 1 10 }  { r_ce0 mem_ce 1 1 }  { r_we0 mem_we 1 1 }  { r_d0 mem_din 1 16 } } }
	g { ap_memory {  { g_address0 mem_address 1 10 }  { g_ce0 mem_ce 1 1 }  { g_we0 mem_we 1 1 }  { g_d0 mem_din 1 16 } } }
	b { ap_memory {  { b_address0 mem_address 1 10 }  { b_ce0 mem_ce 1 1 }  { b_we0 mem_we 1 1 }  { b_d0 mem_din 1 16 } } }
	a { ap_memory {  { a_address0 mem_address 1 10 }  { a_ce0 mem_ce 1 1 }  { a_we0 mem_we 1 1 }  { a_d0 mem_din 1 16 } } }
	in_r { ap_memory {  { in_r_address0 mem_address 1 10 }  { in_r_ce0 mem_ce 1 1 }  { in_r_q0 mem_dout 0 8 }  { in_r_address1 MemPortADDR2 1 10 }  { in_r_ce1 MemPortCE2 1 1 }  { in_r_q1 MemPortDOUT2 0 8 } } }
	i { ap_none {  { i in_data 0 64 } } }
	mode_bitdepth { ap_memory {  { mode_bitdepth_address0 mem_address 1 10 }  { mode_bitdepth_ce0 mem_ce 1 1 }  { mode_bitdepth_q0 mem_dout 0 32 } } }
	mode_colortype { ap_memory {  { mode_colortype_address0 mem_address 1 10 }  { mode_colortype_ce0 mem_ce 1 1 }  { mode_colortype_q0 mem_dout 0 32 } } }
	mode_key_r { ap_memory {  { mode_key_r_address0 mem_address 1 10 }  { mode_key_r_ce0 mem_ce 1 1 }  { mode_key_r_q0 mem_dout 0 32 } } }
	mode_key_g { ap_memory {  { mode_key_g_address0 mem_address 1 10 }  { mode_key_g_ce0 mem_ce 1 1 }  { mode_key_g_we0 mem_we 1 1 }  { mode_key_g_d0 mem_din 1 32 }  { mode_key_g_q0 mem_dout 0 32 }  { mode_key_g_address1 MemPortADDR2 1 10 }  { mode_key_g_ce1 MemPortCE2 1 1 }  { mode_key_g_we1 MemPortWE2 1 1 }  { mode_key_g_d1 MemPortDIN2 1 32 }  { mode_key_g_q1 MemPortDOUT2 0 32 } } }
	mode_key_b { ap_memory {  { mode_key_b_address0 mem_address 1 10 }  { mode_key_b_ce0 mem_ce 1 1 }  { mode_key_b_we0 mem_we 1 1 }  { mode_key_b_d0 mem_din 1 32 }  { mode_key_b_q0 mem_dout 0 32 }  { mode_key_b_address1 MemPortADDR2 1 10 }  { mode_key_b_ce1 MemPortCE2 1 1 }  { mode_key_b_we1 MemPortWE2 1 1 }  { mode_key_b_d1 MemPortDIN2 1 32 }  { mode_key_b_q1 MemPortDOUT2 0 32 } } }
	mode_key_defined { ap_memory {  { mode_key_defined_address0 mem_address 1 10 }  { mode_key_defined_ce0 mem_ce 1 1 }  { mode_key_defined_q0 mem_dout 0 32 } } }
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
