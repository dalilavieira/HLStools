set moduleName cx2341x_set_ctrl
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
set C_modelName {cx2341x_set_ctrl}
set C_modelType { int 32 }
set C_modelArgList {
	{ params_audio_sampling_freq int 32 regular {pointer 1}  }
	{ params_capabilities int 32 unused {pointer 0}  }
	{ params_audio_encoding int 32 regular {pointer 1}  }
	{ params_audio_l2_bitrate int 32 regular {pointer 1}  }
	{ params_audio_ac3_bitrate int 32 unused {pointer 0}  }
	{ params_audio_mode int 32 regular {pointer 1}  }
	{ params_audio_mode_extension int 32 regular {pointer 1}  }
	{ params_audio_emphasis int 32 regular {pointer 1}  }
	{ params_audio_crc int 32 regular {pointer 1}  }
	{ params_audio_mute int 32 regular {pointer 1}  }
	{ params_video_aspect int 32 regular {pointer 1}  }
	{ params_video_gop_size int 32 regular {pointer 2}  }
	{ params_video_b_frames int 32 regular {pointer 2}  }
	{ params_video_gop_closure int 32 regular {pointer 1}  }
	{ params_video_bitrate_mode int 32 regular {pointer 1}  }
	{ params_video_bitrate int 32 regular {pointer 1}  }
	{ params_video_bitrate_peak int 32 regular {pointer 1}  }
	{ params_video_temporal_decimation int 32 regular {pointer 1}  }
	{ params_video_mute int 32 regular {pointer 1}  }
	{ params_video_mute_yuv int 32 regular {pointer 1}  }
	{ params_stream_type int 32 regular {pointer 1}  }
	{ params_stream_vbi_fmt int 32 regular {pointer 1}  }
	{ params_video_spatial_filter_mode int 32 regular {pointer 1}  }
	{ params_video_spatial_filter int 32 regular {pointer 1}  }
	{ params_video_luma_spatial_filter_type int 32 regular {pointer 1}  }
	{ params_video_chroma_spatial_filter_type int 32 regular {pointer 1}  }
	{ params_video_temporal_filter_mode int 32 regular {pointer 1}  }
	{ params_video_temporal_filter int 32 regular {pointer 1}  }
	{ params_video_median_filter_type int 32 regular {pointer 1}  }
	{ params_video_luma_median_filter_top int 32 regular {pointer 1}  }
	{ params_video_luma_median_filter_bottom int 32 regular {pointer 1}  }
	{ params_video_chroma_median_filter_top int 32 regular {pointer 1}  }
	{ params_video_chroma_median_filter_bottom int 32 regular {pointer 1}  }
	{ params_stream_insert_nav_packets int 32 regular {pointer 1}  }
	{ params_video_encoding int 32 regular {pointer 2}  }
	{ busy int 32 regular  }
	{ ctrl_id int 32 regular {pointer 0}  }
	{ ctrl_value int 32 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "params_audio_sampling_freq", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_sampling_freq","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_capabilities", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.capabilities","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_audio_encoding", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_encoding","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_audio_l2_bitrate", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_l2_bitrate","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_audio_ac3_bitrate", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_ac3_bitrate","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_audio_mode", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_mode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_audio_mode_extension", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_mode_extension","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_audio_emphasis", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_emphasis","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_audio_crc", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_crc","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_audio_mute", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.audio_mute","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_aspect", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_aspect","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_gop_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_gop_size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_b_frames", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_b_frames","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_gop_closure", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_gop_closure","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_bitrate_mode", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_bitrate_mode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_bitrate", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_bitrate","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_bitrate_peak", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_bitrate_peak","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_temporal_decimation", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_temporal_decimation","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_mute", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_mute","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_mute_yuv", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_mute_yuv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_stream_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.stream_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_stream_vbi_fmt", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.stream_vbi_fmt","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_spatial_filter_mode", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_spatial_filter_mode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_spatial_filter", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_spatial_filter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_luma_spatial_filter_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_luma_spatial_filter_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_chroma_spatial_filter_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_chroma_spatial_filter_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_temporal_filter_mode", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_temporal_filter_mode","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_temporal_filter", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_temporal_filter","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_median_filter_type", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_median_filter_type","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_luma_median_filter_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_luma_median_filter_top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_luma_median_filter_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_luma_median_filter_bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_chroma_median_filter_top", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_chroma_median_filter_top","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_chroma_median_filter_bottom", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_chroma_median_filter_bottom","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_stream_insert_nav_packets", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.stream_insert_nav_packets","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "params_video_encoding", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "params.video_encoding","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "busy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "busy","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ctrl_id", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ctrl.id","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ctrl_value", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ctrl.value","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ params_audio_sampling_freq sc_out sc_lv 32 signal 0 } 
	{ params_audio_sampling_freq_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ params_capabilities sc_in sc_lv 32 signal 1 } 
	{ params_audio_encoding sc_out sc_lv 32 signal 2 } 
	{ params_audio_encoding_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ params_audio_l2_bitrate sc_out sc_lv 32 signal 3 } 
	{ params_audio_l2_bitrate_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ params_audio_ac3_bitrate sc_in sc_lv 32 signal 4 } 
	{ params_audio_mode sc_out sc_lv 32 signal 5 } 
	{ params_audio_mode_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ params_audio_mode_extension sc_out sc_lv 32 signal 6 } 
	{ params_audio_mode_extension_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ params_audio_emphasis sc_out sc_lv 32 signal 7 } 
	{ params_audio_emphasis_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ params_audio_crc sc_out sc_lv 32 signal 8 } 
	{ params_audio_crc_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ params_audio_mute sc_out sc_lv 32 signal 9 } 
	{ params_audio_mute_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ params_video_aspect sc_out sc_lv 32 signal 10 } 
	{ params_video_aspect_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ params_video_gop_size_i sc_in sc_lv 32 signal 11 } 
	{ params_video_gop_size_o sc_out sc_lv 32 signal 11 } 
	{ params_video_gop_size_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ params_video_b_frames_i sc_in sc_lv 32 signal 12 } 
	{ params_video_b_frames_o sc_out sc_lv 32 signal 12 } 
	{ params_video_b_frames_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ params_video_gop_closure sc_out sc_lv 32 signal 13 } 
	{ params_video_gop_closure_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ params_video_bitrate_mode sc_out sc_lv 32 signal 14 } 
	{ params_video_bitrate_mode_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ params_video_bitrate sc_out sc_lv 32 signal 15 } 
	{ params_video_bitrate_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ params_video_bitrate_peak sc_out sc_lv 32 signal 16 } 
	{ params_video_bitrate_peak_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ params_video_temporal_decimation sc_out sc_lv 32 signal 17 } 
	{ params_video_temporal_decimation_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ params_video_mute sc_out sc_lv 32 signal 18 } 
	{ params_video_mute_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ params_video_mute_yuv sc_out sc_lv 32 signal 19 } 
	{ params_video_mute_yuv_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ params_stream_type sc_out sc_lv 32 signal 20 } 
	{ params_stream_type_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ params_stream_vbi_fmt sc_out sc_lv 32 signal 21 } 
	{ params_stream_vbi_fmt_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ params_video_spatial_filter_mode sc_out sc_lv 32 signal 22 } 
	{ params_video_spatial_filter_mode_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ params_video_spatial_filter sc_out sc_lv 32 signal 23 } 
	{ params_video_spatial_filter_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ params_video_luma_spatial_filter_type sc_out sc_lv 32 signal 24 } 
	{ params_video_luma_spatial_filter_type_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ params_video_chroma_spatial_filter_type sc_out sc_lv 32 signal 25 } 
	{ params_video_chroma_spatial_filter_type_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ params_video_temporal_filter_mode sc_out sc_lv 32 signal 26 } 
	{ params_video_temporal_filter_mode_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ params_video_temporal_filter sc_out sc_lv 32 signal 27 } 
	{ params_video_temporal_filter_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ params_video_median_filter_type sc_out sc_lv 32 signal 28 } 
	{ params_video_median_filter_type_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ params_video_luma_median_filter_top sc_out sc_lv 32 signal 29 } 
	{ params_video_luma_median_filter_top_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ params_video_luma_median_filter_bottom sc_out sc_lv 32 signal 30 } 
	{ params_video_luma_median_filter_bottom_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ params_video_chroma_median_filter_top sc_out sc_lv 32 signal 31 } 
	{ params_video_chroma_median_filter_top_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ params_video_chroma_median_filter_bottom sc_out sc_lv 32 signal 32 } 
	{ params_video_chroma_median_filter_bottom_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ params_stream_insert_nav_packets sc_out sc_lv 32 signal 33 } 
	{ params_stream_insert_nav_packets_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ params_video_encoding_i sc_in sc_lv 32 signal 34 } 
	{ params_video_encoding_o sc_out sc_lv 32 signal 34 } 
	{ params_video_encoding_o_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ busy sc_in sc_lv 32 signal 35 } 
	{ ctrl_id sc_in sc_lv 32 signal 36 } 
	{ ctrl_value_i sc_in sc_lv 32 signal 37 } 
	{ ctrl_value_o sc_out sc_lv 32 signal 37 } 
	{ ctrl_value_o_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "params_audio_sampling_freq", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_sampling_freq", "role": "default" }} , 
 	{ "name": "params_audio_sampling_freq_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_audio_sampling_freq", "role": "ap_vld" }} , 
 	{ "name": "params_capabilities", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_capabilities", "role": "default" }} , 
 	{ "name": "params_audio_encoding", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_encoding", "role": "default" }} , 
 	{ "name": "params_audio_encoding_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_audio_encoding", "role": "ap_vld" }} , 
 	{ "name": "params_audio_l2_bitrate", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_l2_bitrate", "role": "default" }} , 
 	{ "name": "params_audio_l2_bitrate_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_audio_l2_bitrate", "role": "ap_vld" }} , 
 	{ "name": "params_audio_ac3_bitrate", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_ac3_bitrate", "role": "default" }} , 
 	{ "name": "params_audio_mode", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_mode", "role": "default" }} , 
 	{ "name": "params_audio_mode_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_audio_mode", "role": "ap_vld" }} , 
 	{ "name": "params_audio_mode_extension", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_mode_extension", "role": "default" }} , 
 	{ "name": "params_audio_mode_extension_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_audio_mode_extension", "role": "ap_vld" }} , 
 	{ "name": "params_audio_emphasis", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_emphasis", "role": "default" }} , 
 	{ "name": "params_audio_emphasis_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_audio_emphasis", "role": "ap_vld" }} , 
 	{ "name": "params_audio_crc", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_crc", "role": "default" }} , 
 	{ "name": "params_audio_crc_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_audio_crc", "role": "ap_vld" }} , 
 	{ "name": "params_audio_mute", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_audio_mute", "role": "default" }} , 
 	{ "name": "params_audio_mute_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_audio_mute", "role": "ap_vld" }} , 
 	{ "name": "params_video_aspect", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_aspect", "role": "default" }} , 
 	{ "name": "params_video_aspect_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_aspect", "role": "ap_vld" }} , 
 	{ "name": "params_video_gop_size_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_gop_size", "role": "i" }} , 
 	{ "name": "params_video_gop_size_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_gop_size", "role": "o" }} , 
 	{ "name": "params_video_gop_size_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_gop_size", "role": "o_ap_vld" }} , 
 	{ "name": "params_video_b_frames_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_b_frames", "role": "i" }} , 
 	{ "name": "params_video_b_frames_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_b_frames", "role": "o" }} , 
 	{ "name": "params_video_b_frames_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_b_frames", "role": "o_ap_vld" }} , 
 	{ "name": "params_video_gop_closure", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_gop_closure", "role": "default" }} , 
 	{ "name": "params_video_gop_closure_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_gop_closure", "role": "ap_vld" }} , 
 	{ "name": "params_video_bitrate_mode", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_bitrate_mode", "role": "default" }} , 
 	{ "name": "params_video_bitrate_mode_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_bitrate_mode", "role": "ap_vld" }} , 
 	{ "name": "params_video_bitrate", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_bitrate", "role": "default" }} , 
 	{ "name": "params_video_bitrate_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_bitrate", "role": "ap_vld" }} , 
 	{ "name": "params_video_bitrate_peak", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_bitrate_peak", "role": "default" }} , 
 	{ "name": "params_video_bitrate_peak_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_bitrate_peak", "role": "ap_vld" }} , 
 	{ "name": "params_video_temporal_decimation", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_temporal_decimation", "role": "default" }} , 
 	{ "name": "params_video_temporal_decimation_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_temporal_decimation", "role": "ap_vld" }} , 
 	{ "name": "params_video_mute", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_mute", "role": "default" }} , 
 	{ "name": "params_video_mute_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_mute", "role": "ap_vld" }} , 
 	{ "name": "params_video_mute_yuv", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_mute_yuv", "role": "default" }} , 
 	{ "name": "params_video_mute_yuv_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_mute_yuv", "role": "ap_vld" }} , 
 	{ "name": "params_stream_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_stream_type", "role": "default" }} , 
 	{ "name": "params_stream_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_stream_type", "role": "ap_vld" }} , 
 	{ "name": "params_stream_vbi_fmt", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_stream_vbi_fmt", "role": "default" }} , 
 	{ "name": "params_stream_vbi_fmt_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_stream_vbi_fmt", "role": "ap_vld" }} , 
 	{ "name": "params_video_spatial_filter_mode", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_spatial_filter_mode", "role": "default" }} , 
 	{ "name": "params_video_spatial_filter_mode_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_spatial_filter_mode", "role": "ap_vld" }} , 
 	{ "name": "params_video_spatial_filter", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_spatial_filter", "role": "default" }} , 
 	{ "name": "params_video_spatial_filter_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_spatial_filter", "role": "ap_vld" }} , 
 	{ "name": "params_video_luma_spatial_filter_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_luma_spatial_filter_type", "role": "default" }} , 
 	{ "name": "params_video_luma_spatial_filter_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_luma_spatial_filter_type", "role": "ap_vld" }} , 
 	{ "name": "params_video_chroma_spatial_filter_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_chroma_spatial_filter_type", "role": "default" }} , 
 	{ "name": "params_video_chroma_spatial_filter_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_chroma_spatial_filter_type", "role": "ap_vld" }} , 
 	{ "name": "params_video_temporal_filter_mode", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_temporal_filter_mode", "role": "default" }} , 
 	{ "name": "params_video_temporal_filter_mode_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_temporal_filter_mode", "role": "ap_vld" }} , 
 	{ "name": "params_video_temporal_filter", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_temporal_filter", "role": "default" }} , 
 	{ "name": "params_video_temporal_filter_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_temporal_filter", "role": "ap_vld" }} , 
 	{ "name": "params_video_median_filter_type", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_median_filter_type", "role": "default" }} , 
 	{ "name": "params_video_median_filter_type_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_median_filter_type", "role": "ap_vld" }} , 
 	{ "name": "params_video_luma_median_filter_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_luma_median_filter_top", "role": "default" }} , 
 	{ "name": "params_video_luma_median_filter_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_luma_median_filter_top", "role": "ap_vld" }} , 
 	{ "name": "params_video_luma_median_filter_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_luma_median_filter_bottom", "role": "default" }} , 
 	{ "name": "params_video_luma_median_filter_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_luma_median_filter_bottom", "role": "ap_vld" }} , 
 	{ "name": "params_video_chroma_median_filter_top", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_chroma_median_filter_top", "role": "default" }} , 
 	{ "name": "params_video_chroma_median_filter_top_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_chroma_median_filter_top", "role": "ap_vld" }} , 
 	{ "name": "params_video_chroma_median_filter_bottom", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_chroma_median_filter_bottom", "role": "default" }} , 
 	{ "name": "params_video_chroma_median_filter_bottom_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_chroma_median_filter_bottom", "role": "ap_vld" }} , 
 	{ "name": "params_stream_insert_nav_packets", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_stream_insert_nav_packets", "role": "default" }} , 
 	{ "name": "params_stream_insert_nav_packets_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_stream_insert_nav_packets", "role": "ap_vld" }} , 
 	{ "name": "params_video_encoding_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_encoding", "role": "i" }} , 
 	{ "name": "params_video_encoding_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "params_video_encoding", "role": "o" }} , 
 	{ "name": "params_video_encoding_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "params_video_encoding", "role": "o_ap_vld" }} , 
 	{ "name": "busy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "busy", "role": "default" }} , 
 	{ "name": "ctrl_id", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_id", "role": "default" }} , 
 	{ "name": "ctrl_value_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_value", "role": "i" }} , 
 	{ "name": "ctrl_value_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl_value", "role": "o" }} , 
 	{ "name": "ctrl_value_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctrl_value", "role": "o_ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "cx2341x_set_ctrl",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "params_audio_sampling_freq", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_capabilities", "Type" : "None", "Direction" : "I"},
			{"Name" : "params_audio_encoding", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_audio_l2_bitrate", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_audio_ac3_bitrate", "Type" : "None", "Direction" : "I"},
			{"Name" : "params_audio_mode", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_audio_mode_extension", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_audio_emphasis", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_audio_crc", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_audio_mute", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_aspect", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_gop_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "params_video_b_frames", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "params_video_gop_closure", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_bitrate_mode", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_bitrate", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_bitrate_peak", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_temporal_decimation", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_mute", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_mute_yuv", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_stream_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_stream_vbi_fmt", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_spatial_filter_mode", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_spatial_filter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_luma_spatial_filter_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_chroma_spatial_filter_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_temporal_filter_mode", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_temporal_filter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_median_filter_type", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_luma_median_filter_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_luma_median_filter_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_chroma_median_filter_top", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_chroma_median_filter_bottom", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_stream_insert_nav_packets", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "params_video_encoding", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "busy", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl_id", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctrl_value", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cx2341x_set_ctrl_srem_32ns_32ns_32_36_seq_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cx2341x_set_ctrl_srem_32ns_32ns_32_36_seq_1_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cx2341x_set_ctrl {
		params_audio_sampling_freq {Type O LastRead -1 FirstWrite 0}
		params_capabilities {Type I LastRead -1 FirstWrite -1}
		params_audio_encoding {Type O LastRead -1 FirstWrite 0}
		params_audio_l2_bitrate {Type O LastRead -1 FirstWrite 0}
		params_audio_ac3_bitrate {Type I LastRead -1 FirstWrite -1}
		params_audio_mode {Type O LastRead -1 FirstWrite 0}
		params_audio_mode_extension {Type O LastRead -1 FirstWrite 0}
		params_audio_emphasis {Type O LastRead -1 FirstWrite 0}
		params_audio_crc {Type O LastRead -1 FirstWrite 0}
		params_audio_mute {Type O LastRead -1 FirstWrite 0}
		params_video_aspect {Type O LastRead -1 FirstWrite 0}
		params_video_gop_size {Type IO LastRead 0 FirstWrite 36}
		params_video_b_frames {Type IO LastRead 0 FirstWrite 0}
		params_video_gop_closure {Type O LastRead -1 FirstWrite 0}
		params_video_bitrate_mode {Type O LastRead -1 FirstWrite 0}
		params_video_bitrate {Type O LastRead -1 FirstWrite 0}
		params_video_bitrate_peak {Type O LastRead -1 FirstWrite 0}
		params_video_temporal_decimation {Type O LastRead -1 FirstWrite 0}
		params_video_mute {Type O LastRead -1 FirstWrite 0}
		params_video_mute_yuv {Type O LastRead -1 FirstWrite 0}
		params_stream_type {Type O LastRead -1 FirstWrite 0}
		params_stream_vbi_fmt {Type O LastRead -1 FirstWrite 0}
		params_video_spatial_filter_mode {Type O LastRead -1 FirstWrite 0}
		params_video_spatial_filter {Type O LastRead -1 FirstWrite 0}
		params_video_luma_spatial_filter_type {Type O LastRead -1 FirstWrite 0}
		params_video_chroma_spatial_filter_type {Type O LastRead -1 FirstWrite 0}
		params_video_temporal_filter_mode {Type O LastRead -1 FirstWrite 0}
		params_video_temporal_filter {Type O LastRead -1 FirstWrite 0}
		params_video_median_filter_type {Type O LastRead -1 FirstWrite 0}
		params_video_luma_median_filter_top {Type O LastRead -1 FirstWrite 0}
		params_video_luma_median_filter_bottom {Type O LastRead -1 FirstWrite 0}
		params_video_chroma_median_filter_top {Type O LastRead -1 FirstWrite 0}
		params_video_chroma_median_filter_bottom {Type O LastRead -1 FirstWrite 0}
		params_stream_insert_nav_packets {Type O LastRead -1 FirstWrite 0}
		params_video_encoding {Type IO LastRead 0 FirstWrite 0}
		busy {Type I LastRead 0 FirstWrite -1}
		ctrl_id {Type I LastRead 0 FirstWrite -1}
		ctrl_value {Type IO LastRead 0 FirstWrite 36}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	params_audio_sampling_freq { ap_vld {  { params_audio_sampling_freq out_data 1 32 }  { params_audio_sampling_freq_ap_vld out_vld 1 1 } } }
	params_capabilities { ap_none {  { params_capabilities in_data 0 32 } } }
	params_audio_encoding { ap_vld {  { params_audio_encoding out_data 1 32 }  { params_audio_encoding_ap_vld out_vld 1 1 } } }
	params_audio_l2_bitrate { ap_vld {  { params_audio_l2_bitrate out_data 1 32 }  { params_audio_l2_bitrate_ap_vld out_vld 1 1 } } }
	params_audio_ac3_bitrate { ap_none {  { params_audio_ac3_bitrate in_data 0 32 } } }
	params_audio_mode { ap_vld {  { params_audio_mode out_data 1 32 }  { params_audio_mode_ap_vld out_vld 1 1 } } }
	params_audio_mode_extension { ap_vld {  { params_audio_mode_extension out_data 1 32 }  { params_audio_mode_extension_ap_vld out_vld 1 1 } } }
	params_audio_emphasis { ap_vld {  { params_audio_emphasis out_data 1 32 }  { params_audio_emphasis_ap_vld out_vld 1 1 } } }
	params_audio_crc { ap_vld {  { params_audio_crc out_data 1 32 }  { params_audio_crc_ap_vld out_vld 1 1 } } }
	params_audio_mute { ap_vld {  { params_audio_mute out_data 1 32 }  { params_audio_mute_ap_vld out_vld 1 1 } } }
	params_video_aspect { ap_vld {  { params_video_aspect out_data 1 32 }  { params_video_aspect_ap_vld out_vld 1 1 } } }
	params_video_gop_size { ap_ovld {  { params_video_gop_size_i in_data 0 32 }  { params_video_gop_size_o out_data 1 32 }  { params_video_gop_size_o_ap_vld out_vld 1 1 } } }
	params_video_b_frames { ap_ovld {  { params_video_b_frames_i in_data 0 32 }  { params_video_b_frames_o out_data 1 32 }  { params_video_b_frames_o_ap_vld out_vld 1 1 } } }
	params_video_gop_closure { ap_vld {  { params_video_gop_closure out_data 1 32 }  { params_video_gop_closure_ap_vld out_vld 1 1 } } }
	params_video_bitrate_mode { ap_vld {  { params_video_bitrate_mode out_data 1 32 }  { params_video_bitrate_mode_ap_vld out_vld 1 1 } } }
	params_video_bitrate { ap_vld {  { params_video_bitrate out_data 1 32 }  { params_video_bitrate_ap_vld out_vld 1 1 } } }
	params_video_bitrate_peak { ap_vld {  { params_video_bitrate_peak out_data 1 32 }  { params_video_bitrate_peak_ap_vld out_vld 1 1 } } }
	params_video_temporal_decimation { ap_vld {  { params_video_temporal_decimation out_data 1 32 }  { params_video_temporal_decimation_ap_vld out_vld 1 1 } } }
	params_video_mute { ap_vld {  { params_video_mute out_data 1 32 }  { params_video_mute_ap_vld out_vld 1 1 } } }
	params_video_mute_yuv { ap_vld {  { params_video_mute_yuv out_data 1 32 }  { params_video_mute_yuv_ap_vld out_vld 1 1 } } }
	params_stream_type { ap_vld {  { params_stream_type out_data 1 32 }  { params_stream_type_ap_vld out_vld 1 1 } } }
	params_stream_vbi_fmt { ap_vld {  { params_stream_vbi_fmt out_data 1 32 }  { params_stream_vbi_fmt_ap_vld out_vld 1 1 } } }
	params_video_spatial_filter_mode { ap_vld {  { params_video_spatial_filter_mode out_data 1 32 }  { params_video_spatial_filter_mode_ap_vld out_vld 1 1 } } }
	params_video_spatial_filter { ap_vld {  { params_video_spatial_filter out_data 1 32 }  { params_video_spatial_filter_ap_vld out_vld 1 1 } } }
	params_video_luma_spatial_filter_type { ap_vld {  { params_video_luma_spatial_filter_type out_data 1 32 }  { params_video_luma_spatial_filter_type_ap_vld out_vld 1 1 } } }
	params_video_chroma_spatial_filter_type { ap_vld {  { params_video_chroma_spatial_filter_type out_data 1 32 }  { params_video_chroma_spatial_filter_type_ap_vld out_vld 1 1 } } }
	params_video_temporal_filter_mode { ap_vld {  { params_video_temporal_filter_mode out_data 1 32 }  { params_video_temporal_filter_mode_ap_vld out_vld 1 1 } } }
	params_video_temporal_filter { ap_vld {  { params_video_temporal_filter out_data 1 32 }  { params_video_temporal_filter_ap_vld out_vld 1 1 } } }
	params_video_median_filter_type { ap_vld {  { params_video_median_filter_type out_data 1 32 }  { params_video_median_filter_type_ap_vld out_vld 1 1 } } }
	params_video_luma_median_filter_top { ap_vld {  { params_video_luma_median_filter_top out_data 1 32 }  { params_video_luma_median_filter_top_ap_vld out_vld 1 1 } } }
	params_video_luma_median_filter_bottom { ap_vld {  { params_video_luma_median_filter_bottom out_data 1 32 }  { params_video_luma_median_filter_bottom_ap_vld out_vld 1 1 } } }
	params_video_chroma_median_filter_top { ap_vld {  { params_video_chroma_median_filter_top out_data 1 32 }  { params_video_chroma_median_filter_top_ap_vld out_vld 1 1 } } }
	params_video_chroma_median_filter_bottom { ap_vld {  { params_video_chroma_median_filter_bottom out_data 1 32 }  { params_video_chroma_median_filter_bottom_ap_vld out_vld 1 1 } } }
	params_stream_insert_nav_packets { ap_vld {  { params_stream_insert_nav_packets out_data 1 32 }  { params_stream_insert_nav_packets_ap_vld out_vld 1 1 } } }
	params_video_encoding { ap_ovld {  { params_video_encoding_i in_data 0 32 }  { params_video_encoding_o out_data 1 32 }  { params_video_encoding_o_ap_vld out_vld 1 1 } } }
	busy { ap_none {  { busy in_data 0 32 } } }
	ctrl_id { ap_none {  { ctrl_id in_data 0 32 } } }
	ctrl_value { ap_ovld {  { ctrl_value_i in_data 0 32 }  { ctrl_value_o out_data 1 32 }  { ctrl_value_o_ap_vld out_vld 1 1 } } }
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
