set moduleName gradient_xy_calc
set isTopModule 0
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
set C_modelName {gradient_xy_calc}
set C_modelType { void 0 }
set C_modelArgList {
	{ frame float 32 regular {array 446464 { 1 1 } 1 1 }  }
	{ gradient_x float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ gradient_y float 32 regular {array 446464 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "frame", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gradient_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gradient_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ frame_address0 sc_out sc_lv 19 signal 0 } 
	{ frame_ce0 sc_out sc_logic 1 signal 0 } 
	{ frame_q0 sc_in sc_lv 32 signal 0 } 
	{ frame_address1 sc_out sc_lv 19 signal 0 } 
	{ frame_ce1 sc_out sc_logic 1 signal 0 } 
	{ frame_q1 sc_in sc_lv 32 signal 0 } 
	{ gradient_x_address0 sc_out sc_lv 19 signal 1 } 
	{ gradient_x_ce0 sc_out sc_logic 1 signal 1 } 
	{ gradient_x_we0 sc_out sc_logic 1 signal 1 } 
	{ gradient_x_d0 sc_out sc_lv 32 signal 1 } 
	{ gradient_y_address0 sc_out sc_lv 19 signal 2 } 
	{ gradient_y_ce0 sc_out sc_logic 1 signal 2 } 
	{ gradient_y_we0 sc_out sc_logic 1 signal 2 } 
	{ gradient_y_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "frame_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "frame", "role": "address0" }} , 
 	{ "name": "frame_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame", "role": "ce0" }} , 
 	{ "name": "frame_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame", "role": "q0" }} , 
 	{ "name": "frame_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "frame", "role": "address1" }} , 
 	{ "name": "frame_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame", "role": "ce1" }} , 
 	{ "name": "frame_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame", "role": "q1" }} , 
 	{ "name": "gradient_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "gradient_x", "role": "address0" }} , 
 	{ "name": "gradient_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_x", "role": "ce0" }} , 
 	{ "name": "gradient_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_x", "role": "we0" }} , 
 	{ "name": "gradient_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_x", "role": "d0" }} , 
 	{ "name": "gradient_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "gradient_y", "role": "address0" }} , 
 	{ "name": "gradient_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_y", "role": "ce0" }} , 
 	{ "name": "gradient_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_y", "role": "we0" }} , 
 	{ "name": "gradient_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_y", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "gradient_xy_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "899653", "EstimateLatencyMax" : "34154365",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "frame", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gradient_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gradient_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "GRAD_WEIGHTS", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GRAD_WEIGHTS_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_sitofp_32s_32_4_1_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gradient_xy_calc {
		frame {Type I LastRead 8 FirstWrite -1}
		gradient_x {Type O LastRead -1 FirstWrite 2}
		gradient_y {Type O LastRead -1 FirstWrite 2}
		GRAD_WEIGHTS {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "899653", "Max" : "34154365"}
	, {"Name" : "Interval", "Min" : "899653", "Max" : "34154365"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	frame { ap_memory {  { frame_address0 mem_address 1 19 }  { frame_ce0 mem_ce 1 1 }  { frame_q0 mem_dout 0 32 }  { frame_address1 MemPortADDR2 1 19 }  { frame_ce1 MemPortCE2 1 1 }  { frame_q1 MemPortDOUT2 0 32 } } }
	gradient_x { ap_memory {  { gradient_x_address0 mem_address 1 19 }  { gradient_x_ce0 mem_ce 1 1 }  { gradient_x_we0 mem_we 1 1 }  { gradient_x_d0 mem_din 1 32 } } }
	gradient_y { ap_memory {  { gradient_y_address0 mem_address 1 19 }  { gradient_y_ce0 mem_ce 1 1 }  { gradient_y_we0 mem_we 1 1 }  { gradient_y_d0 mem_din 1 32 } } }
}
