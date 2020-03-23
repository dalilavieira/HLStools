var pipelineJSON='{"2961541872":{"nodes":[{"name":"Entry", "id":2961489008, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":2963257552, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":2959000296, "type":"component", "children":[{"name":"main.B1.start", "id":2959155312, "type":"bb", "children":[{"name":"Cluster 0", "id":2961541872, "type":"cluster"}]}, {"name":"main.B0.runOnce", "id":2959155168, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":2959000296, "type":"component", "children":[{"name":"Stream Write", "id":2959196920, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":68}]], "type":"inst"}, {"name":"Stream Read", "id":2959196648, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":65}]], "type":"inst"}]}, {"name":"return.main", "id":2958984952, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"call.main", "id":2958995560, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2959196920, "to":2958984952}, {"from":2958995560, "to":2959196648}, {"from":2959196648, "to":2959196920}]}';
var blockJSON='{"2959155168":{"nodes":[{"name":"?", "id":2963595984, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":65}]], "type":"inst"}, {"name":"Feedback", "id":2964275264, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":65}]], "type":"inst"}], "links":[{"from":2964275264, "to":2963595984, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "2959155312":{"nodes":[{"name":"Cluster 0", "id":2961541872, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":2961548864, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"WR", "id":2962007200, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":68}]], "type":"inst"}, {"name":"RD", "id":2962491040, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":65}]], "type":"inst"}], "links":[{"from":2962491040, "to":2962007200, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2959000296":{"nodes":[{"name":"main.B0.runOnce", "id":2959155168, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2963595984, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":65}]], "type":"inst"}]}, {"name":"main.B1.start", "id":2959155312, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":2961541872, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":2963257552, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":2962491040, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":65}]], "type":"inst"}, {"name":"WR", "id":2962007200, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main/extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c", "line":68}]], "type":"inst"}]}], "links":[]}}';
