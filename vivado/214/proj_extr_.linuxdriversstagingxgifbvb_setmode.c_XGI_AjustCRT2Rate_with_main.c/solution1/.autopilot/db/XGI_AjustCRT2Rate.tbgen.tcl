set moduleName XGI_AjustCRT2Rate
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
set C_modelName {XGI_AjustCRT2Rate}
set C_modelType { int 8 }
set C_modelArgList {
	{ ModeIdIndex uint 16 unused  }
	{ RefreshRateTableIndex uint 16 unused  }
	{ i int 16 regular {array 20 { 2 3 } 1 1 }  }
	{ pVBInfo_VBInfo int 32 regular {pointer 0 volatile }  }
	{ pVBInfo_VBType int 32 unused {pointer 0}  }
	{ pVBInfo_LCDResInfo int 32 unused {pointer 0}  }
	{ pVBInfo_LCDInfo int 32 unused {pointer 0}  }
	{ pVBInfo_SetFlag int 32 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ModeIdIndex", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "ModeIdIndex","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "RefreshRateTableIndex", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "RefreshRateTableIndex","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "i", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "i","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} , 
 	{ "Name" : "pVBInfo_VBInfo", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pVBInfo.VBInfo","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pVBInfo_VBType", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pVBInfo.VBType","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pVBInfo_LCDResInfo", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pVBInfo.LCDResInfo","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pVBInfo_LCDInfo", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pVBInfo.LCDInfo","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pVBInfo_SetFlag", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pVBInfo.SetFlag","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "return","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ModeIdIndex sc_in sc_lv 16 signal 0 } 
	{ RefreshRateTableIndex sc_in sc_lv 16 signal 1 } 
	{ i_address0 sc_out sc_lv 5 signal 2 } 
	{ i_ce0 sc_out sc_logic 1 signal 2 } 
	{ i_we0 sc_out sc_logic 1 signal 2 } 
	{ i_d0 sc_out sc_lv 16 signal 2 } 
	{ i_q0 sc_in sc_lv 16 signal 2 } 
	{ pVBInfo_VBInfo sc_in sc_lv 32 signal 3 } 
	{ pVBInfo_VBType sc_in sc_lv 32 signal 4 } 
	{ pVBInfo_LCDResInfo sc_in sc_lv 32 signal 5 } 
	{ pVBInfo_LCDInfo sc_in sc_lv 32 signal 6 } 
	{ pVBInfo_SetFlag sc_in sc_lv 32 signal 7 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ModeIdIndex", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ModeIdIndex", "role": "default" }} , 
 	{ "name": "RefreshRateTableIndex", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "RefreshRateTableIndex", "role": "default" }} , 
 	{ "name": "i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "i", "role": "address0" }} , 
 	{ "name": "i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "i", "role": "ce0" }} , 
 	{ "name": "i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "i", "role": "we0" }} , 
 	{ "name": "i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "i", "role": "d0" }} , 
 	{ "name": "i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "i", "role": "q0" }} , 
 	{ "name": "pVBInfo_VBInfo", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pVBInfo_VBInfo", "role": "default" }} , 
 	{ "name": "pVBInfo_VBType", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pVBInfo_VBType", "role": "default" }} , 
 	{ "name": "pVBInfo_LCDResInfo", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pVBInfo_LCDResInfo", "role": "default" }} , 
 	{ "name": "pVBInfo_LCDInfo", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pVBInfo_LCDInfo", "role": "default" }} , 
 	{ "name": "pVBInfo_SetFlag", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pVBInfo_SetFlag", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "XGI_AjustCRT2Rate",
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
		"Port" : [
			{"Name" : "ModeIdIndex", "Type" : "None", "Direction" : "I"},
			{"Name" : "RefreshRateTableIndex", "Type" : "None", "Direction" : "I"},
			{"Name" : "i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pVBInfo_VBInfo", "Type" : "None", "Direction" : "I"},
			{"Name" : "pVBInfo_VBType", "Type" : "None", "Direction" : "I"},
			{"Name" : "pVBInfo_LCDResInfo", "Type" : "None", "Direction" : "I"},
			{"Name" : "pVBInfo_LCDInfo", "Type" : "None", "Direction" : "I"},
			{"Name" : "pVBInfo_SetFlag", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	XGI_AjustCRT2Rate {
		ModeIdIndex {Type I LastRead -1 FirstWrite -1}
		RefreshRateTableIndex {Type I LastRead -1 FirstWrite -1}
		i {Type IO LastRead 2 FirstWrite 4}
		pVBInfo_VBInfo {Type I LastRead 3 FirstWrite -1}
		pVBInfo_VBType {Type I LastRead -1 FirstWrite -1}
		pVBInfo_LCDResInfo {Type I LastRead -1 FirstWrite -1}
		pVBInfo_LCDInfo {Type I LastRead -1 FirstWrite -1}
		pVBInfo_SetFlag {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ModeIdIndex { ap_none {  { ModeIdIndex in_data 0 16 } } }
	RefreshRateTableIndex { ap_none {  { RefreshRateTableIndex in_data 0 16 } } }
	i { ap_memory {  { i_address0 mem_address 1 5 }  { i_ce0 mem_ce 1 1 }  { i_we0 mem_we 1 1 }  { i_d0 mem_din 1 16 }  { i_q0 mem_dout 0 16 } } }
	pVBInfo_VBInfo { ap_none {  { pVBInfo_VBInfo in_data 0 32 } } }
	pVBInfo_VBType { ap_none {  { pVBInfo_VBType in_data 0 32 } } }
	pVBInfo_LCDResInfo { ap_none {  { pVBInfo_LCDResInfo in_data 0 32 } } }
	pVBInfo_LCDInfo { ap_none {  { pVBInfo_LCDInfo in_data 0 32 } } }
	pVBInfo_SetFlag { ap_none {  { pVBInfo_SetFlag in_data 0 32 } } }
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
