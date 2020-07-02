set moduleName set_pix_fmt
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {set_pix_fmt}
set C_modelType { void 0 }
set C_modelArgList {
	{ var_bits_per_pixel int 32 regular {pointer 1}  }
	{ var_transp_offset int 32 regular {pointer 1}  }
	{ var_transp_length int 32 regular {pointer 1}  }
	{ var_blue_offset int 32 regular {pointer 1}  }
	{ var_blue_length int 32 regular {pointer 1}  }
	{ var_green_offset int 32 regular {pointer 1}  }
	{ var_green_length int 32 regular {pointer 1}  }
	{ var_red_offset int 32 regular {pointer 1}  }
	{ var_red_length int 32 regular {pointer 1}  }
	{ pix_fmt int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "var_bits_per_pixel", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.bits_per_pixel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_transp_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.transp.offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_transp_length", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.transp.length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_blue_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.blue.offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_blue_length", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.blue.length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_green_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.green.offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_green_length", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.green.length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_red_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.red.offset","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "var_red_length", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "var.red.length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pix_fmt", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pix_fmt","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ var_bits_per_pixel sc_out sc_lv 32 signal 0 } 
	{ var_bits_per_pixel_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ var_transp_offset sc_out sc_lv 32 signal 1 } 
	{ var_transp_offset_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ var_transp_length sc_out sc_lv 32 signal 2 } 
	{ var_transp_length_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ var_blue_offset sc_out sc_lv 32 signal 3 } 
	{ var_blue_offset_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ var_blue_length sc_out sc_lv 32 signal 4 } 
	{ var_blue_length_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ var_green_offset sc_out sc_lv 32 signal 5 } 
	{ var_green_offset_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ var_green_length sc_out sc_lv 32 signal 6 } 
	{ var_green_length_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ var_red_offset sc_out sc_lv 32 signal 7 } 
	{ var_red_offset_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ var_red_length sc_out sc_lv 32 signal 8 } 
	{ var_red_length_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ pix_fmt sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "var_bits_per_pixel", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_bits_per_pixel", "role": "default" }} , 
 	{ "name": "var_bits_per_pixel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_bits_per_pixel", "role": "ap_vld" }} , 
 	{ "name": "var_transp_offset", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_transp_offset", "role": "default" }} , 
 	{ "name": "var_transp_offset_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_transp_offset", "role": "ap_vld" }} , 
 	{ "name": "var_transp_length", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_transp_length", "role": "default" }} , 
 	{ "name": "var_transp_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_transp_length", "role": "ap_vld" }} , 
 	{ "name": "var_blue_offset", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_blue_offset", "role": "default" }} , 
 	{ "name": "var_blue_offset_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_blue_offset", "role": "ap_vld" }} , 
 	{ "name": "var_blue_length", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_blue_length", "role": "default" }} , 
 	{ "name": "var_blue_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_blue_length", "role": "ap_vld" }} , 
 	{ "name": "var_green_offset", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_green_offset", "role": "default" }} , 
 	{ "name": "var_green_offset_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_green_offset", "role": "ap_vld" }} , 
 	{ "name": "var_green_length", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_green_length", "role": "default" }} , 
 	{ "name": "var_green_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_green_length", "role": "ap_vld" }} , 
 	{ "name": "var_red_offset", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_red_offset", "role": "default" }} , 
 	{ "name": "var_red_offset_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_red_offset", "role": "ap_vld" }} , 
 	{ "name": "var_red_length", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "var_red_length", "role": "default" }} , 
 	{ "name": "var_red_length_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_red_length", "role": "ap_vld" }} , 
 	{ "name": "pix_fmt", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pix_fmt", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "set_pix_fmt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "var_bits_per_pixel", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_transp_offset", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_transp_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_blue_offset", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_blue_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_green_offset", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_green_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_red_offset", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "var_red_length", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pix_fmt", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	set_pix_fmt {
		var_bits_per_pixel {Type O LastRead -1 FirstWrite 0}
		var_transp_offset {Type O LastRead -1 FirstWrite 0}
		var_transp_length {Type O LastRead -1 FirstWrite 0}
		var_blue_offset {Type O LastRead -1 FirstWrite 0}
		var_blue_length {Type O LastRead -1 FirstWrite 0}
		var_green_offset {Type O LastRead -1 FirstWrite 0}
		var_green_length {Type O LastRead -1 FirstWrite 0}
		var_red_offset {Type O LastRead -1 FirstWrite 0}
		var_red_length {Type O LastRead -1 FirstWrite 0}
		pix_fmt {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	var_bits_per_pixel { ap_vld {  { var_bits_per_pixel out_data 1 32 }  { var_bits_per_pixel_ap_vld out_vld 1 1 } } }
	var_transp_offset { ap_vld {  { var_transp_offset out_data 1 32 }  { var_transp_offset_ap_vld out_vld 1 1 } } }
	var_transp_length { ap_vld {  { var_transp_length out_data 1 32 }  { var_transp_length_ap_vld out_vld 1 1 } } }
	var_blue_offset { ap_vld {  { var_blue_offset out_data 1 32 }  { var_blue_offset_ap_vld out_vld 1 1 } } }
	var_blue_length { ap_vld {  { var_blue_length out_data 1 32 }  { var_blue_length_ap_vld out_vld 1 1 } } }
	var_green_offset { ap_vld {  { var_green_offset out_data 1 32 }  { var_green_offset_ap_vld out_vld 1 1 } } }
	var_green_length { ap_vld {  { var_green_length out_data 1 32 }  { var_green_length_ap_vld out_vld 1 1 } } }
	var_red_offset { ap_vld {  { var_red_offset out_data 1 32 }  { var_red_offset_ap_vld out_vld 1 1 } } }
	var_red_length { ap_vld {  { var_red_length out_data 1 32 }  { var_red_length_ap_vld out_vld 1 1 } } }
	pix_fmt { ap_none {  { pix_fmt in_data 0 32 } } }
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
