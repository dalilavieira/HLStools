set moduleName make_cube_faces
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
set C_modelName {make_cube_faces}
set C_modelType { void 0 }
set C_modelArgList {
	{ data float 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ ao float 32 regular {array 24 { 1 1 } 1 1 }  }
	{ light float 32 regular {array 24 { 1 3 } 1 1 }  }
	{ left_r int 32 regular  }
	{ right_r int 32 regular  }
	{ top int 32 regular  }
	{ bottom int 32 regular  }
	{ front int 32 regular  }
	{ back int 32 regular  }
	{ wleft int 32 regular  }
	{ wright int 32 regular  }
	{ wtop int 32 regular  }
	{ wbottom int 32 regular  }
	{ wfront int 32 regular  }
	{ wback int 32 regular  }
	{ x float 32 regular  }
	{ y float 32 regular  }
	{ z float 32 regular  }
	{ n float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "ao", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ao","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "light", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "light","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "left_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "left","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "right_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "right","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "top", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "front", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "front","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "back", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "back","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wleft", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "wleft","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wright", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "wright","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wtop", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "wtop","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wbottom", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "wbottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wfront", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "wfront","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wback", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "wback","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "z","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "n","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_address0 sc_out sc_lv 10 signal 0 } 
	{ data_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_we0 sc_out sc_logic 1 signal 0 } 
	{ data_d0 sc_out sc_lv 32 signal 0 } 
	{ ao_address0 sc_out sc_lv 5 signal 1 } 
	{ ao_ce0 sc_out sc_logic 1 signal 1 } 
	{ ao_q0 sc_in sc_lv 32 signal 1 } 
	{ ao_address1 sc_out sc_lv 5 signal 1 } 
	{ ao_ce1 sc_out sc_logic 1 signal 1 } 
	{ ao_q1 sc_in sc_lv 32 signal 1 } 
	{ light_address0 sc_out sc_lv 5 signal 2 } 
	{ light_ce0 sc_out sc_logic 1 signal 2 } 
	{ light_q0 sc_in sc_lv 32 signal 2 } 
	{ left_r sc_in sc_lv 32 signal 3 } 
	{ right_r sc_in sc_lv 32 signal 4 } 
	{ top sc_in sc_lv 32 signal 5 } 
	{ bottom sc_in sc_lv 32 signal 6 } 
	{ front sc_in sc_lv 32 signal 7 } 
	{ back sc_in sc_lv 32 signal 8 } 
	{ wleft sc_in sc_lv 32 signal 9 } 
	{ wright sc_in sc_lv 32 signal 10 } 
	{ wtop sc_in sc_lv 32 signal 11 } 
	{ wbottom sc_in sc_lv 32 signal 12 } 
	{ wfront sc_in sc_lv 32 signal 13 } 
	{ wback sc_in sc_lv 32 signal 14 } 
	{ x sc_in sc_lv 32 signal 15 } 
	{ y sc_in sc_lv 32 signal 16 } 
	{ z sc_in sc_lv 32 signal 17 } 
	{ n sc_in sc_lv 32 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "we0" }} , 
 	{ "name": "data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "d0" }} , 
 	{ "name": "ao_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ao", "role": "address0" }} , 
 	{ "name": "ao_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ao", "role": "ce0" }} , 
 	{ "name": "ao_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ao", "role": "q0" }} , 
 	{ "name": "ao_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ao", "role": "address1" }} , 
 	{ "name": "ao_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ao", "role": "ce1" }} , 
 	{ "name": "ao_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ao", "role": "q1" }} , 
 	{ "name": "light_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "light", "role": "address0" }} , 
 	{ "name": "light_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "light", "role": "ce0" }} , 
 	{ "name": "light_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "light", "role": "q0" }} , 
 	{ "name": "left_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "left_r", "role": "default" }} , 
 	{ "name": "right_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "right_r", "role": "default" }} , 
 	{ "name": "top", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top", "role": "default" }} , 
 	{ "name": "bottom", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom", "role": "default" }} , 
 	{ "name": "front", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "front", "role": "default" }} , 
 	{ "name": "back", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "back", "role": "default" }} , 
 	{ "name": "wleft", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wleft", "role": "default" }} , 
 	{ "name": "wright", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wright", "role": "default" }} , 
 	{ "name": "wtop", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wtop", "role": "default" }} , 
 	{ "name": "wbottom", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wbottom", "role": "default" }} , 
 	{ "name": "wfront", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wfront", "role": "default" }} , 
 	{ "name": "wback", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wback", "role": "default" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "z", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "make_cube_faces",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "861",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ao", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "light", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "left_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "right_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "top", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom", "Type" : "None", "Direction" : "I"},
			{"Name" : "front", "Type" : "None", "Direction" : "I"},
			{"Name" : "back", "Type" : "None", "Direction" : "I"},
			{"Name" : "wleft", "Type" : "None", "Direction" : "I"},
			{"Name" : "wright", "Type" : "None", "Direction" : "I"},
			{"Name" : "wtop", "Type" : "None", "Direction" : "I"},
			{"Name" : "wbottom", "Type" : "None", "Direction" : "I"},
			{"Name" : "wfront", "Type" : "None", "Direction" : "I"},
			{"Name" : "wback", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "z", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "normals_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "normals_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "normals_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "flipped", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "indices", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "positions", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "uvs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normals_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normals_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normals_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flipped_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.indices_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.positions_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uvs_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faces_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tiles_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_fadd_32ns_32ns_32_4_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_fadd_32ns_32ns_32_4_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_fadd_32ns_32ns_32_4_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_fmul_32ns_32ns_32_3_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_fmul_32ns_32ns_32_3_max_dsp_1_U5", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_fmul_32ns_32ns_32_3_max_dsp_1_U6", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_sitofp_32ns_32_4_1_U7", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_sitofp_32s_32_4_1_U8", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.make_cube_faces_fcmp_32ns_32ns_1_2_1_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	make_cube_faces {
		data {Type O LastRead -1 FirstWrite 25}
		ao {Type I LastRead 32 FirstWrite -1}
		light {Type I LastRead 32 FirstWrite -1}
		left_r {Type I LastRead 0 FirstWrite -1}
		right_r {Type I LastRead 0 FirstWrite -1}
		top {Type I LastRead 1 FirstWrite -1}
		bottom {Type I LastRead 1 FirstWrite -1}
		front {Type I LastRead 2 FirstWrite -1}
		back {Type I LastRead 2 FirstWrite -1}
		wleft {Type I LastRead 0 FirstWrite -1}
		wright {Type I LastRead 0 FirstWrite -1}
		wtop {Type I LastRead 1 FirstWrite -1}
		wbottom {Type I LastRead 1 FirstWrite -1}
		wfront {Type I LastRead 2 FirstWrite -1}
		wback {Type I LastRead 2 FirstWrite -1}
		x {Type I LastRead 2 FirstWrite -1}
		y {Type I LastRead 2 FirstWrite -1}
		z {Type I LastRead 2 FirstWrite -1}
		n {Type I LastRead 2 FirstWrite -1}
		normals_0 {Type I LastRead -1 FirstWrite -1}
		normals_1 {Type I LastRead -1 FirstWrite -1}
		normals_2 {Type I LastRead -1 FirstWrite -1}
		flipped {Type I LastRead -1 FirstWrite -1}
		indices {Type I LastRead -1 FirstWrite -1}
		positions {Type I LastRead -1 FirstWrite -1}
		uvs {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "861"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "862"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data { ap_memory {  { data_address0 mem_address 1 10 }  { data_ce0 mem_ce 1 1 }  { data_we0 mem_we 1 1 }  { data_d0 mem_din 1 32 } } }
	ao { ap_memory {  { ao_address0 mem_address 1 5 }  { ao_ce0 mem_ce 1 1 }  { ao_q0 mem_dout 0 32 }  { ao_address1 MemPortADDR2 1 5 }  { ao_ce1 MemPortCE2 1 1 }  { ao_q1 MemPortDOUT2 0 32 } } }
	light { ap_memory {  { light_address0 mem_address 1 5 }  { light_ce0 mem_ce 1 1 }  { light_q0 mem_dout 0 32 } } }
	left_r { ap_none {  { left_r in_data 0 32 } } }
	right_r { ap_none {  { right_r in_data 0 32 } } }
	top { ap_none {  { top in_data 0 32 } } }
	bottom { ap_none {  { bottom in_data 0 32 } } }
	front { ap_none {  { front in_data 0 32 } } }
	back { ap_none {  { back in_data 0 32 } } }
	wleft { ap_none {  { wleft in_data 0 32 } } }
	wright { ap_none {  { wright in_data 0 32 } } }
	wtop { ap_none {  { wtop in_data 0 32 } } }
	wbottom { ap_none {  { wbottom in_data 0 32 } } }
	wfront { ap_none {  { wfront in_data 0 32 } } }
	wback { ap_none {  { wback in_data 0 32 } } }
	x { ap_none {  { x in_data 0 32 } } }
	y { ap_none {  { y in_data 0 32 } } }
	z { ap_none {  { z in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
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
