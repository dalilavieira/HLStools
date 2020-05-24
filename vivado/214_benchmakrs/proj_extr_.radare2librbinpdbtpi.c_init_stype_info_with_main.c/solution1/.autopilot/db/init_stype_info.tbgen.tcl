set moduleName init_stype_info
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
set C_modelName {init_stype_info}
set C_modelType { void 0 }
set C_modelArgList {
	{ type_info_leaf_type int 32 unused {pointer 0}  }
	{ type_info_get_print_type int 32 regular {pointer 1}  }
	{ type_info_get_mlist int 32 regular {pointer 1}  }
	{ type_info_get_index int 32 regular {pointer 1}  }
	{ type_info_get_arglist int 32 regular {pointer 1}  }
	{ type_info_get_this_type int 32 regular {pointer 1}  }
	{ type_info_get_class_type int 32 regular {pointer 1}  }
	{ type_info_get_return_type int 32 regular {pointer 1}  }
	{ type_info_get_utype int 32 regular {pointer 1}  }
	{ type_info_get_vshape int 32 regular {pointer 1}  }
	{ type_info_get_derived int 32 regular {pointer 1}  }
	{ type_info_get_base_type int 32 regular {pointer 1}  }
	{ type_info_get_index_type int 32 regular {pointer 1}  }
	{ type_info_get_element_type int 32 regular {pointer 1}  }
	{ type_info_get_arg_type int 32 regular {pointer 1}  }
	{ type_info_get_members int 32 regular {pointer 1}  }
	{ type_info_get_name_len int 32 regular {pointer 1}  }
	{ type_info_get_val int 32 regular {pointer 1}  }
	{ type_info_get_name int 32 regular {pointer 1}  }
	{ type_info_free_s int 32 regular {pointer 1}  }
	{ type_info_is_fwdref int 32 regular {pointer 1}  }
	{ type_info_get_modified_type int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "type_info_leaf_type", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.leaf_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_print_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_print_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_mlist", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_mlist","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_index", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_index","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_arglist", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_arglist","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_this_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_this_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_class_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_class_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_return_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_return_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_utype", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_utype","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_vshape", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_vshape","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_derived", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_derived","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_base_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_base_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_index_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_index_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_element_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_element_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_arg_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_arg_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_members", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_members","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_name_len", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_name_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_val", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_val","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_name", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_name","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_free_s", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.free_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_is_fwdref", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.is_fwdref","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_modified_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_modified_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ type_info_leaf_type sc_in sc_lv 32 signal 0 } 
	{ type_info_get_print_type sc_out sc_lv 32 signal 1 } 
	{ type_info_get_print_type_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ type_info_get_mlist sc_out sc_lv 32 signal 2 } 
	{ type_info_get_mlist_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ type_info_get_index sc_out sc_lv 32 signal 3 } 
	{ type_info_get_index_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ type_info_get_arglist sc_out sc_lv 32 signal 4 } 
	{ type_info_get_arglist_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ type_info_get_this_type sc_out sc_lv 32 signal 5 } 
	{ type_info_get_this_type_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ type_info_get_class_type sc_out sc_lv 32 signal 6 } 
	{ type_info_get_class_type_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ type_info_get_return_type sc_out sc_lv 32 signal 7 } 
	{ type_info_get_return_type_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ type_info_get_utype sc_out sc_lv 32 signal 8 } 
	{ type_info_get_utype_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ type_info_get_vshape sc_out sc_lv 32 signal 9 } 
	{ type_info_get_vshape_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ type_info_get_derived sc_out sc_lv 32 signal 10 } 
	{ type_info_get_derived_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ type_info_get_base_type sc_out sc_lv 32 signal 11 } 
	{ type_info_get_base_type_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ type_info_get_index_type sc_out sc_lv 32 signal 12 } 
	{ type_info_get_index_type_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ type_info_get_element_type sc_out sc_lv 32 signal 13 } 
	{ type_info_get_element_type_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ type_info_get_arg_type sc_out sc_lv 32 signal 14 } 
	{ type_info_get_arg_type_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ type_info_get_members sc_out sc_lv 32 signal 15 } 
	{ type_info_get_members_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ type_info_get_name_len sc_out sc_lv 32 signal 16 } 
	{ type_info_get_name_len_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ type_info_get_val sc_out sc_lv 32 signal 17 } 
	{ type_info_get_val_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ type_info_get_name sc_out sc_lv 32 signal 18 } 
	{ type_info_get_name_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ type_info_free_s sc_out sc_lv 32 signal 19 } 
	{ type_info_free_s_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ type_info_is_fwdref sc_out sc_lv 32 signal 20 } 
	{ type_info_is_fwdref_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ type_info_get_modified_type sc_out sc_lv 32 signal 21 } 
	{ type_info_get_modified_type_ap_vld sc_out sc_logic 1 outvld 21 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "type_info_leaf_type", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_leaf_type", "role": "default" }} , 
 	{ "name": "type_info_get_print_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_print_type", "role": "default" }} , 
 	{ "name": "type_info_get_print_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_print_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_mlist", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_mlist", "role": "default" }} , 
 	{ "name": "type_info_get_mlist_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_mlist", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_index", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_index", "role": "default" }} , 
 	{ "name": "type_info_get_index_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_index", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_arglist", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_arglist", "role": "default" }} , 
 	{ "name": "type_info_get_arglist_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_arglist", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_this_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_this_type", "role": "default" }} , 
 	{ "name": "type_info_get_this_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_this_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_class_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_class_type", "role": "default" }} , 
 	{ "name": "type_info_get_class_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_class_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_return_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_return_type", "role": "default" }} , 
 	{ "name": "type_info_get_return_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_return_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_utype", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_utype", "role": "default" }} , 
 	{ "name": "type_info_get_utype_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_utype", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_vshape", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_vshape", "role": "default" }} , 
 	{ "name": "type_info_get_vshape_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_vshape", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_derived", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_derived", "role": "default" }} , 
 	{ "name": "type_info_get_derived_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_derived", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_base_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_base_type", "role": "default" }} , 
 	{ "name": "type_info_get_base_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_base_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_index_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_index_type", "role": "default" }} , 
 	{ "name": "type_info_get_index_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_index_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_element_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_element_type", "role": "default" }} , 
 	{ "name": "type_info_get_element_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_element_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_arg_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_arg_type", "role": "default" }} , 
 	{ "name": "type_info_get_arg_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_arg_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_members", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_members", "role": "default" }} , 
 	{ "name": "type_info_get_members_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_members", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_name_len", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_name_len", "role": "default" }} , 
 	{ "name": "type_info_get_name_len_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_name_len", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_val", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_val", "role": "default" }} , 
 	{ "name": "type_info_get_val_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_val", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_name", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_name", "role": "default" }} , 
 	{ "name": "type_info_get_name_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_name", "role": "ap_vld" }} , 
 	{ "name": "type_info_free_s", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_free_s", "role": "default" }} , 
 	{ "name": "type_info_free_s_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_free_s", "role": "ap_vld" }} , 
 	{ "name": "type_info_is_fwdref", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_is_fwdref", "role": "default" }} , 
 	{ "name": "type_info_is_fwdref_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_is_fwdref", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_modified_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_modified_type", "role": "default" }} , 
 	{ "name": "type_info_get_modified_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_modified_type", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "init_stype_info",
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
			{"Name" : "type_info_leaf_type", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_info_get_print_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_mlist", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_index", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_arglist", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_this_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_class_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_return_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_utype", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_vshape", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_derived", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_base_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_index_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_element_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_arg_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_members", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_name_len", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_val", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_name", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_free_s", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_is_fwdref", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_modified_type", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	init_stype_info {
		type_info_leaf_type {Type I LastRead -1 FirstWrite -1}
		type_info_get_print_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_mlist {Type O LastRead -1 FirstWrite 0}
		type_info_get_index {Type O LastRead -1 FirstWrite 0}
		type_info_get_arglist {Type O LastRead -1 FirstWrite 0}
		type_info_get_this_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_class_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_return_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_utype {Type O LastRead -1 FirstWrite 0}
		type_info_get_vshape {Type O LastRead -1 FirstWrite 0}
		type_info_get_derived {Type O LastRead -1 FirstWrite 0}
		type_info_get_base_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_index_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_element_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_arg_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_members {Type O LastRead -1 FirstWrite 0}
		type_info_get_name_len {Type O LastRead -1 FirstWrite 0}
		type_info_get_val {Type O LastRead -1 FirstWrite 0}
		type_info_get_name {Type O LastRead -1 FirstWrite 0}
		type_info_free_s {Type O LastRead -1 FirstWrite 0}
		type_info_is_fwdref {Type O LastRead -1 FirstWrite 0}
		type_info_get_modified_type {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	type_info_leaf_type { ap_none {  { type_info_leaf_type in_data 0 32 } } }
	type_info_get_print_type { ap_vld {  { type_info_get_print_type out_data 1 32 }  { type_info_get_print_type_ap_vld out_vld 1 1 } } }
	type_info_get_mlist { ap_vld {  { type_info_get_mlist out_data 1 32 }  { type_info_get_mlist_ap_vld out_vld 1 1 } } }
	type_info_get_index { ap_vld {  { type_info_get_index out_data 1 32 }  { type_info_get_index_ap_vld out_vld 1 1 } } }
	type_info_get_arglist { ap_vld {  { type_info_get_arglist out_data 1 32 }  { type_info_get_arglist_ap_vld out_vld 1 1 } } }
	type_info_get_this_type { ap_vld {  { type_info_get_this_type out_data 1 32 }  { type_info_get_this_type_ap_vld out_vld 1 1 } } }
	type_info_get_class_type { ap_vld {  { type_info_get_class_type out_data 1 32 }  { type_info_get_class_type_ap_vld out_vld 1 1 } } }
	type_info_get_return_type { ap_vld {  { type_info_get_return_type out_data 1 32 }  { type_info_get_return_type_ap_vld out_vld 1 1 } } }
	type_info_get_utype { ap_vld {  { type_info_get_utype out_data 1 32 }  { type_info_get_utype_ap_vld out_vld 1 1 } } }
	type_info_get_vshape { ap_vld {  { type_info_get_vshape out_data 1 32 }  { type_info_get_vshape_ap_vld out_vld 1 1 } } }
	type_info_get_derived { ap_vld {  { type_info_get_derived out_data 1 32 }  { type_info_get_derived_ap_vld out_vld 1 1 } } }
	type_info_get_base_type { ap_vld {  { type_info_get_base_type out_data 1 32 }  { type_info_get_base_type_ap_vld out_vld 1 1 } } }
	type_info_get_index_type { ap_vld {  { type_info_get_index_type out_data 1 32 }  { type_info_get_index_type_ap_vld out_vld 1 1 } } }
	type_info_get_element_type { ap_vld {  { type_info_get_element_type out_data 1 32 }  { type_info_get_element_type_ap_vld out_vld 1 1 } } }
	type_info_get_arg_type { ap_vld {  { type_info_get_arg_type out_data 1 32 }  { type_info_get_arg_type_ap_vld out_vld 1 1 } } }
	type_info_get_members { ap_vld {  { type_info_get_members out_data 1 32 }  { type_info_get_members_ap_vld out_vld 1 1 } } }
	type_info_get_name_len { ap_vld {  { type_info_get_name_len out_data 1 32 }  { type_info_get_name_len_ap_vld out_vld 1 1 } } }
	type_info_get_val { ap_vld {  { type_info_get_val out_data 1 32 }  { type_info_get_val_ap_vld out_vld 1 1 } } }
	type_info_get_name { ap_vld {  { type_info_get_name out_data 1 32 }  { type_info_get_name_ap_vld out_vld 1 1 } } }
	type_info_free_s { ap_vld {  { type_info_free_s out_data 1 32 }  { type_info_free_s_ap_vld out_vld 1 1 } } }
	type_info_is_fwdref { ap_vld {  { type_info_is_fwdref out_data 1 32 }  { type_info_is_fwdref_ap_vld out_vld 1 1 } } }
	type_info_get_modified_type { ap_vld {  { type_info_get_modified_type out_data 1 32 }  { type_info_get_modified_type_ap_vld out_vld 1 1 } } }
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
set moduleName init_stype_info
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
set C_modelName {init_stype_info}
set C_modelType { void 0 }
set C_modelArgList {
	{ type_info_leaf_type int 32 unused {pointer 0}  }
	{ type_info_get_print_type int 32 regular {pointer 1}  }
	{ type_info_get_mlist int 32 regular {pointer 1}  }
	{ type_info_get_index int 32 regular {pointer 1}  }
	{ type_info_get_arglist int 32 regular {pointer 1}  }
	{ type_info_get_this_type int 32 regular {pointer 1}  }
	{ type_info_get_class_type int 32 regular {pointer 1}  }
	{ type_info_get_return_type int 32 regular {pointer 1}  }
	{ type_info_get_utype int 32 regular {pointer 1}  }
	{ type_info_get_vshape int 32 regular {pointer 1}  }
	{ type_info_get_derived int 32 regular {pointer 1}  }
	{ type_info_get_base_type int 32 regular {pointer 1}  }
	{ type_info_get_index_type int 32 regular {pointer 1}  }
	{ type_info_get_element_type int 32 regular {pointer 1}  }
	{ type_info_get_arg_type int 32 regular {pointer 1}  }
	{ type_info_get_members int 32 regular {pointer 1}  }
	{ type_info_get_name_len int 32 regular {pointer 1}  }
	{ type_info_get_val int 32 regular {pointer 1}  }
	{ type_info_get_name int 32 regular {pointer 1}  }
	{ type_info_free_s int 32 regular {pointer 1}  }
	{ type_info_is_fwdref int 32 regular {pointer 1}  }
	{ type_info_get_modified_type int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "type_info_leaf_type", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.leaf_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_print_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_print_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_mlist", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_mlist","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_index", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_index","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_arglist", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_arglist","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_this_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_this_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_class_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_class_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_return_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_return_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_utype", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_utype","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_vshape", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_vshape","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_derived", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_derived","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_base_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_base_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_index_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_index_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_element_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_element_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_arg_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_arg_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_members", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_members","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_name_len", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_name_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_val", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_val","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_name", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_name","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_free_s", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.free_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_is_fwdref", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.is_fwdref","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_modified_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_modified_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ type_info_leaf_type sc_in sc_lv 32 signal 0 } 
	{ type_info_get_print_type sc_out sc_lv 32 signal 1 } 
	{ type_info_get_print_type_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ type_info_get_mlist sc_out sc_lv 32 signal 2 } 
	{ type_info_get_mlist_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ type_info_get_index sc_out sc_lv 32 signal 3 } 
	{ type_info_get_index_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ type_info_get_arglist sc_out sc_lv 32 signal 4 } 
	{ type_info_get_arglist_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ type_info_get_this_type sc_out sc_lv 32 signal 5 } 
	{ type_info_get_this_type_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ type_info_get_class_type sc_out sc_lv 32 signal 6 } 
	{ type_info_get_class_type_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ type_info_get_return_type sc_out sc_lv 32 signal 7 } 
	{ type_info_get_return_type_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ type_info_get_utype sc_out sc_lv 32 signal 8 } 
	{ type_info_get_utype_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ type_info_get_vshape sc_out sc_lv 32 signal 9 } 
	{ type_info_get_vshape_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ type_info_get_derived sc_out sc_lv 32 signal 10 } 
	{ type_info_get_derived_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ type_info_get_base_type sc_out sc_lv 32 signal 11 } 
	{ type_info_get_base_type_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ type_info_get_index_type sc_out sc_lv 32 signal 12 } 
	{ type_info_get_index_type_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ type_info_get_element_type sc_out sc_lv 32 signal 13 } 
	{ type_info_get_element_type_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ type_info_get_arg_type sc_out sc_lv 32 signal 14 } 
	{ type_info_get_arg_type_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ type_info_get_members sc_out sc_lv 32 signal 15 } 
	{ type_info_get_members_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ type_info_get_name_len sc_out sc_lv 32 signal 16 } 
	{ type_info_get_name_len_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ type_info_get_val sc_out sc_lv 32 signal 17 } 
	{ type_info_get_val_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ type_info_get_name sc_out sc_lv 32 signal 18 } 
	{ type_info_get_name_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ type_info_free_s sc_out sc_lv 32 signal 19 } 
	{ type_info_free_s_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ type_info_is_fwdref sc_out sc_lv 32 signal 20 } 
	{ type_info_is_fwdref_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ type_info_get_modified_type sc_out sc_lv 32 signal 21 } 
	{ type_info_get_modified_type_ap_vld sc_out sc_logic 1 outvld 21 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "type_info_leaf_type", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_leaf_type", "role": "default" }} , 
 	{ "name": "type_info_get_print_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_print_type", "role": "default" }} , 
 	{ "name": "type_info_get_print_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_print_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_mlist", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_mlist", "role": "default" }} , 
 	{ "name": "type_info_get_mlist_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_mlist", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_index", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_index", "role": "default" }} , 
 	{ "name": "type_info_get_index_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_index", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_arglist", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_arglist", "role": "default" }} , 
 	{ "name": "type_info_get_arglist_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_arglist", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_this_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_this_type", "role": "default" }} , 
 	{ "name": "type_info_get_this_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_this_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_class_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_class_type", "role": "default" }} , 
 	{ "name": "type_info_get_class_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_class_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_return_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_return_type", "role": "default" }} , 
 	{ "name": "type_info_get_return_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_return_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_utype", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_utype", "role": "default" }} , 
 	{ "name": "type_info_get_utype_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_utype", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_vshape", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_vshape", "role": "default" }} , 
 	{ "name": "type_info_get_vshape_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_vshape", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_derived", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_derived", "role": "default" }} , 
 	{ "name": "type_info_get_derived_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_derived", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_base_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_base_type", "role": "default" }} , 
 	{ "name": "type_info_get_base_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_base_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_index_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_index_type", "role": "default" }} , 
 	{ "name": "type_info_get_index_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_index_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_element_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_element_type", "role": "default" }} , 
 	{ "name": "type_info_get_element_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_element_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_arg_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_arg_type", "role": "default" }} , 
 	{ "name": "type_info_get_arg_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_arg_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_members", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_members", "role": "default" }} , 
 	{ "name": "type_info_get_members_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_members", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_name_len", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_name_len", "role": "default" }} , 
 	{ "name": "type_info_get_name_len_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_name_len", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_val", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_val", "role": "default" }} , 
 	{ "name": "type_info_get_val_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_val", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_name", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_name", "role": "default" }} , 
 	{ "name": "type_info_get_name_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_name", "role": "ap_vld" }} , 
 	{ "name": "type_info_free_s", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_free_s", "role": "default" }} , 
 	{ "name": "type_info_free_s_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_free_s", "role": "ap_vld" }} , 
 	{ "name": "type_info_is_fwdref", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_is_fwdref", "role": "default" }} , 
 	{ "name": "type_info_is_fwdref_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_is_fwdref", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_modified_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_modified_type", "role": "default" }} , 
 	{ "name": "type_info_get_modified_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_modified_type", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "init_stype_info",
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
			{"Name" : "type_info_leaf_type", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_info_get_print_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_mlist", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_index", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_arglist", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_this_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_class_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_return_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_utype", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_vshape", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_derived", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_base_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_index_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_element_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_arg_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_members", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_name_len", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_val", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_name", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_free_s", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_is_fwdref", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_modified_type", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	init_stype_info {
		type_info_leaf_type {Type I LastRead -1 FirstWrite -1}
		type_info_get_print_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_mlist {Type O LastRead -1 FirstWrite 0}
		type_info_get_index {Type O LastRead -1 FirstWrite 0}
		type_info_get_arglist {Type O LastRead -1 FirstWrite 0}
		type_info_get_this_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_class_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_return_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_utype {Type O LastRead -1 FirstWrite 0}
		type_info_get_vshape {Type O LastRead -1 FirstWrite 0}
		type_info_get_derived {Type O LastRead -1 FirstWrite 0}
		type_info_get_base_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_index_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_element_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_arg_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_members {Type O LastRead -1 FirstWrite 0}
		type_info_get_name_len {Type O LastRead -1 FirstWrite 0}
		type_info_get_val {Type O LastRead -1 FirstWrite 0}
		type_info_get_name {Type O LastRead -1 FirstWrite 0}
		type_info_free_s {Type O LastRead -1 FirstWrite 0}
		type_info_is_fwdref {Type O LastRead -1 FirstWrite 0}
		type_info_get_modified_type {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	type_info_leaf_type { ap_none {  { type_info_leaf_type in_data 0 32 } } }
	type_info_get_print_type { ap_vld {  { type_info_get_print_type out_data 1 32 }  { type_info_get_print_type_ap_vld out_vld 1 1 } } }
	type_info_get_mlist { ap_vld {  { type_info_get_mlist out_data 1 32 }  { type_info_get_mlist_ap_vld out_vld 1 1 } } }
	type_info_get_index { ap_vld {  { type_info_get_index out_data 1 32 }  { type_info_get_index_ap_vld out_vld 1 1 } } }
	type_info_get_arglist { ap_vld {  { type_info_get_arglist out_data 1 32 }  { type_info_get_arglist_ap_vld out_vld 1 1 } } }
	type_info_get_this_type { ap_vld {  { type_info_get_this_type out_data 1 32 }  { type_info_get_this_type_ap_vld out_vld 1 1 } } }
	type_info_get_class_type { ap_vld {  { type_info_get_class_type out_data 1 32 }  { type_info_get_class_type_ap_vld out_vld 1 1 } } }
	type_info_get_return_type { ap_vld {  { type_info_get_return_type out_data 1 32 }  { type_info_get_return_type_ap_vld out_vld 1 1 } } }
	type_info_get_utype { ap_vld {  { type_info_get_utype out_data 1 32 }  { type_info_get_utype_ap_vld out_vld 1 1 } } }
	type_info_get_vshape { ap_vld {  { type_info_get_vshape out_data 1 32 }  { type_info_get_vshape_ap_vld out_vld 1 1 } } }
	type_info_get_derived { ap_vld {  { type_info_get_derived out_data 1 32 }  { type_info_get_derived_ap_vld out_vld 1 1 } } }
	type_info_get_base_type { ap_vld {  { type_info_get_base_type out_data 1 32 }  { type_info_get_base_type_ap_vld out_vld 1 1 } } }
	type_info_get_index_type { ap_vld {  { type_info_get_index_type out_data 1 32 }  { type_info_get_index_type_ap_vld out_vld 1 1 } } }
	type_info_get_element_type { ap_vld {  { type_info_get_element_type out_data 1 32 }  { type_info_get_element_type_ap_vld out_vld 1 1 } } }
	type_info_get_arg_type { ap_vld {  { type_info_get_arg_type out_data 1 32 }  { type_info_get_arg_type_ap_vld out_vld 1 1 } } }
	type_info_get_members { ap_vld {  { type_info_get_members out_data 1 32 }  { type_info_get_members_ap_vld out_vld 1 1 } } }
	type_info_get_name_len { ap_vld {  { type_info_get_name_len out_data 1 32 }  { type_info_get_name_len_ap_vld out_vld 1 1 } } }
	type_info_get_val { ap_vld {  { type_info_get_val out_data 1 32 }  { type_info_get_val_ap_vld out_vld 1 1 } } }
	type_info_get_name { ap_vld {  { type_info_get_name out_data 1 32 }  { type_info_get_name_ap_vld out_vld 1 1 } } }
	type_info_free_s { ap_vld {  { type_info_free_s out_data 1 32 }  { type_info_free_s_ap_vld out_vld 1 1 } } }
	type_info_is_fwdref { ap_vld {  { type_info_is_fwdref out_data 1 32 }  { type_info_is_fwdref_ap_vld out_vld 1 1 } } }
	type_info_get_modified_type { ap_vld {  { type_info_get_modified_type out_data 1 32 }  { type_info_get_modified_type_ap_vld out_vld 1 1 } } }
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
set moduleName init_stype_info
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
set C_modelName {init_stype_info}
set C_modelType { void 0 }
set C_modelArgList {
	{ type_info_leaf_type int 32 unused {pointer 0}  }
	{ type_info_get_print_type int 32 regular {pointer 1}  }
	{ type_info_get_mlist int 32 regular {pointer 1}  }
	{ type_info_get_index int 32 regular {pointer 1}  }
	{ type_info_get_arglist int 32 regular {pointer 1}  }
	{ type_info_get_this_type int 32 regular {pointer 1}  }
	{ type_info_get_class_type int 32 regular {pointer 1}  }
	{ type_info_get_return_type int 32 regular {pointer 1}  }
	{ type_info_get_utype int 32 regular {pointer 1}  }
	{ type_info_get_vshape int 32 regular {pointer 1}  }
	{ type_info_get_derived int 32 regular {pointer 1}  }
	{ type_info_get_base_type int 32 regular {pointer 1}  }
	{ type_info_get_index_type int 32 regular {pointer 1}  }
	{ type_info_get_element_type int 32 regular {pointer 1}  }
	{ type_info_get_arg_type int 32 regular {pointer 1}  }
	{ type_info_get_members int 32 regular {pointer 1}  }
	{ type_info_get_name_len int 32 regular {pointer 1}  }
	{ type_info_get_val int 32 regular {pointer 1}  }
	{ type_info_get_name int 32 regular {pointer 1}  }
	{ type_info_free_s int 32 regular {pointer 1}  }
	{ type_info_is_fwdref int 32 regular {pointer 1}  }
	{ type_info_get_modified_type int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "type_info_leaf_type", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.leaf_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_print_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_print_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_mlist", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_mlist","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_index", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_index","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_arglist", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_arglist","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_this_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_this_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_class_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_class_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_return_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_return_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_utype", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_utype","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_vshape", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_vshape","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_derived", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_derived","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_base_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_base_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_index_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_index_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_element_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_element_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_arg_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_arg_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_members", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_members","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_name_len", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_name_len","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_val", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_val","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_name", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_name","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_free_s", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.free_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_is_fwdref", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.is_fwdref","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "type_info_get_modified_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "type_info.get_modified_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ type_info_leaf_type sc_in sc_lv 32 signal 0 } 
	{ type_info_get_print_type sc_out sc_lv 32 signal 1 } 
	{ type_info_get_print_type_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ type_info_get_mlist sc_out sc_lv 32 signal 2 } 
	{ type_info_get_mlist_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ type_info_get_index sc_out sc_lv 32 signal 3 } 
	{ type_info_get_index_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ type_info_get_arglist sc_out sc_lv 32 signal 4 } 
	{ type_info_get_arglist_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ type_info_get_this_type sc_out sc_lv 32 signal 5 } 
	{ type_info_get_this_type_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ type_info_get_class_type sc_out sc_lv 32 signal 6 } 
	{ type_info_get_class_type_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ type_info_get_return_type sc_out sc_lv 32 signal 7 } 
	{ type_info_get_return_type_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ type_info_get_utype sc_out sc_lv 32 signal 8 } 
	{ type_info_get_utype_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ type_info_get_vshape sc_out sc_lv 32 signal 9 } 
	{ type_info_get_vshape_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ type_info_get_derived sc_out sc_lv 32 signal 10 } 
	{ type_info_get_derived_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ type_info_get_base_type sc_out sc_lv 32 signal 11 } 
	{ type_info_get_base_type_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ type_info_get_index_type sc_out sc_lv 32 signal 12 } 
	{ type_info_get_index_type_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ type_info_get_element_type sc_out sc_lv 32 signal 13 } 
	{ type_info_get_element_type_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ type_info_get_arg_type sc_out sc_lv 32 signal 14 } 
	{ type_info_get_arg_type_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ type_info_get_members sc_out sc_lv 32 signal 15 } 
	{ type_info_get_members_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ type_info_get_name_len sc_out sc_lv 32 signal 16 } 
	{ type_info_get_name_len_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ type_info_get_val sc_out sc_lv 32 signal 17 } 
	{ type_info_get_val_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ type_info_get_name sc_out sc_lv 32 signal 18 } 
	{ type_info_get_name_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ type_info_free_s sc_out sc_lv 32 signal 19 } 
	{ type_info_free_s_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ type_info_is_fwdref sc_out sc_lv 32 signal 20 } 
	{ type_info_is_fwdref_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ type_info_get_modified_type sc_out sc_lv 32 signal 21 } 
	{ type_info_get_modified_type_ap_vld sc_out sc_logic 1 outvld 21 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "type_info_leaf_type", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_leaf_type", "role": "default" }} , 
 	{ "name": "type_info_get_print_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_print_type", "role": "default" }} , 
 	{ "name": "type_info_get_print_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_print_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_mlist", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_mlist", "role": "default" }} , 
 	{ "name": "type_info_get_mlist_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_mlist", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_index", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_index", "role": "default" }} , 
 	{ "name": "type_info_get_index_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_index", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_arglist", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_arglist", "role": "default" }} , 
 	{ "name": "type_info_get_arglist_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_arglist", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_this_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_this_type", "role": "default" }} , 
 	{ "name": "type_info_get_this_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_this_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_class_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_class_type", "role": "default" }} , 
 	{ "name": "type_info_get_class_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_class_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_return_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_return_type", "role": "default" }} , 
 	{ "name": "type_info_get_return_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_return_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_utype", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_utype", "role": "default" }} , 
 	{ "name": "type_info_get_utype_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_utype", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_vshape", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_vshape", "role": "default" }} , 
 	{ "name": "type_info_get_vshape_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_vshape", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_derived", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_derived", "role": "default" }} , 
 	{ "name": "type_info_get_derived_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_derived", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_base_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_base_type", "role": "default" }} , 
 	{ "name": "type_info_get_base_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_base_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_index_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_index_type", "role": "default" }} , 
 	{ "name": "type_info_get_index_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_index_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_element_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_element_type", "role": "default" }} , 
 	{ "name": "type_info_get_element_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_element_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_arg_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_arg_type", "role": "default" }} , 
 	{ "name": "type_info_get_arg_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_arg_type", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_members", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_members", "role": "default" }} , 
 	{ "name": "type_info_get_members_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_members", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_name_len", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_name_len", "role": "default" }} , 
 	{ "name": "type_info_get_name_len_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_name_len", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_val", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_val", "role": "default" }} , 
 	{ "name": "type_info_get_val_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_val", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_name", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_name", "role": "default" }} , 
 	{ "name": "type_info_get_name_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_name", "role": "ap_vld" }} , 
 	{ "name": "type_info_free_s", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_free_s", "role": "default" }} , 
 	{ "name": "type_info_free_s_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_free_s", "role": "ap_vld" }} , 
 	{ "name": "type_info_is_fwdref", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_is_fwdref", "role": "default" }} , 
 	{ "name": "type_info_is_fwdref_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_is_fwdref", "role": "ap_vld" }} , 
 	{ "name": "type_info_get_modified_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "type_info_get_modified_type", "role": "default" }} , 
 	{ "name": "type_info_get_modified_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "type_info_get_modified_type", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "init_stype_info",
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
			{"Name" : "type_info_leaf_type", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_info_get_print_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_mlist", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_index", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_arglist", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_this_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_class_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_return_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_utype", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_vshape", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_derived", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_base_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_index_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_element_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_arg_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_members", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_name_len", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_val", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_name", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_free_s", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_is_fwdref", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "type_info_get_modified_type", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	init_stype_info {
		type_info_leaf_type {Type I LastRead -1 FirstWrite -1}
		type_info_get_print_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_mlist {Type O LastRead -1 FirstWrite 0}
		type_info_get_index {Type O LastRead -1 FirstWrite 0}
		type_info_get_arglist {Type O LastRead -1 FirstWrite 0}
		type_info_get_this_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_class_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_return_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_utype {Type O LastRead -1 FirstWrite 0}
		type_info_get_vshape {Type O LastRead -1 FirstWrite 0}
		type_info_get_derived {Type O LastRead -1 FirstWrite 0}
		type_info_get_base_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_index_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_element_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_arg_type {Type O LastRead -1 FirstWrite 0}
		type_info_get_members {Type O LastRead -1 FirstWrite 0}
		type_info_get_name_len {Type O LastRead -1 FirstWrite 0}
		type_info_get_val {Type O LastRead -1 FirstWrite 0}
		type_info_get_name {Type O LastRead -1 FirstWrite 0}
		type_info_free_s {Type O LastRead -1 FirstWrite 0}
		type_info_is_fwdref {Type O LastRead -1 FirstWrite 0}
		type_info_get_modified_type {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	type_info_leaf_type { ap_none {  { type_info_leaf_type in_data 0 32 } } }
	type_info_get_print_type { ap_vld {  { type_info_get_print_type out_data 1 32 }  { type_info_get_print_type_ap_vld out_vld 1 1 } } }
	type_info_get_mlist { ap_vld {  { type_info_get_mlist out_data 1 32 }  { type_info_get_mlist_ap_vld out_vld 1 1 } } }
	type_info_get_index { ap_vld {  { type_info_get_index out_data 1 32 }  { type_info_get_index_ap_vld out_vld 1 1 } } }
	type_info_get_arglist { ap_vld {  { type_info_get_arglist out_data 1 32 }  { type_info_get_arglist_ap_vld out_vld 1 1 } } }
	type_info_get_this_type { ap_vld {  { type_info_get_this_type out_data 1 32 }  { type_info_get_this_type_ap_vld out_vld 1 1 } } }
	type_info_get_class_type { ap_vld {  { type_info_get_class_type out_data 1 32 }  { type_info_get_class_type_ap_vld out_vld 1 1 } } }
	type_info_get_return_type { ap_vld {  { type_info_get_return_type out_data 1 32 }  { type_info_get_return_type_ap_vld out_vld 1 1 } } }
	type_info_get_utype { ap_vld {  { type_info_get_utype out_data 1 32 }  { type_info_get_utype_ap_vld out_vld 1 1 } } }
	type_info_get_vshape { ap_vld {  { type_info_get_vshape out_data 1 32 }  { type_info_get_vshape_ap_vld out_vld 1 1 } } }
	type_info_get_derived { ap_vld {  { type_info_get_derived out_data 1 32 }  { type_info_get_derived_ap_vld out_vld 1 1 } } }
	type_info_get_base_type { ap_vld {  { type_info_get_base_type out_data 1 32 }  { type_info_get_base_type_ap_vld out_vld 1 1 } } }
	type_info_get_index_type { ap_vld {  { type_info_get_index_type out_data 1 32 }  { type_info_get_index_type_ap_vld out_vld 1 1 } } }
	type_info_get_element_type { ap_vld {  { type_info_get_element_type out_data 1 32 }  { type_info_get_element_type_ap_vld out_vld 1 1 } } }
	type_info_get_arg_type { ap_vld {  { type_info_get_arg_type out_data 1 32 }  { type_info_get_arg_type_ap_vld out_vld 1 1 } } }
	type_info_get_members { ap_vld {  { type_info_get_members out_data 1 32 }  { type_info_get_members_ap_vld out_vld 1 1 } } }
	type_info_get_name_len { ap_vld {  { type_info_get_name_len out_data 1 32 }  { type_info_get_name_len_ap_vld out_vld 1 1 } } }
	type_info_get_val { ap_vld {  { type_info_get_val out_data 1 32 }  { type_info_get_val_ap_vld out_vld 1 1 } } }
	type_info_get_name { ap_vld {  { type_info_get_name out_data 1 32 }  { type_info_get_name_ap_vld out_vld 1 1 } } }
	type_info_free_s { ap_vld {  { type_info_free_s out_data 1 32 }  { type_info_free_s_ap_vld out_vld 1 1 } } }
	type_info_is_fwdref { ap_vld {  { type_info_is_fwdref out_data 1 32 }  { type_info_is_fwdref_ap_vld out_vld 1 1 } } }
	type_info_get_modified_type { ap_vld {  { type_info_get_modified_type out_data 1 32 }  { type_info_get_modified_type_ap_vld out_vld 1 1 } } }
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
