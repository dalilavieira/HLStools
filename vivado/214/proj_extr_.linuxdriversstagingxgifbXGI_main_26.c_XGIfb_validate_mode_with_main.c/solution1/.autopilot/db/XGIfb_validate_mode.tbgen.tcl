set moduleName XGIfb_validate_mode
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
set C_modelName {XGIfb_validate_mode}
set C_modelType { int 32 }
set C_modelArgList {
	{ xgifb_info_chip int 32 regular {pointer 0 volatile }  }
	{ xgifb_info_display2 int 32 regular {pointer 0 volatile }  }
	{ xgifb_info_video_size int 64 regular {pointer 0 volatile }  }
	{ xgifb_info_TV_type int 32 unused {pointer 0}  }
	{ xgifb_info_hasVB int 32 unused {pointer 0}  }
	{ xgifb_info_lvds_data_LVDSHDE int 32 regular {pointer 0 volatile }  }
	{ xgifb_info_lvds_data_LVDSVDE int 32 regular {pointer 0 volatile }  }
	{ xgifb_info_hw_info_ulCRT2LCDType int 32 unused {pointer 0}  }
	{ xgifb_info_hw_info_ulExternalChip int 32 unused {pointer 0}  }
	{ myindex int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xgifb_info_chip", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xgifb_info.chip","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xgifb_info_display2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xgifb_info.display2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xgifb_info_video_size", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "xgifb_info.video_size","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xgifb_info_TV_type", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xgifb_info.TV_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xgifb_info_hasVB", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xgifb_info.hasVB","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xgifb_info_lvds_data_LVDSHDE", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xgifb_info.lvds_data.LVDSHDE","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xgifb_info_lvds_data_LVDSVDE", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xgifb_info.lvds_data.LVDSVDE","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xgifb_info_hw_info_ulCRT2LCDType", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xgifb_info.hw_info.ulCRT2LCDType","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xgifb_info_hw_info_ulExternalChip", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xgifb_info.hw_info.ulExternalChip","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "myindex", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "myindex","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xgifb_info_chip sc_in sc_lv 32 signal 0 } 
	{ xgifb_info_display2 sc_in sc_lv 32 signal 1 } 
	{ xgifb_info_video_size sc_in sc_lv 64 signal 2 } 
	{ xgifb_info_TV_type sc_in sc_lv 32 signal 3 } 
	{ xgifb_info_hasVB sc_in sc_lv 32 signal 4 } 
	{ xgifb_info_lvds_data_LVDSHDE sc_in sc_lv 32 signal 5 } 
	{ xgifb_info_lvds_data_LVDSVDE sc_in sc_lv 32 signal 6 } 
	{ xgifb_info_hw_info_ulCRT2LCDType sc_in sc_lv 32 signal 7 } 
	{ xgifb_info_hw_info_ulExternalChip sc_in sc_lv 32 signal 8 } 
	{ myindex sc_in sc_lv 32 signal 9 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xgifb_info_chip", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xgifb_info_chip", "role": "default" }} , 
 	{ "name": "xgifb_info_display2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xgifb_info_display2", "role": "default" }} , 
 	{ "name": "xgifb_info_video_size", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xgifb_info_video_size", "role": "default" }} , 
 	{ "name": "xgifb_info_TV_type", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xgifb_info_TV_type", "role": "default" }} , 
 	{ "name": "xgifb_info_hasVB", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xgifb_info_hasVB", "role": "default" }} , 
 	{ "name": "xgifb_info_lvds_data_LVDSHDE", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xgifb_info_lvds_data_LVDSHDE", "role": "default" }} , 
 	{ "name": "xgifb_info_lvds_data_LVDSVDE", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xgifb_info_lvds_data_LVDSVDE", "role": "default" }} , 
 	{ "name": "xgifb_info_hw_info_ulCRT2LCDType", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xgifb_info_hw_info_ulCRT2LCDType", "role": "default" }} , 
 	{ "name": "xgifb_info_hw_info_ulExternalChip", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xgifb_info_hw_info_ulExternalChip", "role": "default" }} , 
 	{ "name": "myindex", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myindex", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "XGIfb_validate_mode",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xgifb_info_chip", "Type" : "None", "Direction" : "I"},
			{"Name" : "xgifb_info_display2", "Type" : "None", "Direction" : "I"},
			{"Name" : "xgifb_info_video_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "xgifb_info_TV_type", "Type" : "None", "Direction" : "I"},
			{"Name" : "xgifb_info_hasVB", "Type" : "None", "Direction" : "I"},
			{"Name" : "xgifb_info_lvds_data_LVDSHDE", "Type" : "None", "Direction" : "I"},
			{"Name" : "xgifb_info_lvds_data_LVDSVDE", "Type" : "None", "Direction" : "I"},
			{"Name" : "xgifb_info_hw_info_ulCRT2LCDType", "Type" : "None", "Direction" : "I"},
			{"Name" : "xgifb_info_hw_info_ulExternalChip", "Type" : "None", "Direction" : "I"},
			{"Name" : "myindex", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	XGIfb_validate_mode {
		xgifb_info_chip {Type I LastRead 1 FirstWrite -1}
		xgifb_info_display2 {Type I LastRead 0 FirstWrite -1}
		xgifb_info_video_size {Type I LastRead 1 FirstWrite -1}
		xgifb_info_TV_type {Type I LastRead -1 FirstWrite -1}
		xgifb_info_hasVB {Type I LastRead -1 FirstWrite -1}
		xgifb_info_lvds_data_LVDSHDE {Type I LastRead 0 FirstWrite -1}
		xgifb_info_lvds_data_LVDSVDE {Type I LastRead 0 FirstWrite -1}
		xgifb_info_hw_info_ulCRT2LCDType {Type I LastRead -1 FirstWrite -1}
		xgifb_info_hw_info_ulExternalChip {Type I LastRead -1 FirstWrite -1}
		myindex {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xgifb_info_chip { ap_none {  { xgifb_info_chip in_data 0 32 } } }
	xgifb_info_display2 { ap_none {  { xgifb_info_display2 in_data 0 32 } } }
	xgifb_info_video_size { ap_none {  { xgifb_info_video_size in_data 0 64 } } }
	xgifb_info_TV_type { ap_none {  { xgifb_info_TV_type in_data 0 32 } } }
	xgifb_info_hasVB { ap_none {  { xgifb_info_hasVB in_data 0 32 } } }
	xgifb_info_lvds_data_LVDSHDE { ap_none {  { xgifb_info_lvds_data_LVDSHDE in_data 0 32 } } }
	xgifb_info_lvds_data_LVDSVDE { ap_none {  { xgifb_info_lvds_data_LVDSVDE in_data 0 32 } } }
	xgifb_info_hw_info_ulCRT2LCDType { ap_none {  { xgifb_info_hw_info_ulCRT2LCDType in_data 0 32 } } }
	xgifb_info_hw_info_ulExternalChip { ap_none {  { xgifb_info_hw_info_ulExternalChip in_data 0 32 } } }
	myindex { ap_none {  { myindex in_data 0 32 } } }
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
