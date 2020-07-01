set moduleName gradient_weight_y
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
set C_modelName {gradient_weight_y}
set C_modelType { void 0 }
set C_modelArgList {
	{ filt_grad_x float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ filt_grad_y float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ filt_grad_z float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ gradient_x float 32 regular {array 446464 { 1 3 } 1 1 } {global 0}  }
	{ gradient_y float 32 regular {array 446464 { 1 3 } 1 1 } {global 0}  }
	{ gradient_z float 32 regular {array 446464 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "filt_grad_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "filt_grad_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "filt_grad_z", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gradient_x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "gradient_y", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "gradient_z", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ filt_grad_x_address0 sc_out sc_lv 19 signal 0 } 
	{ filt_grad_x_ce0 sc_out sc_logic 1 signal 0 } 
	{ filt_grad_x_we0 sc_out sc_logic 1 signal 0 } 
	{ filt_grad_x_d0 sc_out sc_lv 32 signal 0 } 
	{ filt_grad_y_address0 sc_out sc_lv 19 signal 1 } 
	{ filt_grad_y_ce0 sc_out sc_logic 1 signal 1 } 
	{ filt_grad_y_we0 sc_out sc_logic 1 signal 1 } 
	{ filt_grad_y_d0 sc_out sc_lv 32 signal 1 } 
	{ filt_grad_z_address0 sc_out sc_lv 19 signal 2 } 
	{ filt_grad_z_ce0 sc_out sc_logic 1 signal 2 } 
	{ filt_grad_z_we0 sc_out sc_logic 1 signal 2 } 
	{ filt_grad_z_d0 sc_out sc_lv 32 signal 2 } 
	{ gradient_x_address0 sc_out sc_lv 19 signal 3 } 
	{ gradient_x_ce0 sc_out sc_logic 1 signal 3 } 
	{ gradient_x_q0 sc_in sc_lv 32 signal 3 } 
	{ gradient_y_address0 sc_out sc_lv 19 signal 4 } 
	{ gradient_y_ce0 sc_out sc_logic 1 signal 4 } 
	{ gradient_y_q0 sc_in sc_lv 32 signal 4 } 
	{ gradient_z_address0 sc_out sc_lv 19 signal 5 } 
	{ gradient_z_ce0 sc_out sc_logic 1 signal 5 } 
	{ gradient_z_q0 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "filt_grad_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "filt_grad_x", "role": "address0" }} , 
 	{ "name": "filt_grad_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filt_grad_x", "role": "ce0" }} , 
 	{ "name": "filt_grad_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filt_grad_x", "role": "we0" }} , 
 	{ "name": "filt_grad_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filt_grad_x", "role": "d0" }} , 
 	{ "name": "filt_grad_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "filt_grad_y", "role": "address0" }} , 
 	{ "name": "filt_grad_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filt_grad_y", "role": "ce0" }} , 
 	{ "name": "filt_grad_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filt_grad_y", "role": "we0" }} , 
 	{ "name": "filt_grad_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filt_grad_y", "role": "d0" }} , 
 	{ "name": "filt_grad_z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "filt_grad_z", "role": "address0" }} , 
 	{ "name": "filt_grad_z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filt_grad_z", "role": "ce0" }} , 
 	{ "name": "filt_grad_z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filt_grad_z", "role": "we0" }} , 
 	{ "name": "filt_grad_z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filt_grad_z", "role": "d0" }} , 
 	{ "name": "gradient_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "gradient_x", "role": "address0" }} , 
 	{ "name": "gradient_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_x", "role": "ce0" }} , 
 	{ "name": "gradient_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_x", "role": "q0" }} , 
 	{ "name": "gradient_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "gradient_y", "role": "address0" }} , 
 	{ "name": "gradient_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_y", "role": "ce0" }} , 
 	{ "name": "gradient_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_y", "role": "q0" }} , 
 	{ "name": "gradient_z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "gradient_z", "role": "address0" }} , 
 	{ "name": "gradient_z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_z", "role": "ce0" }} , 
 	{ "name": "gradient_z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_z", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "gradient_weight_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "899951", "EstimateLatencyMax" : "29220719",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "filt_grad_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "filt_grad_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "filt_grad_z", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gradient_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "GRAD_FILTER", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gradient_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gradient_z", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GRAD_FILTER_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U16", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U17", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U18", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U19", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U20", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gradient_weight_y {
		filt_grad_x {Type O LastRead -1 FirstWrite 2}
		filt_grad_y {Type O LastRead -1 FirstWrite 2}
		filt_grad_z {Type O LastRead -1 FirstWrite 2}
		gradient_x {Type I LastRead 3 FirstWrite -1}
		GRAD_FILTER {Type I LastRead -1 FirstWrite -1}
		gradient_y {Type I LastRead 3 FirstWrite -1}
		gradient_z {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "899951", "Max" : "29220719"}
	, {"Name" : "Interval", "Min" : "899951", "Max" : "29220719"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	filt_grad_x { ap_memory {  { filt_grad_x_address0 mem_address 1 19 }  { filt_grad_x_ce0 mem_ce 1 1 }  { filt_grad_x_we0 mem_we 1 1 }  { filt_grad_x_d0 mem_din 1 32 } } }
	filt_grad_y { ap_memory {  { filt_grad_y_address0 mem_address 1 19 }  { filt_grad_y_ce0 mem_ce 1 1 }  { filt_grad_y_we0 mem_we 1 1 }  { filt_grad_y_d0 mem_din 1 32 } } }
	filt_grad_z { ap_memory {  { filt_grad_z_address0 mem_address 1 19 }  { filt_grad_z_ce0 mem_ce 1 1 }  { filt_grad_z_we0 mem_we 1 1 }  { filt_grad_z_d0 mem_din 1 32 } } }
	gradient_x { ap_memory {  { gradient_x_address0 mem_address 1 19 }  { gradient_x_ce0 mem_ce 1 1 }  { gradient_x_q0 mem_dout 0 32 } } }
	gradient_y { ap_memory {  { gradient_y_address0 mem_address 1 19 }  { gradient_y_ce0 mem_ce 1 1 }  { gradient_y_q0 mem_dout 0 32 } } }
	gradient_z { ap_memory {  { gradient_z_address0 mem_address 1 19 }  { gradient_z_ce0 mem_ce 1 1 }  { gradient_z_q0 mem_dout 0 32 } } }
}
