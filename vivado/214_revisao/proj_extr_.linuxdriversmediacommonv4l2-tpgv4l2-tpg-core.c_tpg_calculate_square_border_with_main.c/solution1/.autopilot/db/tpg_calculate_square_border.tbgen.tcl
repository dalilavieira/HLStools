set moduleName tpg_calculate_square_border
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
set C_modelName {tpg_calculate_square_border}
set C_modelType { void 0 }
set C_modelArgList {
	{ tpg_src_width int 32 regular {pointer 0}  }
	{ tpg_src_height int 32 regular {pointer 0}  }
	{ tpg_vid_aspect int 32 regular {pointer 0}  }
	{ tpg_pix_aspect int 32 regular {pointer 0}  }
	{ tpg_border_left int 32 regular {pointer 1}  }
	{ tpg_border_width int 32 regular {pointer 1}  }
	{ tpg_border_top int 32 regular {pointer 1}  }
	{ tpg_border_height int 32 regular {pointer 1}  }
	{ tpg_square_width int 32 regular {pointer 1}  }
	{ tpg_square_left int 32 regular {pointer 1}  }
	{ tpg_square_height int 32 regular {pointer 1}  }
	{ tpg_square_top int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tpg_src_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.src_width","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_src_height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.src_height","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_vid_aspect", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.vid_aspect","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_pix_aspect", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.pix_aspect","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_border_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.border.left","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_border_width", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.border.width","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_border_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.border.top","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_border_height", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.border.height","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_square_width", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.square.width","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_square_left", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.square.left","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_square_height", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.square.height","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tpg_square_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tpg.square.top","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tpg_src_width sc_in sc_lv 32 signal 0 } 
	{ tpg_src_height sc_in sc_lv 32 signal 1 } 
	{ tpg_vid_aspect sc_in sc_lv 32 signal 2 } 
	{ tpg_pix_aspect sc_in sc_lv 32 signal 3 } 
	{ tpg_border_left sc_out sc_lv 32 signal 4 } 
	{ tpg_border_left_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ tpg_border_width sc_out sc_lv 32 signal 5 } 
	{ tpg_border_width_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ tpg_border_top sc_out sc_lv 32 signal 6 } 
	{ tpg_border_top_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ tpg_border_height sc_out sc_lv 32 signal 7 } 
	{ tpg_border_height_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ tpg_square_width sc_out sc_lv 32 signal 8 } 
	{ tpg_square_width_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ tpg_square_left sc_out sc_lv 32 signal 9 } 
	{ tpg_square_left_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ tpg_square_height sc_out sc_lv 32 signal 10 } 
	{ tpg_square_height_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ tpg_square_top sc_out sc_lv 32 signal 11 } 
	{ tpg_square_top_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tpg_src_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_src_width", "role": "default" }} , 
 	{ "name": "tpg_src_height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_src_height", "role": "default" }} , 
 	{ "name": "tpg_vid_aspect", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_vid_aspect", "role": "default" }} , 
 	{ "name": "tpg_pix_aspect", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_pix_aspect", "role": "default" }} , 
 	{ "name": "tpg_border_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_border_left", "role": "default" }} , 
 	{ "name": "tpg_border_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpg_border_left", "role": "ap_vld" }} , 
 	{ "name": "tpg_border_width", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_border_width", "role": "default" }} , 
 	{ "name": "tpg_border_width_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpg_border_width", "role": "ap_vld" }} , 
 	{ "name": "tpg_border_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_border_top", "role": "default" }} , 
 	{ "name": "tpg_border_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpg_border_top", "role": "ap_vld" }} , 
 	{ "name": "tpg_border_height", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_border_height", "role": "default" }} , 
 	{ "name": "tpg_border_height_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpg_border_height", "role": "ap_vld" }} , 
 	{ "name": "tpg_square_width", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_square_width", "role": "default" }} , 
 	{ "name": "tpg_square_width_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpg_square_width", "role": "ap_vld" }} , 
 	{ "name": "tpg_square_left", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_square_left", "role": "default" }} , 
 	{ "name": "tpg_square_left_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpg_square_left", "role": "ap_vld" }} , 
 	{ "name": "tpg_square_height", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_square_height", "role": "default" }} , 
 	{ "name": "tpg_square_height_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpg_square_height", "role": "ap_vld" }} , 
 	{ "name": "tpg_square_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tpg_square_top", "role": "default" }} , 
 	{ "name": "tpg_square_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpg_square_top", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "tpg_calculate_square_border",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tpg_src_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "tpg_src_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "tpg_vid_aspect", "Type" : "None", "Direction" : "I"},
			{"Name" : "tpg_pix_aspect", "Type" : "None", "Direction" : "I"},
			{"Name" : "tpg_border_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpg_border_width", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpg_border_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpg_border_height", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpg_square_width", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpg_square_left", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpg_square_height", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpg_square_top", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	tpg_calculate_square_border {
		tpg_src_width {Type I LastRead 0 FirstWrite -1}
		tpg_src_height {Type I LastRead 1 FirstWrite -1}
		tpg_vid_aspect {Type I LastRead 1 FirstWrite -1}
		tpg_pix_aspect {Type I LastRead 1 FirstWrite -1}
		tpg_border_left {Type O LastRead -1 FirstWrite 4}
		tpg_border_width {Type O LastRead -1 FirstWrite 4}
		tpg_border_top {Type O LastRead -1 FirstWrite 4}
		tpg_border_height {Type O LastRead -1 FirstWrite 4}
		tpg_square_width {Type O LastRead -1 FirstWrite 1}
		tpg_square_left {Type O LastRead -1 FirstWrite 1}
		tpg_square_height {Type O LastRead -1 FirstWrite 3}
		tpg_square_top {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tpg_src_width { ap_none {  { tpg_src_width in_data 0 32 } } }
	tpg_src_height { ap_none {  { tpg_src_height in_data 0 32 } } }
	tpg_vid_aspect { ap_none {  { tpg_vid_aspect in_data 0 32 } } }
	tpg_pix_aspect { ap_none {  { tpg_pix_aspect in_data 0 32 } } }
	tpg_border_left { ap_vld {  { tpg_border_left out_data 1 32 }  { tpg_border_left_ap_vld out_vld 1 1 } } }
	tpg_border_width { ap_vld {  { tpg_border_width out_data 1 32 }  { tpg_border_width_ap_vld out_vld 1 1 } } }
	tpg_border_top { ap_vld {  { tpg_border_top out_data 1 32 }  { tpg_border_top_ap_vld out_vld 1 1 } } }
	tpg_border_height { ap_vld {  { tpg_border_height out_data 1 32 }  { tpg_border_height_ap_vld out_vld 1 1 } } }
	tpg_square_width { ap_vld {  { tpg_square_width out_data 1 32 }  { tpg_square_width_ap_vld out_vld 1 1 } } }
	tpg_square_left { ap_vld {  { tpg_square_left out_data 1 32 }  { tpg_square_left_ap_vld out_vld 1 1 } } }
	tpg_square_height { ap_vld {  { tpg_square_height out_data 1 32 }  { tpg_square_height_ap_vld out_vld 1 1 } } }
	tpg_square_top { ap_vld {  { tpg_square_top out_data 1 32 }  { tpg_square_top_ap_vld out_vld 1 1 } } }
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
