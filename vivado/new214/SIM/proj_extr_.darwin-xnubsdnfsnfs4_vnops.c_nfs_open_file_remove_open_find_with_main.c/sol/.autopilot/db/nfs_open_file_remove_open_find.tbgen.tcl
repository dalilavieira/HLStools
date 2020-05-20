set moduleName nfs_open_file_remove_open_find
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nfs_open_file_remove_open_find}
set C_modelType { void 0 }
set C_modelArgList {
	{ nofp_nof_access int 32 regular {pointer 0 volatile }  }
	{ nofp_nof_deny int 32 regular {pointer 0 volatile }  }
	{ nofp_nof_r int 32 unused {pointer 0}  }
	{ nofp_nof_d_r int 32 regular {pointer 0 volatile }  }
	{ nofp_nof_rw int 32 unused {pointer 0}  }
	{ nofp_nof_d_rw int 32 unused {pointer 0}  }
	{ nofp_nof_r_dw int 32 unused {pointer 0}  }
	{ nofp_nof_d_r_dw int 32 unused {pointer 0}  }
	{ nofp_nof_rw_dw int 32 unused {pointer 0}  }
	{ nofp_nof_d_rw_dw int 32 unused {pointer 0}  }
	{ nofp_nof_r_drw int 32 unused {pointer 0}  }
	{ nofp_nof_d_r_drw int 32 regular {pointer 0 volatile }  }
	{ nofp_nof_w int 32 unused {pointer 0}  }
	{ nofp_nof_d_w int 32 unused {pointer 0}  }
	{ nofp_nof_w_dw int 32 unused {pointer 0}  }
	{ nofp_nof_d_w_dw int 32 unused {pointer 0}  }
	{ nofp_nof_w_drw int 32 unused {pointer 0}  }
	{ nofp_nof_d_w_drw int 32 unused {pointer 0}  }
	{ nofp_nof_rw_drw int 32 unused {pointer 0}  }
	{ nofp_nof_d_rw_drw int 32 unused {pointer 0}  }
	{ accessMode int 32 regular  }
	{ denyMode int 32 regular  }
	{ newAccessMode int 32 regular {pointer 1 volatile }  }
	{ newDenyMode int 32 regular {pointer 1 volatile }  }
	{ delegated int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nofp_nof_access", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_access","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_deny", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_deny","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_r","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_r","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_rw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_rw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_rw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_rw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_r_dw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_r_dw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_r_dw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_r_dw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_rw_dw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_rw_dw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_rw_dw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_rw_dw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_r_drw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_r_drw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_r_drw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_r_drw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_w","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_w_dw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_w_dw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_w_dw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_w_dw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_w_drw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_w_drw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_w_drw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_w_drw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_rw_drw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_rw_drw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "nofp_nof_d_rw_drw", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nofp.nof_d_rw_drw","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "accessMode", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "accessMode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "denyMode", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "denyMode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "newAccessMode", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "newAccessMode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "newDenyMode", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "newDenyMode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "delegated", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "delegated","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nofp_nof_access sc_in sc_lv 32 signal 0 } 
	{ nofp_nof_deny sc_in sc_lv 32 signal 1 } 
	{ nofp_nof_r sc_in sc_lv 32 signal 2 } 
	{ nofp_nof_d_r sc_in sc_lv 32 signal 3 } 
	{ nofp_nof_rw sc_in sc_lv 32 signal 4 } 
	{ nofp_nof_d_rw sc_in sc_lv 32 signal 5 } 
	{ nofp_nof_r_dw sc_in sc_lv 32 signal 6 } 
	{ nofp_nof_d_r_dw sc_in sc_lv 32 signal 7 } 
	{ nofp_nof_rw_dw sc_in sc_lv 32 signal 8 } 
	{ nofp_nof_d_rw_dw sc_in sc_lv 32 signal 9 } 
	{ nofp_nof_r_drw sc_in sc_lv 32 signal 10 } 
	{ nofp_nof_d_r_drw sc_in sc_lv 32 signal 11 } 
	{ nofp_nof_w sc_in sc_lv 32 signal 12 } 
	{ nofp_nof_d_w sc_in sc_lv 32 signal 13 } 
	{ nofp_nof_w_dw sc_in sc_lv 32 signal 14 } 
	{ nofp_nof_d_w_dw sc_in sc_lv 32 signal 15 } 
	{ nofp_nof_w_drw sc_in sc_lv 32 signal 16 } 
	{ nofp_nof_d_w_drw sc_in sc_lv 32 signal 17 } 
	{ nofp_nof_rw_drw sc_in sc_lv 32 signal 18 } 
	{ nofp_nof_d_rw_drw sc_in sc_lv 32 signal 19 } 
	{ accessMode sc_in sc_lv 32 signal 20 } 
	{ denyMode sc_in sc_lv 32 signal 21 } 
	{ newAccessMode sc_out sc_lv 32 signal 22 } 
	{ newAccessMode_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ newDenyMode sc_out sc_lv 32 signal 23 } 
	{ newDenyMode_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ delegated sc_out sc_lv 32 signal 24 } 
	{ delegated_ap_vld sc_out sc_logic 1 outvld 24 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nofp_nof_access", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_access", "role": "default" }} , 
 	{ "name": "nofp_nof_deny", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_deny", "role": "default" }} , 
 	{ "name": "nofp_nof_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_r", "role": "default" }} , 
 	{ "name": "nofp_nof_d_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_r", "role": "default" }} , 
 	{ "name": "nofp_nof_rw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_rw", "role": "default" }} , 
 	{ "name": "nofp_nof_d_rw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_rw", "role": "default" }} , 
 	{ "name": "nofp_nof_r_dw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_r_dw", "role": "default" }} , 
 	{ "name": "nofp_nof_d_r_dw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_r_dw", "role": "default" }} , 
 	{ "name": "nofp_nof_rw_dw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_rw_dw", "role": "default" }} , 
 	{ "name": "nofp_nof_d_rw_dw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_rw_dw", "role": "default" }} , 
 	{ "name": "nofp_nof_r_drw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_r_drw", "role": "default" }} , 
 	{ "name": "nofp_nof_d_r_drw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_r_drw", "role": "default" }} , 
 	{ "name": "nofp_nof_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_w", "role": "default" }} , 
 	{ "name": "nofp_nof_d_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_w", "role": "default" }} , 
 	{ "name": "nofp_nof_w_dw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_w_dw", "role": "default" }} , 
 	{ "name": "nofp_nof_d_w_dw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_w_dw", "role": "default" }} , 
 	{ "name": "nofp_nof_w_drw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_w_drw", "role": "default" }} , 
 	{ "name": "nofp_nof_d_w_drw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_w_drw", "role": "default" }} , 
 	{ "name": "nofp_nof_rw_drw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_rw_drw", "role": "default" }} , 
 	{ "name": "nofp_nof_d_rw_drw", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nofp_nof_d_rw_drw", "role": "default" }} , 
 	{ "name": "accessMode", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "accessMode", "role": "default" }} , 
 	{ "name": "denyMode", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "denyMode", "role": "default" }} , 
 	{ "name": "newAccessMode", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "newAccessMode", "role": "default" }} , 
 	{ "name": "newAccessMode_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "newAccessMode", "role": "ap_vld" }} , 
 	{ "name": "newDenyMode", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "newDenyMode", "role": "default" }} , 
 	{ "name": "newDenyMode_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "newDenyMode", "role": "ap_vld" }} , 
 	{ "name": "delegated", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delegated", "role": "default" }} , 
 	{ "name": "delegated_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "delegated", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "nfs_open_file_remove_open_find",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "nofp_nof_access", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_deny", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_rw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_rw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_r_dw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_r_dw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_rw_dw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_rw_dw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_r_drw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_r_drw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_w_dw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_w_dw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_w_drw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_w_drw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_rw_drw", "Type" : "None", "Direction" : "I"},
			{"Name" : "nofp_nof_d_rw_drw", "Type" : "None", "Direction" : "I"},
			{"Name" : "accessMode", "Type" : "None", "Direction" : "I"},
			{"Name" : "denyMode", "Type" : "None", "Direction" : "I"},
			{"Name" : "newAccessMode", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "newDenyMode", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "delegated", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	nfs_open_file_remove_open_find {
		nofp_nof_access {Type I LastRead 0 FirstWrite -1}
		nofp_nof_deny {Type I LastRead 0 FirstWrite -1}
		nofp_nof_r {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_r {Type I LastRead 0 FirstWrite -1}
		nofp_nof_rw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_rw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_r_dw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_r_dw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_rw_dw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_rw_dw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_r_drw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_r_drw {Type I LastRead 0 FirstWrite -1}
		nofp_nof_w {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_w {Type I LastRead -1 FirstWrite -1}
		nofp_nof_w_dw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_w_dw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_w_drw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_w_drw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_rw_drw {Type I LastRead -1 FirstWrite -1}
		nofp_nof_d_rw_drw {Type I LastRead -1 FirstWrite -1}
		accessMode {Type I LastRead 0 FirstWrite -1}
		denyMode {Type I LastRead 0 FirstWrite -1}
		newAccessMode {Type O LastRead -1 FirstWrite 0}
		newDenyMode {Type O LastRead -1 FirstWrite 0}
		delegated {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nofp_nof_access { ap_none {  { nofp_nof_access in_data 0 32 } } }
	nofp_nof_deny { ap_none {  { nofp_nof_deny in_data 0 32 } } }
	nofp_nof_r { ap_none {  { nofp_nof_r in_data 0 32 } } }
	nofp_nof_d_r { ap_none {  { nofp_nof_d_r in_data 0 32 } } }
	nofp_nof_rw { ap_none {  { nofp_nof_rw in_data 0 32 } } }
	nofp_nof_d_rw { ap_none {  { nofp_nof_d_rw in_data 0 32 } } }
	nofp_nof_r_dw { ap_none {  { nofp_nof_r_dw in_data 0 32 } } }
	nofp_nof_d_r_dw { ap_none {  { nofp_nof_d_r_dw in_data 0 32 } } }
	nofp_nof_rw_dw { ap_none {  { nofp_nof_rw_dw in_data 0 32 } } }
	nofp_nof_d_rw_dw { ap_none {  { nofp_nof_d_rw_dw in_data 0 32 } } }
	nofp_nof_r_drw { ap_none {  { nofp_nof_r_drw in_data 0 32 } } }
	nofp_nof_d_r_drw { ap_none {  { nofp_nof_d_r_drw in_data 0 32 } } }
	nofp_nof_w { ap_none {  { nofp_nof_w in_data 0 32 } } }
	nofp_nof_d_w { ap_none {  { nofp_nof_d_w in_data 0 32 } } }
	nofp_nof_w_dw { ap_none {  { nofp_nof_w_dw in_data 0 32 } } }
	nofp_nof_d_w_dw { ap_none {  { nofp_nof_d_w_dw in_data 0 32 } } }
	nofp_nof_w_drw { ap_none {  { nofp_nof_w_drw in_data 0 32 } } }
	nofp_nof_d_w_drw { ap_none {  { nofp_nof_d_w_drw in_data 0 32 } } }
	nofp_nof_rw_drw { ap_none {  { nofp_nof_rw_drw in_data 0 32 } } }
	nofp_nof_d_rw_drw { ap_none {  { nofp_nof_d_rw_drw in_data 0 32 } } }
	accessMode { ap_none {  { accessMode in_data 0 32 } } }
	denyMode { ap_none {  { denyMode in_data 0 32 } } }
	newAccessMode { ap_vld {  { newAccessMode out_data 1 32 }  { newAccessMode_ap_vld out_vld 1 1 } } }
	newDenyMode { ap_vld {  { newDenyMode out_data 1 32 }  { newDenyMode_ap_vld out_vld 1 1 } } }
	delegated { ap_vld {  { delegated out_data 1 32 }  { delegated_ap_vld out_vld 1 1 } } }
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
