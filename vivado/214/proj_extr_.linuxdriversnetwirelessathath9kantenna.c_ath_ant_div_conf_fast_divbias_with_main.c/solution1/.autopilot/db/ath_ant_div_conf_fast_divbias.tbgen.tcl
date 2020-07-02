set moduleName ath_ant_div_conf_fast_divbias
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
set C_modelName {ath_ant_div_conf_fast_divbias}
set C_modelType { void 0 }
set C_modelArgList {
	{ ant_conf_div_group int 32 regular {pointer 0 volatile }  }
	{ ant_conf_main_lna_conf int 32 regular {pointer 0 volatile }  }
	{ ant_conf_alt_lna_conf int 32 regular {pointer 0 volatile }  }
	{ ant_conf_fast_div_bias int 32 regular {pointer 1 volatile }  }
	{ ant_conf_alt_gaintb int 32 regular {pointer 1 volatile }  }
	{ ant_conf_main_gaintb int 32 regular {pointer 1 volatile }  }
	{ antcomb_ant_ratio int 32 regular {pointer 0 volatile }  }
	{ antcomb_fast_div_bias int 32 regular {pointer 0 volatile }  }
	{ antcomb_scan int 32 regular {pointer 0 volatile }  }
	{ alt_ratio int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ant_conf_div_group", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ant_conf.div_group","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ant_conf_main_lna_conf", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ant_conf.main_lna_conf","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ant_conf_alt_lna_conf", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ant_conf.alt_lna_conf","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ant_conf_fast_div_bias", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ant_conf.fast_div_bias","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ant_conf_alt_gaintb", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ant_conf.alt_gaintb","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ant_conf_main_gaintb", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ant_conf.main_gaintb","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "antcomb_ant_ratio", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "antcomb.ant_ratio","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "antcomb_fast_div_bias", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "antcomb.fast_div_bias","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "antcomb_scan", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "antcomb.scan","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "alt_ratio", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "alt_ratio","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ant_conf_div_group sc_in sc_lv 32 signal 0 } 
	{ ant_conf_main_lna_conf sc_in sc_lv 32 signal 1 } 
	{ ant_conf_alt_lna_conf sc_in sc_lv 32 signal 2 } 
	{ ant_conf_fast_div_bias sc_out sc_lv 32 signal 3 } 
	{ ant_conf_fast_div_bias_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ant_conf_alt_gaintb sc_out sc_lv 32 signal 4 } 
	{ ant_conf_alt_gaintb_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ ant_conf_main_gaintb sc_out sc_lv 32 signal 5 } 
	{ ant_conf_main_gaintb_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ antcomb_ant_ratio sc_in sc_lv 32 signal 6 } 
	{ antcomb_fast_div_bias sc_in sc_lv 32 signal 7 } 
	{ antcomb_scan sc_in sc_lv 32 signal 8 } 
	{ alt_ratio sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ant_conf_div_group", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ant_conf_div_group", "role": "default" }} , 
 	{ "name": "ant_conf_main_lna_conf", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ant_conf_main_lna_conf", "role": "default" }} , 
 	{ "name": "ant_conf_alt_lna_conf", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ant_conf_alt_lna_conf", "role": "default" }} , 
 	{ "name": "ant_conf_fast_div_bias", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ant_conf_fast_div_bias", "role": "default" }} , 
 	{ "name": "ant_conf_fast_div_bias_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ant_conf_fast_div_bias", "role": "ap_vld" }} , 
 	{ "name": "ant_conf_alt_gaintb", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ant_conf_alt_gaintb", "role": "default" }} , 
 	{ "name": "ant_conf_alt_gaintb_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ant_conf_alt_gaintb", "role": "ap_vld" }} , 
 	{ "name": "ant_conf_main_gaintb", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ant_conf_main_gaintb", "role": "default" }} , 
 	{ "name": "ant_conf_main_gaintb_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ant_conf_main_gaintb", "role": "ap_vld" }} , 
 	{ "name": "antcomb_ant_ratio", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "antcomb_ant_ratio", "role": "default" }} , 
 	{ "name": "antcomb_fast_div_bias", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "antcomb_fast_div_bias", "role": "default" }} , 
 	{ "name": "antcomb_scan", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "antcomb_scan", "role": "default" }} , 
 	{ "name": "alt_ratio", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "alt_ratio", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ath_ant_div_conf_fast_divbias",
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
			{"Name" : "ant_conf_div_group", "Type" : "None", "Direction" : "I"},
			{"Name" : "ant_conf_main_lna_conf", "Type" : "None", "Direction" : "I"},
			{"Name" : "ant_conf_alt_lna_conf", "Type" : "None", "Direction" : "I"},
			{"Name" : "ant_conf_fast_div_bias", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ant_conf_alt_gaintb", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ant_conf_main_gaintb", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "antcomb_ant_ratio", "Type" : "None", "Direction" : "I"},
			{"Name" : "antcomb_fast_div_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "antcomb_scan", "Type" : "None", "Direction" : "I"},
			{"Name" : "alt_ratio", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	ath_ant_div_conf_fast_divbias {
		ant_conf_div_group {Type I LastRead 3 FirstWrite -1}
		ant_conf_main_lna_conf {Type I LastRead 3 FirstWrite -1}
		ant_conf_alt_lna_conf {Type I LastRead 3 FirstWrite -1}
		ant_conf_fast_div_bias {Type O LastRead -1 FirstWrite 0}
		ant_conf_alt_gaintb {Type O LastRead -1 FirstWrite 0}
		ant_conf_main_gaintb {Type O LastRead -1 FirstWrite 0}
		antcomb_ant_ratio {Type I LastRead 2 FirstWrite -1}
		antcomb_fast_div_bias {Type I LastRead 3 FirstWrite -1}
		antcomb_scan {Type I LastRead 2 FirstWrite -1}
		alt_ratio {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ant_conf_div_group { ap_none {  { ant_conf_div_group in_data 0 32 } } }
	ant_conf_main_lna_conf { ap_none {  { ant_conf_main_lna_conf in_data 0 32 } } }
	ant_conf_alt_lna_conf { ap_none {  { ant_conf_alt_lna_conf in_data 0 32 } } }
	ant_conf_fast_div_bias { ap_vld {  { ant_conf_fast_div_bias out_data 1 32 }  { ant_conf_fast_div_bias_ap_vld out_vld 1 1 } } }
	ant_conf_alt_gaintb { ap_vld {  { ant_conf_alt_gaintb out_data 1 32 }  { ant_conf_alt_gaintb_ap_vld out_vld 1 1 } } }
	ant_conf_main_gaintb { ap_vld {  { ant_conf_main_gaintb out_data 1 32 }  { ant_conf_main_gaintb_ap_vld out_vld 1 1 } } }
	antcomb_ant_ratio { ap_none {  { antcomb_ant_ratio in_data 0 32 } } }
	antcomb_fast_div_bias { ap_none {  { antcomb_fast_div_bias in_data 0 32 } } }
	antcomb_scan { ap_none {  { antcomb_scan in_data 0 32 } } }
	alt_ratio { ap_none {  { alt_ratio in_data 0 32 } } }
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
