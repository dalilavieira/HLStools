set moduleName flow_calc
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
set C_modelName {flow_calc}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_x float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ output_y float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ tensor_val_0 float 32 regular {array 446464 { 1 3 } 1 1 } {global 0}  }
	{ tensor_val_1 float 32 regular {array 446464 { 1 3 } 1 1 } {global 0}  }
	{ tensor_val_3 float 32 regular {array 446464 { 1 3 } 1 1 } {global 0}  }
	{ tensor_val_5 float 32 regular {array 446464 { 1 3 } 1 1 } {global 0}  }
	{ tensor_val_4 float 32 regular {array 446464 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tensor_val_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "tensor_val_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "tensor_val_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "tensor_val_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "tensor_val_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_x_address0 sc_out sc_lv 19 signal 0 } 
	{ output_x_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_x_we0 sc_out sc_logic 1 signal 0 } 
	{ output_x_d0 sc_out sc_lv 32 signal 0 } 
	{ output_y_address0 sc_out sc_lv 19 signal 1 } 
	{ output_y_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_y_we0 sc_out sc_logic 1 signal 1 } 
	{ output_y_d0 sc_out sc_lv 32 signal 1 } 
	{ tensor_val_0_address0 sc_out sc_lv 19 signal 2 } 
	{ tensor_val_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ tensor_val_0_q0 sc_in sc_lv 32 signal 2 } 
	{ tensor_val_1_address0 sc_out sc_lv 19 signal 3 } 
	{ tensor_val_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ tensor_val_1_q0 sc_in sc_lv 32 signal 3 } 
	{ tensor_val_3_address0 sc_out sc_lv 19 signal 4 } 
	{ tensor_val_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ tensor_val_3_q0 sc_in sc_lv 32 signal 4 } 
	{ tensor_val_5_address0 sc_out sc_lv 19 signal 5 } 
	{ tensor_val_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ tensor_val_5_q0 sc_in sc_lv 32 signal 5 } 
	{ tensor_val_4_address0 sc_out sc_lv 19 signal 6 } 
	{ tensor_val_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ tensor_val_4_q0 sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "output_x", "role": "address0" }} , 
 	{ "name": "output_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_x", "role": "ce0" }} , 
 	{ "name": "output_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_x", "role": "we0" }} , 
 	{ "name": "output_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_x", "role": "d0" }} , 
 	{ "name": "output_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "output_y", "role": "address0" }} , 
 	{ "name": "output_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_y", "role": "ce0" }} , 
 	{ "name": "output_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_y", "role": "we0" }} , 
 	{ "name": "output_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_y", "role": "d0" }} , 
 	{ "name": "tensor_val_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_val_0", "role": "address0" }} , 
 	{ "name": "tensor_val_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_val_0", "role": "ce0" }} , 
 	{ "name": "tensor_val_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_val_0", "role": "q0" }} , 
 	{ "name": "tensor_val_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_val_1", "role": "address0" }} , 
 	{ "name": "tensor_val_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_val_1", "role": "ce0" }} , 
 	{ "name": "tensor_val_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_val_1", "role": "q0" }} , 
 	{ "name": "tensor_val_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_val_3", "role": "address0" }} , 
 	{ "name": "tensor_val_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_val_3", "role": "ce0" }} , 
 	{ "name": "tensor_val_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_val_3", "role": "q0" }} , 
 	{ "name": "tensor_val_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_val_5", "role": "address0" }} , 
 	{ "name": "tensor_val_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_val_5", "role": "ce0" }} , 
 	{ "name": "tensor_val_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_val_5", "role": "q0" }} , 
 	{ "name": "tensor_val_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_val_4", "role": "address0" }} , 
 	{ "name": "tensor_val_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_val_4", "role": "ce0" }} , 
 	{ "name": "tensor_val_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_val_4", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "flow_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "893801", "EstimateLatencyMax" : "8483689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tensor_val_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tensor_val_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tensor_val_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tensor_val_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tensor_val_4", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fsub_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fsub_32ns_32ns_32_4_full_dsp_1_U55", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fsub_32ns_32ns_32_4_full_dsp_1_U56", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U57", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U58", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U59", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U60", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U61", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U62", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U63", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U64", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	flow_calc {
		output_x {Type O LastRead -1 FirstWrite 2}
		output_y {Type O LastRead -1 FirstWrite 20}
		tensor_val_0 {Type I LastRead 2 FirstWrite -1}
		tensor_val_1 {Type I LastRead 2 FirstWrite -1}
		tensor_val_3 {Type I LastRead 2 FirstWrite -1}
		tensor_val_5 {Type I LastRead 2 FirstWrite -1}
		tensor_val_4 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "893801", "Max" : "8483689"}
	, {"Name" : "Interval", "Min" : "893801", "Max" : "8483689"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_x { ap_memory {  { output_x_address0 mem_address 1 19 }  { output_x_ce0 mem_ce 1 1 }  { output_x_we0 mem_we 1 1 }  { output_x_d0 mem_din 1 32 } } }
	output_y { ap_memory {  { output_y_address0 mem_address 1 19 }  { output_y_ce0 mem_ce 1 1 }  { output_y_we0 mem_we 1 1 }  { output_y_d0 mem_din 1 32 } } }
	tensor_val_0 { ap_memory {  { tensor_val_0_address0 mem_address 1 19 }  { tensor_val_0_ce0 mem_ce 1 1 }  { tensor_val_0_q0 mem_dout 0 32 } } }
	tensor_val_1 { ap_memory {  { tensor_val_1_address0 mem_address 1 19 }  { tensor_val_1_ce0 mem_ce 1 1 }  { tensor_val_1_q0 mem_dout 0 32 } } }
	tensor_val_3 { ap_memory {  { tensor_val_3_address0 mem_address 1 19 }  { tensor_val_3_ce0 mem_ce 1 1 }  { tensor_val_3_q0 mem_dout 0 32 } } }
	tensor_val_5 { ap_memory {  { tensor_val_5_address0 mem_address 1 19 }  { tensor_val_5_ce0 mem_ce 1 1 }  { tensor_val_5_q0 mem_dout 0 32 } } }
	tensor_val_4 { ap_memory {  { tensor_val_4_address0 mem_address 1 19 }  { tensor_val_4_ce0 mem_ce 1 1 }  { tensor_val_4_q0 mem_dout 0 32 } } }
}
