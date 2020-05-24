set moduleName PutMeshOnCurve
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
set C_modelName {PutMeshOnCurve}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_width int 32 regular  }
	{ in_height int 32 regular  }
	{ in_verts_xyz double 64 regular {array 1000000 { 1 3 } 3 1 }  }
	{ in_verts_st double 64 regular {array 1000000 { 1 3 } 3 1 }  }
	{ in_verts_lightmap double 64 unused {array 1000000000 { } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "in_height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.height","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "in_verts_xyz", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "in.verts.xyz","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_verts_st", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "in.verts.st","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 999,"step" : 1}]}]}]} , 
 	{ "Name" : "in_verts_lightmap", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "in.verts.lightmap","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_width sc_in sc_lv 32 signal 0 } 
	{ in_height sc_in sc_lv 32 signal 1 } 
	{ in_verts_xyz_address0 sc_out sc_lv 20 signal 2 } 
	{ in_verts_xyz_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_verts_xyz_q0 sc_in sc_lv 64 signal 2 } 
	{ in_verts_st_address0 sc_out sc_lv 20 signal 3 } 
	{ in_verts_st_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_verts_st_q0 sc_in sc_lv 64 signal 3 } 
	{ in_verts_lightmap_address0 sc_out sc_lv 30 signal 4 } 
	{ in_verts_lightmap_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_verts_lightmap_we0 sc_out sc_logic 1 signal 4 } 
	{ in_verts_lightmap_d0 sc_out sc_lv 64 signal 4 } 
	{ in_verts_lightmap_q0 sc_in sc_lv 64 signal 4 } 
	{ in_verts_lightmap_address1 sc_out sc_lv 30 signal 4 } 
	{ in_verts_lightmap_ce1 sc_out sc_logic 1 signal 4 } 
	{ in_verts_lightmap_we1 sc_out sc_logic 1 signal 4 } 
	{ in_verts_lightmap_d1 sc_out sc_lv 64 signal 4 } 
	{ in_verts_lightmap_q1 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_width", "role": "default" }} , 
 	{ "name": "in_height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_height", "role": "default" }} , 
 	{ "name": "in_verts_xyz_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "in_verts_xyz", "role": "address0" }} , 
 	{ "name": "in_verts_xyz_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_verts_xyz", "role": "ce0" }} , 
 	{ "name": "in_verts_xyz_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_verts_xyz", "role": "q0" }} , 
 	{ "name": "in_verts_st_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "in_verts_st", "role": "address0" }} , 
 	{ "name": "in_verts_st_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_verts_st", "role": "ce0" }} , 
 	{ "name": "in_verts_st_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_verts_st", "role": "q0" }} , 
 	{ "name": "in_verts_lightmap_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "address0" }} , 
 	{ "name": "in_verts_lightmap_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "ce0" }} , 
 	{ "name": "in_verts_lightmap_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "we0" }} , 
 	{ "name": "in_verts_lightmap_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "d0" }} , 
 	{ "name": "in_verts_lightmap_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "q0" }} , 
 	{ "name": "in_verts_lightmap_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "address1" }} , 
 	{ "name": "in_verts_lightmap_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "ce1" }} , 
 	{ "name": "in_verts_lightmap_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "we1" }} , 
 	{ "name": "in_verts_lightmap_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "d1" }} , 
 	{ "name": "in_verts_lightmap_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_verts_lightmap", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "PutMeshOnCurve",
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
			{"Name" : "in_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_verts_xyz", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_verts_st", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_verts_lightmap", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_verts_st_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_verts_xyz_buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PutMeshOnCurve_fadd_32ns_32ns_32_4_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PutMeshOnCurve_fptrunc_64ns_32_2_1_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PutMeshOnCurve_fptrunc_64ns_32_2_1_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PutMeshOnCurve_fpext_32ns_64_2_1_U4", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PutMeshOnCurve_dadd_64ns_64ns_64_5_full_dsp_1_U5", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PutMeshOnCurve_dadd_64ns_64ns_64_5_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PutMeshOnCurve_dmul_64ns_64ns_64_5_max_dsp_1_U7", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PutMeshOnCurve_dmul_64ns_64ns_64_5_max_dsp_1_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PutMeshOnCurve {
		in_width {Type I LastRead 0 FirstWrite -1}
		in_height {Type I LastRead 0 FirstWrite -1}
		in_verts_xyz {Type I LastRead 8 FirstWrite -1}
		in_verts_st {Type I LastRead 2 FirstWrite -1}
		in_verts_lightmap {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_width { ap_none {  { in_width in_data 0 32 } } }
	in_height { ap_none {  { in_height in_data 0 32 } } }
	in_verts_xyz { ap_memory {  { in_verts_xyz_address0 mem_address 1 20 }  { in_verts_xyz_ce0 mem_ce 1 1 }  { in_verts_xyz_q0 mem_dout 0 64 } } }
	in_verts_st { ap_memory {  { in_verts_st_address0 mem_address 1 20 }  { in_verts_st_ce0 mem_ce 1 1 }  { in_verts_st_q0 mem_dout 0 64 } } }
	in_verts_lightmap { ap_memory {  { in_verts_lightmap_address0 mem_address 1 30 }  { in_verts_lightmap_ce0 mem_ce 1 1 }  { in_verts_lightmap_we0 mem_we 1 1 }  { in_verts_lightmap_d0 mem_din 1 64 }  { in_verts_lightmap_q0 mem_dout 0 64 }  { in_verts_lightmap_address1 MemPortADDR2 1 30 }  { in_verts_lightmap_ce1 MemPortCE2 1 1 }  { in_verts_lightmap_we1 MemPortWE2 1 1 }  { in_verts_lightmap_d1 MemPortDIN2 1 64 }  { in_verts_lightmap_q1 MemPortDOUT2 0 64 } } }
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
	{ in_verts_xyz 3 }
	{ in_verts_st 3 }
}
