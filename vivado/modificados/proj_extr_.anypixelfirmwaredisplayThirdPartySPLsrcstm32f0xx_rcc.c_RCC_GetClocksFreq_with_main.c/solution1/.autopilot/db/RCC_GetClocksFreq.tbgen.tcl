set moduleName RCC_GetClocksFreq
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
set C_modelName {RCC_GetClocksFreq}
set C_modelType { void 0 }
set C_modelArgList {
	{ RCC_Clocks_SYSCLK_Frequency int 32 regular {pointer 2 volatile }  }
	{ RCC_Clocks_HCLK_Frequency int 32 regular {pointer 2 volatile }  }
	{ RCC_Clocks_PCLK_Frequency int 32 regular {pointer 2 volatile }  }
	{ RCC_Clocks_ADCCLK_Frequency int 32 regular {pointer 1 volatile }  }
	{ RCC_Clocks_CECCLK_Frequency int 32 regular {pointer 1 volatile }  }
	{ RCC_Clocks_I2C1CLK_Frequency int 32 regular {pointer 1 volatile }  }
	{ RCC_Clocks_USART1CLK_Frequency int 32 regular {pointer 1 volatile }  }
	{ RCC_Clocks_USART2CLK_Frequency int 32 regular {pointer 1 volatile }  }
	{ RCC_Clocks_USBCLK_Frequency int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "RCC_Clocks_SYSCLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.SYSCLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "RCC_Clocks_HCLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.HCLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "RCC_Clocks_PCLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.PCLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "RCC_Clocks_ADCCLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.ADCCLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "RCC_Clocks_CECCLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.CECCLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "RCC_Clocks_I2C1CLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.I2C1CLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "RCC_Clocks_USART1CLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.USART1CLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "RCC_Clocks_USART2CLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.USART2CLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "RCC_Clocks_USBCLK_Frequency", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "RCC_Clocks.USBCLK_Frequency","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ RCC_Clocks_SYSCLK_Frequency_i sc_in sc_lv 32 signal 0 } 
	{ RCC_Clocks_SYSCLK_Frequency_o sc_out sc_lv 32 signal 0 } 
	{ RCC_Clocks_SYSCLK_Frequency_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ RCC_Clocks_HCLK_Frequency_i sc_in sc_lv 32 signal 1 } 
	{ RCC_Clocks_HCLK_Frequency_o sc_out sc_lv 32 signal 1 } 
	{ RCC_Clocks_HCLK_Frequency_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ RCC_Clocks_PCLK_Frequency_i sc_in sc_lv 32 signal 2 } 
	{ RCC_Clocks_PCLK_Frequency_o sc_out sc_lv 32 signal 2 } 
	{ RCC_Clocks_PCLK_Frequency_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ RCC_Clocks_ADCCLK_Frequency sc_out sc_lv 32 signal 3 } 
	{ RCC_Clocks_ADCCLK_Frequency_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ RCC_Clocks_CECCLK_Frequency sc_out sc_lv 32 signal 4 } 
	{ RCC_Clocks_CECCLK_Frequency_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ RCC_Clocks_I2C1CLK_Frequency sc_out sc_lv 32 signal 5 } 
	{ RCC_Clocks_I2C1CLK_Frequency_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ RCC_Clocks_USART1CLK_Frequency sc_out sc_lv 32 signal 6 } 
	{ RCC_Clocks_USART1CLK_Frequency_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ RCC_Clocks_USART2CLK_Frequency sc_out sc_lv 32 signal 7 } 
	{ RCC_Clocks_USART2CLK_Frequency_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ RCC_Clocks_USBCLK_Frequency sc_out sc_lv 32 signal 8 } 
	{ RCC_Clocks_USBCLK_Frequency_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "RCC_Clocks_SYSCLK_Frequency_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_SYSCLK_Frequency", "role": "i" }} , 
 	{ "name": "RCC_Clocks_SYSCLK_Frequency_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_SYSCLK_Frequency", "role": "o" }} , 
 	{ "name": "RCC_Clocks_SYSCLK_Frequency_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_SYSCLK_Frequency", "role": "o_ap_vld" }} , 
 	{ "name": "RCC_Clocks_HCLK_Frequency_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_HCLK_Frequency", "role": "i" }} , 
 	{ "name": "RCC_Clocks_HCLK_Frequency_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_HCLK_Frequency", "role": "o" }} , 
 	{ "name": "RCC_Clocks_HCLK_Frequency_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_HCLK_Frequency", "role": "o_ap_vld" }} , 
 	{ "name": "RCC_Clocks_PCLK_Frequency_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_PCLK_Frequency", "role": "i" }} , 
 	{ "name": "RCC_Clocks_PCLK_Frequency_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_PCLK_Frequency", "role": "o" }} , 
 	{ "name": "RCC_Clocks_PCLK_Frequency_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_PCLK_Frequency", "role": "o_ap_vld" }} , 
 	{ "name": "RCC_Clocks_ADCCLK_Frequency", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_ADCCLK_Frequency", "role": "default" }} , 
 	{ "name": "RCC_Clocks_ADCCLK_Frequency_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_ADCCLK_Frequency", "role": "ap_vld" }} , 
 	{ "name": "RCC_Clocks_CECCLK_Frequency", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_CECCLK_Frequency", "role": "default" }} , 
 	{ "name": "RCC_Clocks_CECCLK_Frequency_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_CECCLK_Frequency", "role": "ap_vld" }} , 
 	{ "name": "RCC_Clocks_I2C1CLK_Frequency", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_I2C1CLK_Frequency", "role": "default" }} , 
 	{ "name": "RCC_Clocks_I2C1CLK_Frequency_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_I2C1CLK_Frequency", "role": "ap_vld" }} , 
 	{ "name": "RCC_Clocks_USART1CLK_Frequency", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_USART1CLK_Frequency", "role": "default" }} , 
 	{ "name": "RCC_Clocks_USART1CLK_Frequency_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_USART1CLK_Frequency", "role": "ap_vld" }} , 
 	{ "name": "RCC_Clocks_USART2CLK_Frequency", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_USART2CLK_Frequency", "role": "default" }} , 
 	{ "name": "RCC_Clocks_USART2CLK_Frequency_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_USART2CLK_Frequency", "role": "ap_vld" }} , 
 	{ "name": "RCC_Clocks_USBCLK_Frequency", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "RCC_Clocks_USBCLK_Frequency", "role": "default" }} , 
 	{ "name": "RCC_Clocks_USBCLK_Frequency_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "RCC_Clocks_USBCLK_Frequency", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "RCC_GetClocksFreq",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RCC_Clocks_SYSCLK_Frequency", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "RCC_Clocks_HCLK_Frequency", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "RCC_Clocks_PCLK_Frequency", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "RCC_Clocks_ADCCLK_Frequency", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "RCC_Clocks_CECCLK_Frequency", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "RCC_Clocks_I2C1CLK_Frequency", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "RCC_Clocks_USART1CLK_Frequency", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "RCC_Clocks_USART2CLK_Frequency", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "RCC_Clocks_USBCLK_Frequency", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	RCC_GetClocksFreq {
		RCC_Clocks_SYSCLK_Frequency {Type IO LastRead 5 FirstWrite 0}
		RCC_Clocks_HCLK_Frequency {Type IO LastRead 2 FirstWrite 1}
		RCC_Clocks_PCLK_Frequency {Type IO LastRead 5 FirstWrite 2}
		RCC_Clocks_ADCCLK_Frequency {Type O LastRead -1 FirstWrite 3}
		RCC_Clocks_CECCLK_Frequency {Type O LastRead -1 FirstWrite 5}
		RCC_Clocks_I2C1CLK_Frequency {Type O LastRead -1 FirstWrite 5}
		RCC_Clocks_USART1CLK_Frequency {Type O LastRead -1 FirstWrite 4}
		RCC_Clocks_USART2CLK_Frequency {Type O LastRead -1 FirstWrite 5}
		RCC_Clocks_USBCLK_Frequency {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	RCC_Clocks_SYSCLK_Frequency { ap_ovld {  { RCC_Clocks_SYSCLK_Frequency_i in_data 0 32 }  { RCC_Clocks_SYSCLK_Frequency_o out_data 1 32 }  { RCC_Clocks_SYSCLK_Frequency_o_ap_vld out_vld 1 1 } } }
	RCC_Clocks_HCLK_Frequency { ap_ovld {  { RCC_Clocks_HCLK_Frequency_i in_data 0 32 }  { RCC_Clocks_HCLK_Frequency_o out_data 1 32 }  { RCC_Clocks_HCLK_Frequency_o_ap_vld out_vld 1 1 } } }
	RCC_Clocks_PCLK_Frequency { ap_ovld {  { RCC_Clocks_PCLK_Frequency_i in_data 0 32 }  { RCC_Clocks_PCLK_Frequency_o out_data 1 32 }  { RCC_Clocks_PCLK_Frequency_o_ap_vld out_vld 1 1 } } }
	RCC_Clocks_ADCCLK_Frequency { ap_vld {  { RCC_Clocks_ADCCLK_Frequency out_data 1 32 }  { RCC_Clocks_ADCCLK_Frequency_ap_vld out_vld 1 1 } } }
	RCC_Clocks_CECCLK_Frequency { ap_vld {  { RCC_Clocks_CECCLK_Frequency out_data 1 32 }  { RCC_Clocks_CECCLK_Frequency_ap_vld out_vld 1 1 } } }
	RCC_Clocks_I2C1CLK_Frequency { ap_vld {  { RCC_Clocks_I2C1CLK_Frequency out_data 1 32 }  { RCC_Clocks_I2C1CLK_Frequency_ap_vld out_vld 1 1 } } }
	RCC_Clocks_USART1CLK_Frequency { ap_vld {  { RCC_Clocks_USART1CLK_Frequency out_data 1 32 }  { RCC_Clocks_USART1CLK_Frequency_ap_vld out_vld 1 1 } } }
	RCC_Clocks_USART2CLK_Frequency { ap_vld {  { RCC_Clocks_USART2CLK_Frequency out_data 1 32 }  { RCC_Clocks_USART2CLK_Frequency_ap_vld out_vld 1 1 } } }
	RCC_Clocks_USBCLK_Frequency { ap_vld {  { RCC_Clocks_USBCLK_Frequency out_data 1 32 }  { RCC_Clocks_USBCLK_Frequency_ap_vld out_vld 1 1 } } }
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
