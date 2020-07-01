set moduleName tensor_weight_x
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
set C_modelName {tensor_weight_x}
set C_modelType { void 0 }
set C_modelArgList {
	{ tensor_0_val float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ tensor_1_val float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ tensor_3_val float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ tensor_4_val float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ tensor_5_val float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ tensor_y_val float 32 regular {array 2678784 { 1 3 } 3 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tensor_0_val", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tensor_1_val", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tensor_3_val", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tensor_4_val", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tensor_5_val", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tensor_y_val", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tensor_0_val_address0 sc_out sc_lv 19 signal 0 } 
	{ tensor_0_val_ce0 sc_out sc_logic 1 signal 0 } 
	{ tensor_0_val_we0 sc_out sc_logic 1 signal 0 } 
	{ tensor_0_val_d0 sc_out sc_lv 32 signal 0 } 
	{ tensor_1_val_address0 sc_out sc_lv 19 signal 1 } 
	{ tensor_1_val_ce0 sc_out sc_logic 1 signal 1 } 
	{ tensor_1_val_we0 sc_out sc_logic 1 signal 1 } 
	{ tensor_1_val_d0 sc_out sc_lv 32 signal 1 } 
	{ tensor_3_val_address0 sc_out sc_lv 19 signal 2 } 
	{ tensor_3_val_ce0 sc_out sc_logic 1 signal 2 } 
	{ tensor_3_val_we0 sc_out sc_logic 1 signal 2 } 
	{ tensor_3_val_d0 sc_out sc_lv 32 signal 2 } 
	{ tensor_4_val_address0 sc_out sc_lv 19 signal 3 } 
	{ tensor_4_val_ce0 sc_out sc_logic 1 signal 3 } 
	{ tensor_4_val_we0 sc_out sc_logic 1 signal 3 } 
	{ tensor_4_val_d0 sc_out sc_lv 32 signal 3 } 
	{ tensor_5_val_address0 sc_out sc_lv 19 signal 4 } 
	{ tensor_5_val_ce0 sc_out sc_logic 1 signal 4 } 
	{ tensor_5_val_we0 sc_out sc_logic 1 signal 4 } 
	{ tensor_5_val_d0 sc_out sc_lv 32 signal 4 } 
	{ tensor_y_val_address0 sc_out sc_lv 22 signal 5 } 
	{ tensor_y_val_ce0 sc_out sc_logic 1 signal 5 } 
	{ tensor_y_val_q0 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tensor_0_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_0_val", "role": "address0" }} , 
 	{ "name": "tensor_0_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_0_val", "role": "ce0" }} , 
 	{ "name": "tensor_0_val_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_0_val", "role": "we0" }} , 
 	{ "name": "tensor_0_val_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_0_val", "role": "d0" }} , 
 	{ "name": "tensor_1_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_1_val", "role": "address0" }} , 
 	{ "name": "tensor_1_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_1_val", "role": "ce0" }} , 
 	{ "name": "tensor_1_val_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_1_val", "role": "we0" }} , 
 	{ "name": "tensor_1_val_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_1_val", "role": "d0" }} , 
 	{ "name": "tensor_3_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_3_val", "role": "address0" }} , 
 	{ "name": "tensor_3_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_3_val", "role": "ce0" }} , 
 	{ "name": "tensor_3_val_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_3_val", "role": "we0" }} , 
 	{ "name": "tensor_3_val_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_3_val", "role": "d0" }} , 
 	{ "name": "tensor_4_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_4_val", "role": "address0" }} , 
 	{ "name": "tensor_4_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_4_val", "role": "ce0" }} , 
 	{ "name": "tensor_4_val_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_4_val", "role": "we0" }} , 
 	{ "name": "tensor_4_val_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_4_val", "role": "d0" }} , 
 	{ "name": "tensor_5_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tensor_5_val", "role": "address0" }} , 
 	{ "name": "tensor_5_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_5_val", "role": "ce0" }} , 
 	{ "name": "tensor_5_val_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_5_val", "role": "we0" }} , 
 	{ "name": "tensor_5_val_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_5_val", "role": "d0" }} , 
 	{ "name": "tensor_y_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "tensor_y_val", "role": "address0" }} , 
 	{ "name": "tensor_y_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_y_val", "role": "ce0" }} , 
 	{ "name": "tensor_y_val_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_y_val", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "tensor_weight_x",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4469873", "EstimateLatencyMax" : "104575473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tensor_0_val", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tensor_1_val", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tensor_3_val", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tensor_4_val", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tensor_5_val", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tensor_y_val", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_val_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U46", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U47", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tensor_weight_x {
		tensor_0_val {Type O LastRead -1 FirstWrite 6}
		tensor_1_val {Type O LastRead -1 FirstWrite 6}
		tensor_3_val {Type O LastRead -1 FirstWrite 6}
		tensor_4_val {Type O LastRead -1 FirstWrite 7}
		tensor_5_val {Type O LastRead -1 FirstWrite 7}
		tensor_y_val {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4469873", "Max" : "104575473"}
	, {"Name" : "Interval", "Min" : "4469873", "Max" : "104575473"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tensor_0_val { ap_memory {  { tensor_0_val_address0 mem_address 1 19 }  { tensor_0_val_ce0 mem_ce 1 1 }  { tensor_0_val_we0 mem_we 1 1 }  { tensor_0_val_d0 mem_din 1 32 } } }
	tensor_1_val { ap_memory {  { tensor_1_val_address0 mem_address 1 19 }  { tensor_1_val_ce0 mem_ce 1 1 }  { tensor_1_val_we0 mem_we 1 1 }  { tensor_1_val_d0 mem_din 1 32 } } }
	tensor_3_val { ap_memory {  { tensor_3_val_address0 mem_address 1 19 }  { tensor_3_val_ce0 mem_ce 1 1 }  { tensor_3_val_we0 mem_we 1 1 }  { tensor_3_val_d0 mem_din 1 32 } } }
	tensor_4_val { ap_memory {  { tensor_4_val_address0 mem_address 1 19 }  { tensor_4_val_ce0 mem_ce 1 1 }  { tensor_4_val_we0 mem_we 1 1 }  { tensor_4_val_d0 mem_din 1 32 } } }
	tensor_5_val { ap_memory {  { tensor_5_val_address0 mem_address 1 19 }  { tensor_5_val_ce0 mem_ce 1 1 }  { tensor_5_val_we0 mem_we 1 1 }  { tensor_5_val_d0 mem_din 1 32 } } }
	tensor_y_val { ap_memory {  { tensor_y_val_address0 mem_address 1 22 }  { tensor_y_val_ce0 mem_ce 1 1 }  { tensor_y_val_q0 mem_dout 0 32 } } }
}
