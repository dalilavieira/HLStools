var pipelineJSON='{"2979832272":{"nodes":[{"name":"Entry", "id":2980297328, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":2980723392, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":2977261160, "type":"component", "children":[{"name":"main.B1.start", "id":2977432272, "type":"bb", "children":[{"name":"Cluster 0", "id":2979832272, "type":"cluster"}]}, {"name":"main.B0.runOnce", "id":2977432128, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":2977261160, "type":"component", "children":[{"name":"Stream Write", "id":2977489912, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":100}]], "type":"inst"}, {"name":"Stream Read", "id":2977264520, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":88}]], "type":"inst"}]}, {"name":"call.main", "id":2977260872, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"return.main", "id":2977261000, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2977260872, "to":2977264520}, {"from":2977489912, "to":2977261000}, {"from":2977264520, "to":2977489912}]}';
var blockJSON='{"2977432128":{"nodes":[{"name":"Feedback", "id":2981362032, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":88}]], "type":"inst"}, {"name":"?", "id":2982656160, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":88}]], "type":"inst"}], "links":[{"from":2981362032, "to":2982656160, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "2977432272":{"nodes":[{"name":"Cluster 0", "id":2979832272, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":2979839264, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"WR", "id":2979779440, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":100}]], "type":"inst"}, {"name":"RD", "id":2979938880, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":88}]], "type":"inst"}], "links":[{"from":2979938880, "to":2979779440, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2977261160":{"nodes":[{"name":"main.B0.runOnce", "id":2977432128, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2982656160, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":88}]], "type":"inst"}]}, {"name":"main.B1.start", "id":2977432272, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":2979832272, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":2980723392, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":2979938880, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":88}]], "type":"inst"}, {"name":"WR", "id":2979779440, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main/extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c", "line":100}]], "type":"inst"}]}], "links":[]}}';