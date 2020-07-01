set moduleName tensor_weight_y
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
set C_modelName {tensor_weight_y}
set C_modelType { void 0 }
set C_modelArgList {
	{ tensor_y_val_2 float 32 regular {array 2678784 { 0 0 } 1 1 }  }
	{ out_product_val float 32 regular {array 2678784 { 1 3 } 3 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tensor_y_val_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_product_val", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tensor_y_val_2_address0 sc_out sc_lv 22 signal 0 } 
	{ tensor_y_val_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ tensor_y_val_2_we0 sc_out sc_logic 1 signal 0 } 
	{ tensor_y_val_2_d0 sc_out sc_lv 32 signal 0 } 
	{ tensor_y_val_2_address1 sc_out sc_lv 22 signal 0 } 
	{ tensor_y_val_2_ce1 sc_out sc_logic 1 signal 0 } 
	{ tensor_y_val_2_we1 sc_out sc_logic 1 signal 0 } 
	{ tensor_y_val_2_d1 sc_out sc_lv 32 signal 0 } 
	{ out_product_val_address0 sc_out sc_lv 22 signal 1 } 
	{ out_product_val_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_product_val_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tensor_y_val_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "tensor_y_val_2", "role": "address0" }} , 
 	{ "name": "tensor_y_val_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_y_val_2", "role": "ce0" }} , 
 	{ "name": "tensor_y_val_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_y_val_2", "role": "we0" }} , 
 	{ "name": "tensor_y_val_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_y_val_2", "role": "d0" }} , 
 	{ "name": "tensor_y_val_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "tensor_y_val_2", "role": "address1" }} , 
 	{ "name": "tensor_y_val_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_y_val_2", "role": "ce1" }} , 
 	{ "name": "tensor_y_val_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tensor_y_val_2", "role": "we1" }} , 
 	{ "name": "tensor_y_val_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tensor_y_val_2", "role": "d1" }} , 
 	{ "name": "out_product_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "out_product_val", "role": "address0" }} , 
 	{ "name": "out_product_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_product_val", "role": "ce0" }} , 
 	{ "name": "out_product_val_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_product_val", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "tensor_weight_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4475755", "EstimateLatencyMax" : "105160555",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tensor_y_val_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_product_val", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_val_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U41", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U42", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tensor_weight_y {
		tensor_y_val_2 {Type O LastRead -1 FirstWrite 5}
		out_product_val {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4475755", "Max" : "105160555"}
	, {"Name" : "Interval", "Min" : "4475755", "Max" : "105160555"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tensor_y_val_2 { ap_memory {  { tensor_y_val_2_address0 mem_address 1 22 }  { tensor_y_val_2_ce0 mem_ce 1 1 }  { tensor_y_val_2_we0 mem_we 1 1 }  { tensor_y_val_2_d0 mem_din 1 32 }  { tensor_y_val_2_address1 MemPortADDR2 1 22 }  { tensor_y_val_2_ce1 MemPortCE2 1 1 }  { tensor_y_val_2_we1 MemPortWE2 1 1 }  { tensor_y_val_2_d1 MemPortDIN2 1 32 } } }
	out_product_val { ap_memory {  { out_product_val_address0 mem_address 1 22 }  { out_product_val_ce0 mem_ce 1 1 }  { out_product_val_q0 mem_dout 0 32 } } }
}
