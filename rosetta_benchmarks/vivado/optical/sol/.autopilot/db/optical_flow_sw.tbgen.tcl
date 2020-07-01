set moduleName optical_flow_sw
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
set C_modelName {optical_flow_sw}
set C_modelType { void 0 }
set C_modelArgList {
	{ frame0 float 32 regular {array 446464 { 1 3 } 1 1 }  }
	{ frame1 float 32 regular {array 446464 { 1 3 } 1 1 }  }
	{ frame2 float 32 regular {array 446464 { 1 1 } 1 1 }  }
	{ frame3 float 32 regular {array 446464 { 1 3 } 1 1 }  }
	{ frame4 float 32 regular {array 446464 { 1 3 } 1 1 }  }
	{ outputs_x float 32 regular {array 446464 { 0 3 } 0 1 }  }
	{ outputs_y float 32 regular {array 446464 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "frame0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "frame0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 435,"step" : 1},{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "frame1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "frame1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 435,"step" : 1},{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "frame2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "frame2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 435,"step" : 1},{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "frame3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "frame3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 435,"step" : 1},{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "frame4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "frame4","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 435,"step" : 1},{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "outputs_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outputs.x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 435,"step" : 1},{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "outputs_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outputs.y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 435,"step" : 1},{"low" : 0,"up" : 1023,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ frame0_address0 sc_out sc_lv 19 signal 0 } 
	{ frame0_ce0 sc_out sc_logic 1 signal 0 } 
	{ frame0_q0 sc_in sc_lv 32 signal 0 } 
	{ frame1_address0 sc_out sc_lv 19 signal 1 } 
	{ frame1_ce0 sc_out sc_logic 1 signal 1 } 
	{ frame1_q0 sc_in sc_lv 32 signal 1 } 
	{ frame2_address0 sc_out sc_lv 19 signal 2 } 
	{ frame2_ce0 sc_out sc_logic 1 signal 2 } 
	{ frame2_q0 sc_in sc_lv 32 signal 2 } 
	{ frame2_address1 sc_out sc_lv 19 signal 2 } 
	{ frame2_ce1 sc_out sc_logic 1 signal 2 } 
	{ frame2_q1 sc_in sc_lv 32 signal 2 } 
	{ frame3_address0 sc_out sc_lv 19 signal 3 } 
	{ frame3_ce0 sc_out sc_logic 1 signal 3 } 
	{ frame3_q0 sc_in sc_lv 32 signal 3 } 
	{ frame4_address0 sc_out sc_lv 19 signal 4 } 
	{ frame4_ce0 sc_out sc_logic 1 signal 4 } 
	{ frame4_q0 sc_in sc_lv 32 signal 4 } 
	{ outputs_x_address0 sc_out sc_lv 19 signal 5 } 
	{ outputs_x_ce0 sc_out sc_logic 1 signal 5 } 
	{ outputs_x_we0 sc_out sc_logic 1 signal 5 } 
	{ outputs_x_d0 sc_out sc_lv 32 signal 5 } 
	{ outputs_y_address0 sc_out sc_lv 19 signal 6 } 
	{ outputs_y_ce0 sc_out sc_logic 1 signal 6 } 
	{ outputs_y_we0 sc_out sc_logic 1 signal 6 } 
	{ outputs_y_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "frame0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "frame0", "role": "address0" }} , 
 	{ "name": "frame0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame0", "role": "ce0" }} , 
 	{ "name": "frame0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame0", "role": "q0" }} , 
 	{ "name": "frame1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "frame1", "role": "address0" }} , 
 	{ "name": "frame1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame1", "role": "ce0" }} , 
 	{ "name": "frame1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame1", "role": "q0" }} , 
 	{ "name": "frame2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "frame2", "role": "address0" }} , 
 	{ "name": "frame2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame2", "role": "ce0" }} , 
 	{ "name": "frame2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame2", "role": "q0" }} , 
 	{ "name": "frame2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "frame2", "role": "address1" }} , 
 	{ "name": "frame2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame2", "role": "ce1" }} , 
 	{ "name": "frame2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame2", "role": "q1" }} , 
 	{ "name": "frame3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "frame3", "role": "address0" }} , 
 	{ "name": "frame3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame3", "role": "ce0" }} , 
 	{ "name": "frame3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame3", "role": "q0" }} , 
 	{ "name": "frame4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "frame4", "role": "address0" }} , 
 	{ "name": "frame4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame4", "role": "ce0" }} , 
 	{ "name": "frame4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame4", "role": "q0" }} , 
 	{ "name": "outputs_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "outputs_x", "role": "address0" }} , 
 	{ "name": "outputs_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs_x", "role": "ce0" }} , 
 	{ "name": "outputs_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs_x", "role": "we0" }} , 
 	{ "name": "outputs_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputs_x", "role": "d0" }} , 
 	{ "name": "outputs_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "outputs_y", "role": "address0" }} , 
 	{ "name": "outputs_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs_y", "role": "ce0" }} , 
 	{ "name": "outputs_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs_y", "role": "we0" }} , 
 	{ "name": "outputs_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputs_y", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "29", "38", "46", "54", "58", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "optical_flow_sw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30842229", "EstimateLatencyMax" : "329007633",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_flow_calc_fu_338"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gradient_xy_calc_fu_356"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gradient_weight_y_fu_368"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_gradient_weight_x_fu_386"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_tensor_weight_y_fu_404"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_tensor_weight_x_fu_412"}],
		"Port" : [
			{"Name" : "frame0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "frame1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "frame2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_gradient_xy_calc_fu_356", "Port" : "frame"}]},
			{"Name" : "frame3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "frame4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outputs_x", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_flow_calc_fu_338", "Port" : "output_x"}]},
			{"Name" : "outputs_y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_flow_calc_fu_338", "Port" : "output_y"}]},
			{"Name" : "GRAD_WEIGHTS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_gradient_xy_calc_fu_356", "Port" : "GRAD_WEIGHTS"}]},
			{"Name" : "gradient_x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_gradient_xy_calc_fu_356", "Port" : "gradient_x"},
					{"ID" : "38", "SubInstance" : "grp_gradient_weight_y_fu_368", "Port" : "gradient_x"}]},
			{"Name" : "gradient_y", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_gradient_xy_calc_fu_356", "Port" : "gradient_y"},
					{"ID" : "38", "SubInstance" : "grp_gradient_weight_y_fu_368", "Port" : "gradient_y"}]},
			{"Name" : "gradient_z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_gradient_weight_y_fu_368", "Port" : "gradient_z"}]},
			{"Name" : "GRAD_FILTER", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_gradient_weight_x_fu_386", "Port" : "GRAD_FILTER"},
					{"ID" : "38", "SubInstance" : "grp_gradient_weight_y_fu_368", "Port" : "GRAD_FILTER"}]},
			{"Name" : "y_filtered_x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_gradient_weight_x_fu_386", "Port" : "y_filtered_x"},
					{"ID" : "38", "SubInstance" : "grp_gradient_weight_y_fu_368", "Port" : "filt_grad_x"}]},
			{"Name" : "y_filtered_y", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_gradient_weight_x_fu_386", "Port" : "y_filtered_y"},
					{"ID" : "38", "SubInstance" : "grp_gradient_weight_y_fu_368", "Port" : "filt_grad_y"}]},
			{"Name" : "y_filtered_z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_gradient_weight_x_fu_386", "Port" : "y_filtered_z"},
					{"ID" : "38", "SubInstance" : "grp_gradient_weight_y_fu_368", "Port" : "filt_grad_z"}]},
			{"Name" : "filtered_gradient_x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_gradient_weight_x_fu_386", "Port" : "filt_grad_x"}]},
			{"Name" : "filtered_gradient_y", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_gradient_weight_x_fu_386", "Port" : "filt_grad_y"}]},
			{"Name" : "filtered_gradient_z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_gradient_weight_x_fu_386", "Port" : "filt_grad_z"}]},
			{"Name" : "out_product_val", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_tensor_weight_y_fu_404", "Port" : "out_product_val"}]},
			{"Name" : "tensor_y_val", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_tensor_weight_y_fu_404", "Port" : "tensor_y_val_2"},
					{"ID" : "58", "SubInstance" : "grp_tensor_weight_x_fu_412", "Port" : "tensor_y_val"}]},
			{"Name" : "tensor_val_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_tensor_weight_x_fu_412", "Port" : "tensor_0_val"},
					{"ID" : "17", "SubInstance" : "grp_flow_calc_fu_338", "Port" : "tensor_val_0"}]},
			{"Name" : "tensor_val_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_tensor_weight_x_fu_412", "Port" : "tensor_1_val"},
					{"ID" : "17", "SubInstance" : "grp_flow_calc_fu_338", "Port" : "tensor_val_1"}]},
			{"Name" : "tensor_val_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_tensor_weight_x_fu_412", "Port" : "tensor_3_val"},
					{"ID" : "17", "SubInstance" : "grp_flow_calc_fu_338", "Port" : "tensor_val_3"}]},
			{"Name" : "tensor_val_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_tensor_weight_x_fu_412", "Port" : "tensor_4_val"},
					{"ID" : "17", "SubInstance" : "grp_flow_calc_fu_338", "Port" : "tensor_val_4"}]},
			{"Name" : "tensor_val_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_tensor_weight_x_fu_412", "Port" : "tensor_5_val"},
					{"ID" : "17", "SubInstance" : "grp_flow_calc_fu_338", "Port" : "tensor_val_5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradient_x_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradient_y_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradient_z_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_filtered_x_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_filtered_y_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_filtered_z_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtered_gradient_x_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtered_gradient_y_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtered_gradient_z_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_product_val_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tensor_y_val_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tensor_val_0_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tensor_val_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tensor_val_3_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tensor_val_4_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tensor_val_5_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338", "Parent" : "0", "Child" : ["18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
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
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fsub_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fsub_32ns_32ns_32_4_full_dsp_1_U55", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fsub_32ns_32ns_32_4_full_dsp_1_U56", "Parent" : "17"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U57", "Parent" : "17"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U58", "Parent" : "17"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U59", "Parent" : "17"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U60", "Parent" : "17"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U61", "Parent" : "17"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U62", "Parent" : "17"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U63", "Parent" : "17"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flow_calc_fu_338.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U64", "Parent" : "17"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37"],
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
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356.GRAD_WEIGHTS_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U1", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U2", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U3", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U4", "Parent" : "29"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U5", "Parent" : "29"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U6", "Parent" : "29"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_xy_calc_fu_356.optical_flow_sw_sitofp_32s_32_4_1_U7", "Parent" : "29"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_y_fu_368", "Parent" : "0", "Child" : ["39", "40", "41", "42", "43", "44", "45"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_y_fu_368.GRAD_FILTER_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_y_fu_368.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U16", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_y_fu_368.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U17", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_y_fu_368.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U18", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_y_fu_368.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U19", "Parent" : "38"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_y_fu_368.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U20", "Parent" : "38"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_y_fu_368.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U21", "Parent" : "38"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_x_fu_386", "Parent" : "0", "Child" : ["47", "48", "49", "50", "51", "52", "53"],
		"CDFG" : "gradient_weight_x",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "896417", "EstimateLatencyMax" : "29106053",
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
			{"Name" : "y_filtered_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "GRAD_FILTER", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_filtered_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_filtered_z", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_x_fu_386.GRAD_FILTER_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_x_fu_386.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U29", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_x_fu_386.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U30", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_x_fu_386.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U31", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_x_fu_386.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U32", "Parent" : "46"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_x_fu_386.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U33", "Parent" : "46"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gradient_weight_x_fu_386.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U34", "Parent" : "46"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tensor_weight_y_fu_404", "Parent" : "0", "Child" : ["55", "56", "57"],
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
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tensor_weight_y_fu_404.acc_val_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tensor_weight_y_fu_404.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U41", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tensor_weight_y_fu_404.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U42", "Parent" : "54"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tensor_weight_x_fu_412", "Parent" : "0", "Child" : ["59", "60", "61"],
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
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tensor_weight_x_fu_412.acc_val_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tensor_weight_x_fu_412.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U46", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tensor_weight_x_fu_412.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U47", "Parent" : "58"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fadd_32ns_32ns_32_4_full_dsp_1_U73", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U74", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U75", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U76", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fmul_32ns_32ns_32_3_max_dsp_1_U77", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.optical_flow_sw_fdiv_32ns_32ns_32_9_1_U78", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	optical_flow_sw {
		frame0 {Type I LastRead 3 FirstWrite -1}
		frame1 {Type I LastRead 4 FirstWrite -1}
		frame2 {Type I LastRead 9 FirstWrite -1}
		frame3 {Type I LastRead 12 FirstWrite -1}
		frame4 {Type I LastRead 19 FirstWrite -1}
		outputs_x {Type O LastRead -1 FirstWrite 2}
		outputs_y {Type O LastRead -1 FirstWrite 20}
		GRAD_WEIGHTS {Type I LastRead -1 FirstWrite -1}
		gradient_x {Type IO LastRead -1 FirstWrite -1}
		gradient_y {Type IO LastRead -1 FirstWrite -1}
		gradient_z {Type IO LastRead -1 FirstWrite -1}
		GRAD_FILTER {Type I LastRead -1 FirstWrite -1}
		y_filtered_x {Type IO LastRead -1 FirstWrite -1}
		y_filtered_y {Type IO LastRead -1 FirstWrite -1}
		y_filtered_z {Type IO LastRead -1 FirstWrite -1}
		filtered_gradient_x {Type IO LastRead -1 FirstWrite -1}
		filtered_gradient_y {Type IO LastRead -1 FirstWrite -1}
		filtered_gradient_z {Type IO LastRead -1 FirstWrite -1}
		out_product_val {Type IO LastRead -1 FirstWrite -1}
		tensor_y_val {Type IO LastRead -1 FirstWrite -1}
		tensor_val_0 {Type IO LastRead -1 FirstWrite -1}
		tensor_val_1 {Type IO LastRead -1 FirstWrite -1}
		tensor_val_3 {Type IO LastRead -1 FirstWrite -1}
		tensor_val_4 {Type IO LastRead -1 FirstWrite -1}
		tensor_val_5 {Type IO LastRead -1 FirstWrite -1}}
	flow_calc {
		output_x {Type O LastRead -1 FirstWrite 2}
		output_y {Type O LastRead -1 FirstWrite 20}
		tensor_val_0 {Type I LastRead 2 FirstWrite -1}
		tensor_val_1 {Type I LastRead 2 FirstWrite -1}
		tensor_val_3 {Type I LastRead 2 FirstWrite -1}
		tensor_val_5 {Type I LastRead 2 FirstWrite -1}
		tensor_val_4 {Type I LastRead 2 FirstWrite -1}}
	gradient_xy_calc {
		frame {Type I LastRead 8 FirstWrite -1}
		gradient_x {Type O LastRead -1 FirstWrite 2}
		gradient_y {Type O LastRead -1 FirstWrite 2}
		GRAD_WEIGHTS {Type I LastRead -1 FirstWrite -1}}
	gradient_weight_y {
		filt_grad_x {Type O LastRead -1 FirstWrite 2}
		filt_grad_y {Type O LastRead -1 FirstWrite 2}
		filt_grad_z {Type O LastRead -1 FirstWrite 2}
		gradient_x {Type I LastRead 3 FirstWrite -1}
		GRAD_FILTER {Type I LastRead -1 FirstWrite -1}
		gradient_y {Type I LastRead 3 FirstWrite -1}
		gradient_z {Type I LastRead 3 FirstWrite -1}}
	gradient_weight_x {
		filt_grad_x {Type O LastRead -1 FirstWrite 2}
		filt_grad_y {Type O LastRead -1 FirstWrite 2}
		filt_grad_z {Type O LastRead -1 FirstWrite 2}
		y_filtered_x {Type I LastRead 3 FirstWrite -1}
		GRAD_FILTER {Type I LastRead -1 FirstWrite -1}
		y_filtered_y {Type I LastRead 3 FirstWrite -1}
		y_filtered_z {Type I LastRead 3 FirstWrite -1}}
	tensor_weight_y {
		tensor_y_val_2 {Type O LastRead -1 FirstWrite 5}
		out_product_val {Type I LastRead 5 FirstWrite -1}}
	tensor_weight_x {
		tensor_0_val {Type O LastRead -1 FirstWrite 6}
		tensor_1_val {Type O LastRead -1 FirstWrite 6}
		tensor_3_val {Type O LastRead -1 FirstWrite 6}
		tensor_4_val {Type O LastRead -1 FirstWrite 7}
		tensor_5_val {Type O LastRead -1 FirstWrite 7}
		tensor_y_val {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30842229", "Max" : "329007633"}
	, {"Name" : "Interval", "Min" : "30842230", "Max" : "329007634"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	frame0 { ap_memory {  { frame0_address0 mem_address 1 19 }  { frame0_ce0 mem_ce 1 1 }  { frame0_q0 mem_dout 0 32 } } }
	frame1 { ap_memory {  { frame1_address0 mem_address 1 19 }  { frame1_ce0 mem_ce 1 1 }  { frame1_q0 mem_dout 0 32 } } }
	frame2 { ap_memory {  { frame2_address0 mem_address 1 19 }  { frame2_ce0 mem_ce 1 1 }  { frame2_q0 mem_dout 0 32 }  { frame2_address1 MemPortADDR2 1 19 }  { frame2_ce1 MemPortCE2 1 1 }  { frame2_q1 MemPortDOUT2 0 32 } } }
	frame3 { ap_memory {  { frame3_address0 mem_address 1 19 }  { frame3_ce0 mem_ce 1 1 }  { frame3_q0 mem_dout 0 32 } } }
	frame4 { ap_memory {  { frame4_address0 mem_address 1 19 }  { frame4_ce0 mem_ce 1 1 }  { frame4_q0 mem_dout 0 32 } } }
	outputs_x { ap_memory {  { outputs_x_address0 mem_address 1 19 }  { outputs_x_ce0 mem_ce 1 1 }  { outputs_x_we0 mem_we 1 1 }  { outputs_x_d0 mem_din 1 32 } } }
	outputs_y { ap_memory {  { outputs_y_address0 mem_address 1 19 }  { outputs_y_ce0 mem_ce 1 1 }  { outputs_y_we0 mem_we 1 1 }  { outputs_y_d0 mem_din 1 32 } } }
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
