set moduleName rendering_sw
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
set C_modelName {rendering_sw}
set C_modelType { void 0 }
set C_modelArgList {
	{ triangle_3ds_x0 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ triangle_3ds_y0 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ triangle_3ds_z0 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ triangle_3ds_x1 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ triangle_3ds_y1 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ triangle_3ds_z1 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ triangle_3ds_x2 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ triangle_3ds_y2 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ triangle_3ds_z2 int 8 regular {array 3192 { 1 3 } 1 1 }  }
	{ output_r int 8 regular {array 65536 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "triangle_3ds_x0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.x0","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "triangle_3ds_y0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.y0","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "triangle_3ds_z0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.z0","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "triangle_3ds_x1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.x1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "triangle_3ds_y1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.y1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "triangle_3ds_z1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.z1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "triangle_3ds_x2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.x2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "triangle_3ds_y2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.y2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "triangle_3ds_z2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "triangle_3ds.z2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3191,"step" : 1}]}]}]} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 255,"step" : 1},{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ triangle_3ds_x0_address0 sc_out sc_lv 12 signal 0 } 
	{ triangle_3ds_x0_ce0 sc_out sc_logic 1 signal 0 } 
	{ triangle_3ds_x0_q0 sc_in sc_lv 8 signal 0 } 
	{ triangle_3ds_y0_address0 sc_out sc_lv 12 signal 1 } 
	{ triangle_3ds_y0_ce0 sc_out sc_logic 1 signal 1 } 
	{ triangle_3ds_y0_q0 sc_in sc_lv 8 signal 1 } 
	{ triangle_3ds_z0_address0 sc_out sc_lv 12 signal 2 } 
	{ triangle_3ds_z0_ce0 sc_out sc_logic 1 signal 2 } 
	{ triangle_3ds_z0_q0 sc_in sc_lv 8 signal 2 } 
	{ triangle_3ds_x1_address0 sc_out sc_lv 12 signal 3 } 
	{ triangle_3ds_x1_ce0 sc_out sc_logic 1 signal 3 } 
	{ triangle_3ds_x1_q0 sc_in sc_lv 8 signal 3 } 
	{ triangle_3ds_y1_address0 sc_out sc_lv 12 signal 4 } 
	{ triangle_3ds_y1_ce0 sc_out sc_logic 1 signal 4 } 
	{ triangle_3ds_y1_q0 sc_in sc_lv 8 signal 4 } 
	{ triangle_3ds_z1_address0 sc_out sc_lv 12 signal 5 } 
	{ triangle_3ds_z1_ce0 sc_out sc_logic 1 signal 5 } 
	{ triangle_3ds_z1_q0 sc_in sc_lv 8 signal 5 } 
	{ triangle_3ds_x2_address0 sc_out sc_lv 12 signal 6 } 
	{ triangle_3ds_x2_ce0 sc_out sc_logic 1 signal 6 } 
	{ triangle_3ds_x2_q0 sc_in sc_lv 8 signal 6 } 
	{ triangle_3ds_y2_address0 sc_out sc_lv 12 signal 7 } 
	{ triangle_3ds_y2_ce0 sc_out sc_logic 1 signal 7 } 
	{ triangle_3ds_y2_q0 sc_in sc_lv 8 signal 7 } 
	{ triangle_3ds_z2_address0 sc_out sc_lv 12 signal 8 } 
	{ triangle_3ds_z2_ce0 sc_out sc_logic 1 signal 8 } 
	{ triangle_3ds_z2_q0 sc_in sc_lv 8 signal 8 } 
	{ output_r_address0 sc_out sc_lv 16 signal 9 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 9 } 
	{ output_r_we0 sc_out sc_logic 1 signal 9 } 
	{ output_r_d0 sc_out sc_lv 8 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "triangle_3ds_x0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_x0", "role": "address0" }} , 
 	{ "name": "triangle_3ds_x0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_x0", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_x0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_x0", "role": "q0" }} , 
 	{ "name": "triangle_3ds_y0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_y0", "role": "address0" }} , 
 	{ "name": "triangle_3ds_y0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_y0", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_y0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_y0", "role": "q0" }} , 
 	{ "name": "triangle_3ds_z0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_z0", "role": "address0" }} , 
 	{ "name": "triangle_3ds_z0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_z0", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_z0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_z0", "role": "q0" }} , 
 	{ "name": "triangle_3ds_x1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_x1", "role": "address0" }} , 
 	{ "name": "triangle_3ds_x1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_x1", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_x1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_x1", "role": "q0" }} , 
 	{ "name": "triangle_3ds_y1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_y1", "role": "address0" }} , 
 	{ "name": "triangle_3ds_y1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_y1", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_y1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_y1", "role": "q0" }} , 
 	{ "name": "triangle_3ds_z1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_z1", "role": "address0" }} , 
 	{ "name": "triangle_3ds_z1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_z1", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_z1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_z1", "role": "q0" }} , 
 	{ "name": "triangle_3ds_x2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_x2", "role": "address0" }} , 
 	{ "name": "triangle_3ds_x2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_x2", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_x2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_x2", "role": "q0" }} , 
 	{ "name": "triangle_3ds_y2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_y2", "role": "address0" }} , 
 	{ "name": "triangle_3ds_y2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_y2", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_y2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_y2", "role": "q0" }} , 
 	{ "name": "triangle_3ds_z2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "triangle_3ds_z2", "role": "address0" }} , 
 	{ "name": "triangle_3ds_z2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "triangle_3ds_z2", "role": "ce0" }} , 
 	{ "name": "triangle_3ds_z2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "triangle_3ds_z2", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "rendering_sw",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_zculling_fu_343"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_coloringFB_fu_360"}],
		"Port" : [
			{"Name" : "triangle_3ds_x0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_y0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_x1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_y1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_x2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_y2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "triangle_3ds_z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_coloringFB_fu_360", "Port" : "frame_buffer"}]},
			{"Name" : "z_buffer", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_zculling_fu_343", "Port" : "z_buffer"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fragment_x_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fragment_y_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fragment_z_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fragment_color_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_x_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_y_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pixels_color_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_zculling_fu_343", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "zculling",
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
			{"Name" : "counter", "Type" : "None", "Direction" : "I"},
			{"Name" : "fragments_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fragments_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fragments_z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fragments_color", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixels_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pixels_color", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_buffer", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zculling_fu_343.z_buffer_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_coloringFB_fu_360", "Parent" : "0",
		"CDFG" : "coloringFB",
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
			{"Name" : "counter", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_pixels", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixels_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pixels_color", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "frame_buffer", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rendering_sw_urem_16ns_8ns_8_20_seq_1_U17", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rendering_sw_udiv_16ns_8ns_8_20_seq_1_U18", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rendering_sw_mac_mulsub_9s_9s_18ns_18_1_1_U19", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rendering_sw_mac_mulsub_9s_9s_18ns_18_1_1_U20", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rendering_sw_mac_mulsub_9s_9s_18ns_18_1_1_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rendering_sw {
		triangle_3ds_x0 {Type I LastRead 1 FirstWrite -1}
		triangle_3ds_y0 {Type I LastRead 1 FirstWrite -1}
		triangle_3ds_z0 {Type I LastRead 1 FirstWrite -1}
		triangle_3ds_x1 {Type I LastRead 1 FirstWrite -1}
		triangle_3ds_y1 {Type I LastRead 1 FirstWrite -1}
		triangle_3ds_z1 {Type I LastRead 1 FirstWrite -1}
		triangle_3ds_x2 {Type I LastRead 1 FirstWrite -1}
		triangle_3ds_y2 {Type I LastRead 1 FirstWrite -1}
		triangle_3ds_z2 {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}
		z_buffer {Type IO LastRead -1 FirstWrite -1}}
	zculling {
		counter {Type I LastRead 0 FirstWrite -1}
		fragments_x {Type I LastRead 2 FirstWrite -1}
		fragments_y {Type I LastRead 2 FirstWrite -1}
		fragments_z {Type I LastRead 3 FirstWrite -1}
		fragments_color {Type I LastRead 4 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		pixels_x {Type O LastRead -1 FirstWrite 5}
		pixels_y {Type O LastRead -1 FirstWrite 5}
		pixels_color {Type O LastRead -1 FirstWrite 5}
		z_buffer {Type IO LastRead -1 FirstWrite -1}}
	coloringFB {
		counter {Type I LastRead 0 FirstWrite -1}
		size_pixels {Type I LastRead 0 FirstWrite -1}
		pixels_x {Type I LastRead 2 FirstWrite -1}
		pixels_y {Type I LastRead 2 FirstWrite -1}
		pixels_color {Type I LastRead 2 FirstWrite -1}
		frame_buffer {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	triangle_3ds_x0 { ap_memory {  { triangle_3ds_x0_address0 mem_address 1 12 }  { triangle_3ds_x0_ce0 mem_ce 1 1 }  { triangle_3ds_x0_q0 mem_dout 0 8 } } }
	triangle_3ds_y0 { ap_memory {  { triangle_3ds_y0_address0 mem_address 1 12 }  { triangle_3ds_y0_ce0 mem_ce 1 1 }  { triangle_3ds_y0_q0 mem_dout 0 8 } } }
	triangle_3ds_z0 { ap_memory {  { triangle_3ds_z0_address0 mem_address 1 12 }  { triangle_3ds_z0_ce0 mem_ce 1 1 }  { triangle_3ds_z0_q0 mem_dout 0 8 } } }
	triangle_3ds_x1 { ap_memory {  { triangle_3ds_x1_address0 mem_address 1 12 }  { triangle_3ds_x1_ce0 mem_ce 1 1 }  { triangle_3ds_x1_q0 mem_dout 0 8 } } }
	triangle_3ds_y1 { ap_memory {  { triangle_3ds_y1_address0 mem_address 1 12 }  { triangle_3ds_y1_ce0 mem_ce 1 1 }  { triangle_3ds_y1_q0 mem_dout 0 8 } } }
	triangle_3ds_z1 { ap_memory {  { triangle_3ds_z1_address0 mem_address 1 12 }  { triangle_3ds_z1_ce0 mem_ce 1 1 }  { triangle_3ds_z1_q0 mem_dout 0 8 } } }
	triangle_3ds_x2 { ap_memory {  { triangle_3ds_x2_address0 mem_address 1 12 }  { triangle_3ds_x2_ce0 mem_ce 1 1 }  { triangle_3ds_x2_q0 mem_dout 0 8 } } }
	triangle_3ds_y2 { ap_memory {  { triangle_3ds_y2_address0 mem_address 1 12 }  { triangle_3ds_y2_ce0 mem_ce 1 1 }  { triangle_3ds_y2_q0 mem_dout 0 8 } } }
	triangle_3ds_z2 { ap_memory {  { triangle_3ds_z2_address0 mem_address 1 12 }  { triangle_3ds_z2_ce0 mem_ce 1 1 }  { triangle_3ds_z2_q0 mem_dout 0 8 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 16 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
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
