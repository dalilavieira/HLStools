set moduleName smrt_info_get
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
set C_modelName {smrt_info_get}
set C_modelType { void 0 }
set C_modelArgList {
	{ state_deci int 32 regular {pointer 1}  }
	{ state_csel int 32 regular {pointer 1}  }
	{ state_rsel int 32 regular {pointer 1}  }
	{ state_master_clk int 32 regular {pointer 1}  }
	{ rate int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_deci", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "state.deci","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "state_csel", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "state.csel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "state_rsel", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "state.rsel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "state_master_clk", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "state.master_clk","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rate", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rate","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_deci sc_out sc_lv 32 signal 0 } 
	{ state_deci_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ state_csel sc_out sc_lv 32 signal 1 } 
	{ state_csel_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ state_rsel sc_out sc_lv 32 signal 2 } 
	{ state_rsel_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ state_master_clk sc_out sc_lv 32 signal 3 } 
	{ state_master_clk_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ rate sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_deci", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_deci", "role": "default" }} , 
 	{ "name": "state_deci_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_deci", "role": "ap_vld" }} , 
 	{ "name": "state_csel", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_csel", "role": "default" }} , 
 	{ "name": "state_csel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_csel", "role": "ap_vld" }} , 
 	{ "name": "state_rsel", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_rsel", "role": "default" }} , 
 	{ "name": "state_rsel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_rsel", "role": "ap_vld" }} , 
 	{ "name": "state_master_clk", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_master_clk", "role": "default" }} , 
 	{ "name": "state_master_clk_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_master_clk", "role": "ap_vld" }} , 
 	{ "name": "rate", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rate", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "smrt_info_get",
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
			{"Name" : "state_deci", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_csel", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_rsel", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_master_clk", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rate", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	smrt_info_get {
		state_deci {Type O LastRead -1 FirstWrite 0}
		state_csel {Type O LastRead -1 FirstWrite 0}
		state_rsel {Type O LastRead -1 FirstWrite 0}
		state_master_clk {Type O LastRead -1 FirstWrite 0}
		rate {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_deci { ap_vld {  { state_deci out_data 1 32 }  { state_deci_ap_vld out_vld 1 1 } } }
	state_csel { ap_vld {  { state_csel out_data 1 32 }  { state_csel_ap_vld out_vld 1 1 } } }
	state_rsel { ap_vld {  { state_rsel out_data 1 32 }  { state_rsel_ap_vld out_vld 1 1 } } }
	state_master_clk { ap_vld {  { state_master_clk out_data 1 32 }  { state_master_clk_ap_vld out_vld 1 1 } } }
	rate { ap_none {  { rate in_data 0 32 } } }
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
