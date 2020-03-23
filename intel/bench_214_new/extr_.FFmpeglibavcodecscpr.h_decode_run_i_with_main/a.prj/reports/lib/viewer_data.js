var pipelineJSON='{"2984897280":{"nodes":[{"name":"Exit", "id":2983378288, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}, {"name":"Entry", "id":2985002816, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":2982352184, "type":"component", "children":[{"name":"main.B0.runOnce", "id":2982359856, "type":"bb"}, {"name":"main.B1.start", "id":2982359936, "type":"bb", "children":[{"name":"Cluster 0", "id":2984897280, "type":"cluster"}]}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":2982352184, "type":"component", "children":[{"name":"Stream Read", "id":2982532120, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":163}]], "type":"inst"}, {"name":"Stream Write", "id":2982554504, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":179}]], "type":"inst"}]}, {"name":"call.main", "id":2982336520, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"return.main", "id":2982349576, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2982336520, "to":2982532120}, {"from":2982554504, "to":2982349576}, {"from":2982532120, "to":2982554504}]}';
var blockJSON='{"2982359856":{"nodes":[{"name":"Feedback", "id":2987126112, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":163}]], "type":"inst"}, {"name":"?", "id":2987701008, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":163}]], "type":"inst"}], "links":[{"from":2987126112, "to":2987701008, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "2982359936":{"nodes":[{"name":"Cluster 0", "id":2984897280, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":2984904272, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":2984844800, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":163}]], "type":"inst"}, {"name":"WR", "id":2985409328, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":179}]], "type":"inst"}], "links":[{"from":2984844800, "to":2985409328, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2982352184":{"nodes":[{"name":"main.B0.runOnce", "id":2982359856, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2987701008, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":163}]], "type":"inst"}]}, {"name":"main.B1.start", "id":2982359936, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":2984897280, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":2983378288, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":2984844800, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":163}]], "type":"inst"}, {"name":"WR", "id":2985409328, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main/extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c", "line":179}]], "type":"inst"}]}], "links":[]}}';
