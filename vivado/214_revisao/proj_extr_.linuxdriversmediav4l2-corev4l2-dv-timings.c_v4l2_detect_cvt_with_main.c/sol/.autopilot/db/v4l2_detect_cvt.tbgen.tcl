set moduleName v4l2_detect_cvt
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
set C_modelName {v4l2_detect_cvt}
set C_modelType { int 32 }
set C_modelArgList {
	{ frame_height int 32 regular  }
	{ hfreq int 32 regular  }
	{ vsync int 32 regular  }
	{ active_width int 32 regular  }
	{ polarities int 32 regular  }
	{ interlaced int 32 regular  }
	{ fmt_bt_width int 32 regular {pointer 1}  }
	{ fmt_bt_height int 32 regular {pointer 1}  }
	{ fmt_bt_hfrontporch int 32 regular {pointer 1}  }
	{ fmt_bt_vfrontporch int 32 regular {pointer 1}  }
	{ fmt_bt_hsync int 32 regular {pointer 1}  }
	{ fmt_bt_vsync int 32 regular {pointer 1}  }
	{ fmt_bt_hbackporch int 32 regular {pointer 1}  }
	{ fmt_bt_vbackporch int 32 regular {pointer 1}  }
	{ fmt_bt_il_vbackporch int 32 regular {pointer 1}  }
	{ fmt_bt_il_vfrontporch int 32 regular {pointer 1}  }
	{ fmt_bt_il_vsync int 32 regular {pointer 1}  }
	{ fmt_bt_pixelclock int 32 unused {pointer 0}  }
	{ fmt_bt_flags int 32 unused {pointer 0}  }
	{ fmt_bt_standards int 32 regular {pointer 1}  }
	{ fmt_bt_interlaced int 32 regular {pointer 1}  }
	{ fmt_bt_polarities int 32 regular {pointer 1}  }
	{ fmt_type int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "frame_height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "frame_height","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "hfreq", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hfreq","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vsync", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "vsync","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "active_width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "active_width","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "polarities", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "polarities","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "interlaced", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "interlaced","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "fmt_bt_width", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.width","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_height", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.height","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_hfrontporch", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.hfrontporch","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_vfrontporch", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.vfrontporch","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_hsync", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.hsync","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_vsync", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.vsync","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_hbackporch", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.hbackporch","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_vbackporch", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.vbackporch","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_il_vbackporch", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.il_vbackporch","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_il_vfrontporch", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.il_vfrontporch","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_il_vsync", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.il_vsync","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_pixelclock", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.pixelclock","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_flags", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.flags","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_standards", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.standards","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_interlaced", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.interlaced","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_bt_polarities", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.bt.polarities","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fmt_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fmt.type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "bool","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ frame_height sc_in sc_lv 32 signal 0 } 
	{ hfreq sc_in sc_lv 32 signal 1 } 
	{ vsync sc_in sc_lv 32 signal 2 } 
	{ active_width sc_in sc_lv 32 signal 3 } 
	{ polarities sc_in sc_lv 32 signal 4 } 
	{ interlaced sc_in sc_lv 32 signal 5 } 
	{ fmt_bt_width sc_out sc_lv 32 signal 6 } 
	{ fmt_bt_width_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ fmt_bt_height sc_out sc_lv 32 signal 7 } 
	{ fmt_bt_height_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ fmt_bt_hfrontporch sc_out sc_lv 32 signal 8 } 
	{ fmt_bt_hfrontporch_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ fmt_bt_vfrontporch sc_out sc_lv 32 signal 9 } 
	{ fmt_bt_vfrontporch_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ fmt_bt_hsync sc_out sc_lv 32 signal 10 } 
	{ fmt_bt_hsync_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ fmt_bt_vsync sc_out sc_lv 32 signal 11 } 
	{ fmt_bt_vsync_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ fmt_bt_hbackporch sc_out sc_lv 32 signal 12 } 
	{ fmt_bt_hbackporch_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ fmt_bt_vbackporch sc_out sc_lv 32 signal 13 } 
	{ fmt_bt_vbackporch_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ fmt_bt_il_vbackporch sc_out sc_lv 32 signal 14 } 
	{ fmt_bt_il_vbackporch_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ fmt_bt_il_vfrontporch sc_out sc_lv 32 signal 15 } 
	{ fmt_bt_il_vfrontporch_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ fmt_bt_il_vsync sc_out sc_lv 32 signal 16 } 
	{ fmt_bt_il_vsync_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ fmt_bt_pixelclock sc_in sc_lv 32 signal 17 } 
	{ fmt_bt_flags sc_in sc_lv 32 signal 18 } 
	{ fmt_bt_standards sc_out sc_lv 32 signal 19 } 
	{ fmt_bt_standards_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ fmt_bt_interlaced sc_out sc_lv 32 signal 20 } 
	{ fmt_bt_interlaced_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ fmt_bt_polarities sc_out sc_lv 32 signal 21 } 
	{ fmt_bt_polarities_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ fmt_type sc_out sc_lv 32 signal 22 } 
	{ fmt_type_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "frame_height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_height", "role": "default" }} , 
 	{ "name": "hfreq", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hfreq", "role": "default" }} , 
 	{ "name": "vsync", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vsync", "role": "default" }} , 
 	{ "name": "active_width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "active_width", "role": "default" }} , 
 	{ "name": "polarities", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "polarities", "role": "default" }} , 
 	{ "name": "interlaced", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "interlaced", "role": "default" }} , 
 	{ "name": "fmt_bt_width", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_width", "role": "default" }} , 
 	{ "name": "fmt_bt_width_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_width", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_height", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_height", "role": "default" }} , 
 	{ "name": "fmt_bt_height_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_height", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_hfrontporch", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_hfrontporch", "role": "default" }} , 
 	{ "name": "fmt_bt_hfrontporch_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_hfrontporch", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_vfrontporch", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_vfrontporch", "role": "default" }} , 
 	{ "name": "fmt_bt_vfrontporch_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_vfrontporch", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_hsync", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_hsync", "role": "default" }} , 
 	{ "name": "fmt_bt_hsync_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_hsync", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_vsync", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_vsync", "role": "default" }} , 
 	{ "name": "fmt_bt_vsync_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_vsync", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_hbackporch", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_hbackporch", "role": "default" }} , 
 	{ "name": "fmt_bt_hbackporch_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_hbackporch", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_vbackporch", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_vbackporch", "role": "default" }} , 
 	{ "name": "fmt_bt_vbackporch_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_vbackporch", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_il_vbackporch", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_il_vbackporch", "role": "default" }} , 
 	{ "name": "fmt_bt_il_vbackporch_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_il_vbackporch", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_il_vfrontporch", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_il_vfrontporch", "role": "default" }} , 
 	{ "name": "fmt_bt_il_vfrontporch_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_il_vfrontporch", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_il_vsync", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_il_vsync", "role": "default" }} , 
 	{ "name": "fmt_bt_il_vsync_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_il_vsync", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_pixelclock", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_pixelclock", "role": "default" }} , 
 	{ "name": "fmt_bt_flags", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_flags", "role": "default" }} , 
 	{ "name": "fmt_bt_standards", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_standards", "role": "default" }} , 
 	{ "name": "fmt_bt_standards_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_standards", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_interlaced", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_interlaced", "role": "default" }} , 
 	{ "name": "fmt_bt_interlaced_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_interlaced", "role": "ap_vld" }} , 
 	{ "name": "fmt_bt_polarities", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_bt_polarities", "role": "default" }} , 
 	{ "name": "fmt_bt_polarities_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_bt_polarities", "role": "ap_vld" }} , 
 	{ "name": "fmt_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fmt_type", "role": "default" }} , 
 	{ "name": "fmt_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmt_type", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "v4l2_detect_cvt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "frame_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "hfreq", "Type" : "None", "Direction" : "I"},
			{"Name" : "vsync", "Type" : "None", "Direction" : "I"},
			{"Name" : "active_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "polarities", "Type" : "None", "Direction" : "I"},
			{"Name" : "interlaced", "Type" : "None", "Direction" : "I"},
			{"Name" : "fmt_bt_width", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_height", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_hfrontporch", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_vfrontporch", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_hsync", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_vsync", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_hbackporch", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_vbackporch", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_il_vbackporch", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_il_vfrontporch", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_il_vsync", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_pixelclock", "Type" : "None", "Direction" : "I"},
			{"Name" : "fmt_bt_flags", "Type" : "None", "Direction" : "I"},
			{"Name" : "fmt_bt_standards", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_interlaced", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_bt_polarities", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "fmt_type", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	v4l2_detect_cvt {
		frame_height {Type I LastRead 0 FirstWrite -1}
		hfreq {Type I LastRead 0 FirstWrite -1}
		vsync {Type I LastRead 0 FirstWrite -1}
		active_width {Type I LastRead 0 FirstWrite -1}
		polarities {Type I LastRead 0 FirstWrite -1}
		interlaced {Type I LastRead 0 FirstWrite -1}
		fmt_bt_width {Type O LastRead -1 FirstWrite 2}
		fmt_bt_height {Type O LastRead -1 FirstWrite 2}
		fmt_bt_hfrontporch {Type O LastRead -1 FirstWrite 2}
		fmt_bt_vfrontporch {Type O LastRead -1 FirstWrite 2}
		fmt_bt_hsync {Type O LastRead -1 FirstWrite 2}
		fmt_bt_vsync {Type O LastRead -1 FirstWrite 2}
		fmt_bt_hbackporch {Type O LastRead -1 FirstWrite 2}
		fmt_bt_vbackporch {Type O LastRead -1 FirstWrite 2}
		fmt_bt_il_vbackporch {Type O LastRead -1 FirstWrite 2}
		fmt_bt_il_vfrontporch {Type O LastRead -1 FirstWrite 2}
		fmt_bt_il_vsync {Type O LastRead -1 FirstWrite 2}
		fmt_bt_pixelclock {Type I LastRead -1 FirstWrite -1}
		fmt_bt_flags {Type I LastRead -1 FirstWrite -1}
		fmt_bt_standards {Type O LastRead -1 FirstWrite 2}
		fmt_bt_interlaced {Type O LastRead -1 FirstWrite 2}
		fmt_bt_polarities {Type O LastRead -1 FirstWrite 2}
		fmt_type {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	frame_height { ap_none {  { frame_height in_data 0 32 } } }
	hfreq { ap_none {  { hfreq in_data 0 32 } } }
	vsync { ap_none {  { vsync in_data 0 32 } } }
	active_width { ap_none {  { active_width in_data 0 32 } } }
	polarities { ap_none {  { polarities in_data 0 32 } } }
	interlaced { ap_none {  { interlaced in_data 0 32 } } }
	fmt_bt_width { ap_vld {  { fmt_bt_width out_data 1 32 }  { fmt_bt_width_ap_vld out_vld 1 1 } } }
	fmt_bt_height { ap_vld {  { fmt_bt_height out_data 1 32 }  { fmt_bt_height_ap_vld out_vld 1 1 } } }
	fmt_bt_hfrontporch { ap_vld {  { fmt_bt_hfrontporch out_data 1 32 }  { fmt_bt_hfrontporch_ap_vld out_vld 1 1 } } }
	fmt_bt_vfrontporch { ap_vld {  { fmt_bt_vfrontporch out_data 1 32 }  { fmt_bt_vfrontporch_ap_vld out_vld 1 1 } } }
	fmt_bt_hsync { ap_vld {  { fmt_bt_hsync out_data 1 32 }  { fmt_bt_hsync_ap_vld out_vld 1 1 } } }
	fmt_bt_vsync { ap_vld {  { fmt_bt_vsync out_data 1 32 }  { fmt_bt_vsync_ap_vld out_vld 1 1 } } }
	fmt_bt_hbackporch { ap_vld {  { fmt_bt_hbackporch out_data 1 32 }  { fmt_bt_hbackporch_ap_vld out_vld 1 1 } } }
	fmt_bt_vbackporch { ap_vld {  { fmt_bt_vbackporch out_data 1 32 }  { fmt_bt_vbackporch_ap_vld out_vld 1 1 } } }
	fmt_bt_il_vbackporch { ap_vld {  { fmt_bt_il_vbackporch out_data 1 32 }  { fmt_bt_il_vbackporch_ap_vld out_vld 1 1 } } }
	fmt_bt_il_vfrontporch { ap_vld {  { fmt_bt_il_vfrontporch out_data 1 32 }  { fmt_bt_il_vfrontporch_ap_vld out_vld 1 1 } } }
	fmt_bt_il_vsync { ap_vld {  { fmt_bt_il_vsync out_data 1 32 }  { fmt_bt_il_vsync_ap_vld out_vld 1 1 } } }
	fmt_bt_pixelclock { ap_none {  { fmt_bt_pixelclock in_data 0 32 } } }
	fmt_bt_flags { ap_none {  { fmt_bt_flags in_data 0 32 } } }
	fmt_bt_standards { ap_vld {  { fmt_bt_standards out_data 1 32 }  { fmt_bt_standards_ap_vld out_vld 1 1 } } }
	fmt_bt_interlaced { ap_vld {  { fmt_bt_interlaced out_data 1 32 }  { fmt_bt_interlaced_ap_vld out_vld 1 1 } } }
	fmt_bt_polarities { ap_vld {  { fmt_bt_polarities out_data 1 32 }  { fmt_bt_polarities_ap_vld out_vld 1 1 } } }
	fmt_type { ap_vld {  { fmt_type out_data 1 32 }  { fmt_type_ap_vld out_vld 1 1 } } }
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
