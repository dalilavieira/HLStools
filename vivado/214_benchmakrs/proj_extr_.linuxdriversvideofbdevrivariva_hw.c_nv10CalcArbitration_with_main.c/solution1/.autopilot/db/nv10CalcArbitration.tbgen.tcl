set moduleName nv10CalcArbitration
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
set C_modelName {nv10CalcArbitration}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_valid int 32 regular {pointer 1}  }
	{ fifo_graphics_lwm int 32 regular {pointer 1}  }
	{ fifo_graphics_burst_size int 32 regular {pointer 1}  }
	{ fifo_video_lwm int 32 regular {pointer 1}  }
	{ fifo_video_burst_size int 32 regular {pointer 1}  }
	{ arb_pclk_khz int 32 regular {pointer 0}  }
	{ arb_mclk_khz int 32 regular {pointer 0}  }
	{ arb_nvclk_khz int 32 regular {pointer 0}  }
	{ arb_mem_page_miss int 32 regular {pointer 0}  }
	{ arb_mem_latency int 32 unused {pointer 0}  }
	{ arb_memory_width int 32 regular {pointer 0}  }
	{ arb_enable_video int 32 regular {pointer 0}  }
	{ arb_gr_during_vid int 32 unused {pointer 0}  }
	{ arb_pix_bpp int 32 regular {pointer 0}  }
	{ arb_mem_aligned int 32 unused {pointer 0}  }
	{ arb_enable_mp int 32 regular {pointer 0}  }
	{ arb_memory_type int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_valid", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fifo.valid","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_graphics_lwm", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fifo.graphics_lwm","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_graphics_burst_size", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fifo.graphics_burst_size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_video_lwm", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fifo.video_lwm","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_video_burst_size", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fifo.video_burst_size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_pclk_khz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.pclk_khz","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_mclk_khz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.mclk_khz","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_nvclk_khz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.nvclk_khz","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_mem_page_miss", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.mem_page_miss","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_mem_latency", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.mem_latency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_memory_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.memory_width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_enable_video", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.enable_video","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_gr_during_vid", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.gr_during_vid","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_pix_bpp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.pix_bpp","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_mem_aligned", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.mem_aligned","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_enable_mp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.enable_mp","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arb_memory_type", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arb.memory_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_valid sc_out sc_lv 32 signal 0 } 
	{ fifo_valid_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ fifo_graphics_lwm sc_out sc_lv 32 signal 1 } 
	{ fifo_graphics_lwm_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ fifo_graphics_burst_size sc_out sc_lv 32 signal 2 } 
	{ fifo_graphics_burst_size_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ fifo_video_lwm sc_out sc_lv 32 signal 3 } 
	{ fifo_video_lwm_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ fifo_video_burst_size sc_out sc_lv 32 signal 4 } 
	{ fifo_video_burst_size_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ arb_pclk_khz sc_in sc_lv 32 signal 5 } 
	{ arb_mclk_khz sc_in sc_lv 32 signal 6 } 
	{ arb_nvclk_khz sc_in sc_lv 32 signal 7 } 
	{ arb_mem_page_miss sc_in sc_lv 32 signal 8 } 
	{ arb_mem_latency sc_in sc_lv 32 signal 9 } 
	{ arb_memory_width sc_in sc_lv 32 signal 10 } 
	{ arb_enable_video sc_in sc_lv 32 signal 11 } 
	{ arb_gr_during_vid sc_in sc_lv 32 signal 12 } 
	{ arb_pix_bpp sc_in sc_lv 32 signal 13 } 
	{ arb_mem_aligned sc_in sc_lv 32 signal 14 } 
	{ arb_enable_mp sc_in sc_lv 32 signal 15 } 
	{ arb_memory_type sc_in sc_lv 32 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_valid", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_valid", "role": "default" }} , 
 	{ "name": "fifo_valid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fifo_valid", "role": "ap_vld" }} , 
 	{ "name": "fifo_graphics_lwm", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_graphics_lwm", "role": "default" }} , 
 	{ "name": "fifo_graphics_lwm_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fifo_graphics_lwm", "role": "ap_vld" }} , 
 	{ "name": "fifo_graphics_burst_size", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_graphics_burst_size", "role": "default" }} , 
 	{ "name": "fifo_graphics_burst_size_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fifo_graphics_burst_size", "role": "ap_vld" }} , 
 	{ "name": "fifo_video_lwm", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_video_lwm", "role": "default" }} , 
 	{ "name": "fifo_video_lwm_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fifo_video_lwm", "role": "ap_vld" }} , 
 	{ "name": "fifo_video_burst_size", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_video_burst_size", "role": "default" }} , 
 	{ "name": "fifo_video_burst_size_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fifo_video_burst_size", "role": "ap_vld" }} , 
 	{ "name": "arb_pclk_khz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_pclk_khz", "role": "default" }} , 
 	{ "name": "arb_mclk_khz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_mclk_khz", "role": "default" }} , 
 	{ "name": "arb_nvclk_khz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_nvclk_khz", "role": "default" }} , 
 	{ "name": "arb_mem_page_miss", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_mem_page_miss", "role": "default" }} , 
 	{ "name": "arb_mem_latency", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_mem_latency", "role": "default" }} , 
 	{ "name": "arb_memory_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_memory_width", "role": "default" }} , 
 	{ "name": "arb_enable_video", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_enable_video", "role": "default" }} , 
 	{ "name": "arb_gr_during_vid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_gr_during_vid", "role": "default" }} , 
 	{ "name": "arb_pix_bpp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_pix_bpp", "role": "default" }} , 
 	{ "name": "arb_mem_aligned", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_mem_aligned", "role": "default" }} , 
 	{ "name": "arb_enable_mp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_enable_mp", "role": "default" }} , 
 	{ "name": "arb_memory_type", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arb_memory_type", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "nv10CalcArbitration",
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
			{"Name" : "fifo_valid", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fifo_graphics_lwm", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fifo_graphics_burst_size", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fifo_video_lwm", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fifo_video_burst_size", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arb_pclk_khz", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_mclk_khz", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_nvclk_khz", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_mem_page_miss", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_mem_latency", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_memory_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_enable_video", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_gr_during_vid", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_pix_bpp", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_mem_aligned", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_enable_mp", "Type" : "None", "Direction" : "I"},
			{"Name" : "arb_memory_type", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_sdiv_32ns_32ns_32_36_seq_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_sdiv_32ns_32ns_32_36_seq_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_sdiv_29ns_32ns_32_33_seq_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_sdiv_27ns_32ns_32_31_seq_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_sdiv_26ns_32s_32_30_seq_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_sdiv_24ns_32s_32_28_seq_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_sdiv_32ns_32ns_32_36_seq_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_mul_mul_7ns_21ns_28_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nv10CalcArbitration_mul_mul_5ns_21ns_26_1_1_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nv10CalcArbitration {
		fifo_valid {Type O LastRead -1 FirstWrite 2}
		fifo_graphics_lwm {Type O LastRead -1 FirstWrite 82}
		fifo_graphics_burst_size {Type O LastRead -1 FirstWrite 82}
		fifo_video_lwm {Type O LastRead -1 FirstWrite 82}
		fifo_video_burst_size {Type O LastRead -1 FirstWrite 82}
		arb_pclk_khz {Type I LastRead 0 FirstWrite -1}
		arb_mclk_khz {Type I LastRead 2 FirstWrite -1}
		arb_nvclk_khz {Type I LastRead 2 FirstWrite -1}
		arb_mem_page_miss {Type I LastRead 2 FirstWrite -1}
		arb_mem_latency {Type I LastRead -1 FirstWrite -1}
		arb_memory_width {Type I LastRead 1 FirstWrite -1}
		arb_enable_video {Type I LastRead 1 FirstWrite -1}
		arb_gr_during_vid {Type I LastRead -1 FirstWrite -1}
		arb_pix_bpp {Type I LastRead 0 FirstWrite -1}
		arb_mem_aligned {Type I LastRead -1 FirstWrite -1}
		arb_enable_mp {Type I LastRead 1 FirstWrite -1}
		arb_memory_type {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_valid { ap_vld {  { fifo_valid out_data 1 32 }  { fifo_valid_ap_vld out_vld 1 1 } } }
	fifo_graphics_lwm { ap_vld {  { fifo_graphics_lwm out_data 1 32 }  { fifo_graphics_lwm_ap_vld out_vld 1 1 } } }
	fifo_graphics_burst_size { ap_vld {  { fifo_graphics_burst_size out_data 1 32 }  { fifo_graphics_burst_size_ap_vld out_vld 1 1 } } }
	fifo_video_lwm { ap_vld {  { fifo_video_lwm out_data 1 32 }  { fifo_video_lwm_ap_vld out_vld 1 1 } } }
	fifo_video_burst_size { ap_vld {  { fifo_video_burst_size out_data 1 32 }  { fifo_video_burst_size_ap_vld out_vld 1 1 } } }
	arb_pclk_khz { ap_none {  { arb_pclk_khz in_data 0 32 } } }
	arb_mclk_khz { ap_none {  { arb_mclk_khz in_data 0 32 } } }
	arb_nvclk_khz { ap_none {  { arb_nvclk_khz in_data 0 32 } } }
	arb_mem_page_miss { ap_none {  { arb_mem_page_miss in_data 0 32 } } }
	arb_mem_latency { ap_none {  { arb_mem_latency in_data 0 32 } } }
	arb_memory_width { ap_none {  { arb_memory_width in_data 0 32 } } }
	arb_enable_video { ap_none {  { arb_enable_video in_data 0 32 } } }
	arb_gr_during_vid { ap_none {  { arb_gr_during_vid in_data 0 32 } } }
	arb_pix_bpp { ap_none {  { arb_pix_bpp in_data 0 32 } } }
	arb_mem_aligned { ap_none {  { arb_mem_aligned in_data 0 32 } } }
	arb_enable_mp { ap_none {  { arb_enable_mp in_data 0 32 } } }
	arb_memory_type { ap_none {  { arb_memory_type in_data 0 32 } } }
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
