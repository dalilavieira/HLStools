set moduleName dv_calc_mb_coordinates
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
set C_modelName {dv_calc_mb_coordinates}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_width int 32 regular {pointer 0 volatile }  }
	{ d_difseg_size int 32 regular {pointer 0 volatile }  }
	{ d_pix_fmt int 32 regular {pointer 0 volatile }  }
	{ chan int 32 regular  }
	{ seq int 32 regular  }
	{ slot int 32 regular  }
	{ tbl int 32 regular {array 1000 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "d.width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "d_difseg_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "d.difseg_size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "d_pix_fmt", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "d.pix_fmt","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "chan", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "chan","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "seq", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "seq","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "slot", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "slot","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tbl", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tbl","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_width sc_in sc_lv 32 signal 0 } 
	{ d_difseg_size sc_in sc_lv 32 signal 1 } 
	{ d_pix_fmt sc_in sc_lv 32 signal 2 } 
	{ chan sc_in sc_lv 32 signal 3 } 
	{ seq sc_in sc_lv 32 signal 4 } 
	{ slot sc_in sc_lv 32 signal 5 } 
	{ tbl_address0 sc_out sc_lv 10 signal 6 } 
	{ tbl_ce0 sc_out sc_logic 1 signal 6 } 
	{ tbl_we0 sc_out sc_logic 1 signal 6 } 
	{ tbl_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_width", "role": "default" }} , 
 	{ "name": "d_difseg_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_difseg_size", "role": "default" }} , 
 	{ "name": "d_pix_fmt", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_pix_fmt", "role": "default" }} , 
 	{ "name": "chan", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "chan", "role": "default" }} , 
 	{ "name": "seq", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "seq", "role": "default" }} , 
 	{ "name": "slot", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "slot", "role": "default" }} , 
 	{ "name": "tbl_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tbl", "role": "address0" }} , 
 	{ "name": "tbl_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbl", "role": "ce0" }} , 
 	{ "name": "tbl_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbl", "role": "we0" }} , 
 	{ "name": "tbl_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tbl", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "dv_calc_mb_coordinates",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "61", "EstimateLatencyMax" : "276",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_difseg_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_pix_fmt", "Type" : "None", "Direction" : "I"},
			{"Name" : "chan", "Type" : "None", "Direction" : "I"},
			{"Name" : "seq", "Type" : "None", "Direction" : "I"},
			{"Name" : "slot", "Type" : "None", "Direction" : "I"},
			{"Name" : "tbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "serpent1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "off", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "shuf1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "remap_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "remap_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "shuf2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "l_start", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "shuf3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "l_start_shuffled", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "serpent2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.serpent1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.off_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shuf1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.remap_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.remap_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shuf2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_start_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shuf3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_start_shuffled_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.serpent2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_30ns_6ns_30_34_seq_1_U1", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_29ns_6ns_29_33_seq_1_U2", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_6s_5ns_6_10_seq_1_U3", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_6s_5ns_6_10_seq_1_U4", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_32ns_32ns_32_36_seq_1_U5", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_32ns_32ns_32_36_seq_1_U6", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_32ns_32ns_32_36_seq_1_U7", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_32ns_5ns_32_36_seq_1_U8", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_6s_4ns_6_10_seq_1_U9", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_32ns_5ns_7_36_seq_1_U10", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_srem_32ns_5ns_7_36_seq_1_U11", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dv_calc_mb_coordinates_mul_mul_7ns_23s_23_1_1_U12", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dv_calc_mb_coordinates {
		d_width {Type I LastRead 46 FirstWrite -1}
		d_difseg_size {Type I LastRead 47 FirstWrite -1}
		d_pix_fmt {Type I LastRead 46 FirstWrite -1}
		chan {Type I LastRead 0 FirstWrite -1}
		seq {Type I LastRead 0 FirstWrite -1}
		slot {Type I LastRead 2 FirstWrite -1}
		tbl {Type O LastRead -1 FirstWrite 83}
		serpent1 {Type I LastRead -1 FirstWrite -1}
		off {Type I LastRead -1 FirstWrite -1}
		shuf1 {Type I LastRead -1 FirstWrite -1}
		remap_0 {Type I LastRead -1 FirstWrite -1}
		remap_1 {Type I LastRead -1 FirstWrite -1}
		shuf2 {Type I LastRead -1 FirstWrite -1}
		l_start {Type I LastRead -1 FirstWrite -1}
		shuf3 {Type I LastRead -1 FirstWrite -1}
		l_start_shuffled {Type I LastRead -1 FirstWrite -1}
		serpent2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "61", "Max" : "276"}
	, {"Name" : "Interval", "Min" : "62", "Max" : "277"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_width { ap_none {  { d_width in_data 0 32 } } }
	d_difseg_size { ap_none {  { d_difseg_size in_data 0 32 } } }
	d_pix_fmt { ap_none {  { d_pix_fmt in_data 0 32 } } }
	chan { ap_none {  { chan in_data 0 32 } } }
	seq { ap_none {  { seq in_data 0 32 } } }
	slot { ap_none {  { slot in_data 0 32 } } }
	tbl { ap_memory {  { tbl_address0 mem_address 1 10 }  { tbl_ce0 mem_ce 1 1 }  { tbl_we0 mem_we 1 1 }  { tbl_d0 mem_din 1 32 } } }
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
