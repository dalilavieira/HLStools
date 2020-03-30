var pipelineJSON='{"2436289744":{"nodes":[{"name":"Entry", "id":2436313120, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":2438409664, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":2433507192, "type":"component", "children":[{"name":"main.B1.start", "id":2433649360, "type":"bb", "children":[{"name":"Cluster 0", "id":2436289744, "type":"cluster"}]}, {"name":"main.B0.runOnce", "id":2433650992, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":2433507192, "type":"component", "children":[{"name":"Stream Write", "id":2433330264, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":366}]], "type":"inst"}, {"name":"Stream Read", "id":2433329992, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":363}]], "type":"inst"}]}, {"name":"call.main", "id":2433506856, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"return.main", "id":2433507032, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2433506856, "to":2433329992}, {"from":2433330264, "to":2433507032}, {"from":2433329992, "to":2433330264}]}';
var blockJSON='{"2433649360":{"nodes":[{"name":"Cluster 0", "id":2436289744, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":2436296736, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"WR", "id":2436348640, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":366}]], "type":"inst"}, {"name":"RD", "id":2436517904, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":363}]], "type":"inst"}], "links":[{"from":2436517904, "to":2436348640, "details":[{"type":"table", "Width":"1"}]}]}, "2433650992":{"nodes":[{"name":"?", "id":2436862688, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":363}]], "type":"inst"}, {"name":"Feedback", "id":2437306528, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":363}]], "type":"inst"}], "links":[{"from":2437306528, "to":2436862688, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2433507192":{"nodes":[{"name":"main.B0.runOnce", "id":2433650992, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2436862688, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":363}]], "type":"inst"}]}, {"name":"main.B1.start", "id":2433649360, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":2436289744, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":2438409664, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":2436517904, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":363}]], "type":"inst"}, {"name":"WR", "id":2436348640, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main/extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c", "line":366}]], "type":"inst"}]}], "links":[]}}';