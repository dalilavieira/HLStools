set moduleName ip22zilog_convert_to_zs
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
set C_modelName {ip22zilog_convert_to_zs}
set C_modelType { void 0 }
set C_modelArgList {
	{ up_curregs int 32 regular {array 100 { 2 2 } 1 1 }  }
	{ up_parity_mask int 32 regular {pointer 1 volatile }  }
	{ up_port_read_status_mask int 32 regular {pointer 1 volatile }  }
	{ up_port_ignore_status_mask int 32 regular {pointer 1 volatile }  }
	{ cflag int 32 unused  }
	{ iflag int 32 unused  }
	{ brg int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "up_curregs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "up.curregs","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "up_parity_mask", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "up.parity_mask","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "up_port_read_status_mask", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "up.port.read_status_mask","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "up_port_ignore_status_mask", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "up.port.ignore_status_mask","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "cflag", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cflag","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "iflag", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "iflag","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "brg", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "brg","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ up_curregs_address0 sc_out sc_lv 7 signal 0 } 
	{ up_curregs_ce0 sc_out sc_logic 1 signal 0 } 
	{ up_curregs_we0 sc_out sc_logic 1 signal 0 } 
	{ up_curregs_d0 sc_out sc_lv 32 signal 0 } 
	{ up_curregs_q0 sc_in sc_lv 32 signal 0 } 
	{ up_curregs_address1 sc_out sc_lv 7 signal 0 } 
	{ up_curregs_ce1 sc_out sc_logic 1 signal 0 } 
	{ up_curregs_we1 sc_out sc_logic 1 signal 0 } 
	{ up_curregs_d1 sc_out sc_lv 32 signal 0 } 
	{ up_curregs_q1 sc_in sc_lv 32 signal 0 } 
	{ up_parity_mask sc_out sc_lv 32 signal 1 } 
	{ up_parity_mask_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ up_port_read_status_mask sc_out sc_lv 32 signal 2 } 
	{ up_port_read_status_mask_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ up_port_ignore_status_mask sc_out sc_lv 32 signal 3 } 
	{ up_port_ignore_status_mask_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ cflag sc_in sc_lv 32 signal 4 } 
	{ iflag sc_in sc_lv 32 signal 5 } 
	{ brg sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "up_curregs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "up_curregs", "role": "address0" }} , 
 	{ "name": "up_curregs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "up_curregs", "role": "ce0" }} , 
 	{ "name": "up_curregs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "up_curregs", "role": "we0" }} , 
 	{ "name": "up_curregs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "up_curregs", "role": "d0" }} , 
 	{ "name": "up_curregs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "up_curregs", "role": "q0" }} , 
 	{ "name": "up_curregs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "up_curregs", "role": "address1" }} , 
 	{ "name": "up_curregs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "up_curregs", "role": "ce1" }} , 
 	{ "name": "up_curregs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "up_curregs", "role": "we1" }} , 
 	{ "name": "up_curregs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "up_curregs", "role": "d1" }} , 
 	{ "name": "up_curregs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "up_curregs", "role": "q1" }} , 
 	{ "name": "up_parity_mask", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "up_parity_mask", "role": "default" }} , 
 	{ "name": "up_parity_mask_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "up_parity_mask", "role": "ap_vld" }} , 
 	{ "name": "up_port_read_status_mask", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "up_port_read_status_mask", "role": "default" }} , 
 	{ "name": "up_port_read_status_mask_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "up_port_read_status_mask", "role": "ap_vld" }} , 
 	{ "name": "up_port_ignore_status_mask", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "up_port_ignore_status_mask", "role": "default" }} , 
 	{ "name": "up_port_ignore_status_mask_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "up_port_ignore_status_mask", "role": "ap_vld" }} , 
 	{ "name": "cflag", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cflag", "role": "default" }} , 
 	{ "name": "iflag", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iflag", "role": "default" }} , 
 	{ "name": "brg", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brg", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ip22zilog_convert_to_zs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "up_curregs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "up_parity_mask", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "up_port_read_status_mask", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "up_port_ignore_status_mask", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "cflag", "Type" : "None", "Direction" : "I"},
			{"Name" : "iflag", "Type" : "None", "Direction" : "I"},
			{"Name" : "brg", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	ip22zilog_convert_to_zs {
		up_curregs {Type IO LastRead 11 FirstWrite 0}
		up_parity_mask {Type O LastRead -1 FirstWrite 12}
		up_port_read_status_mask {Type O LastRead -1 FirstWrite 12}
		up_port_ignore_status_mask {Type O LastRead -1 FirstWrite 11}
		cflag {Type I LastRead -1 FirstWrite -1}
		iflag {Type I LastRead -1 FirstWrite -1}
		brg {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "13"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	up_curregs { ap_memory {  { up_curregs_address0 mem_address 1 7 }  { up_curregs_ce0 mem_ce 1 1 }  { up_curregs_we0 mem_we 1 1 }  { up_curregs_d0 mem_din 1 32 }  { up_curregs_q0 mem_dout 0 32 }  { up_curregs_address1 MemPortADDR2 1 7 }  { up_curregs_ce1 MemPortCE2 1 1 }  { up_curregs_we1 MemPortWE2 1 1 }  { up_curregs_d1 MemPortDIN2 1 32 }  { up_curregs_q1 MemPortDOUT2 0 32 } } }
	up_parity_mask { ap_vld {  { up_parity_mask out_data 1 32 }  { up_parity_mask_ap_vld out_vld 1 1 } } }
	up_port_read_status_mask { ap_vld {  { up_port_read_status_mask out_data 1 32 }  { up_port_read_status_mask_ap_vld out_vld 1 1 } } }
	up_port_ignore_status_mask { ap_vld {  { up_port_ignore_status_mask out_data 1 32 }  { up_port_ignore_status_mask_ap_vld out_vld 1 1 } } }
	cflag { ap_none {  { cflag in_data 0 32 } } }
	iflag { ap_none {  { iflag in_data 0 32 } } }
	brg { ap_none {  { brg in_data 0 32 } } }
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
