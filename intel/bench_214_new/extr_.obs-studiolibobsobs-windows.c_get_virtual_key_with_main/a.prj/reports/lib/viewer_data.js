var pipelineJSON='{"4041270576":{"nodes":[{"name":"Entry", "id":4041299888, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":4043990416, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":4038572456, "type":"component", "children":[{"name":"main.B0.runOnce", "id":4038666128, "type":"bb"}, {"name":"main.B1.start", "id":4038664496, "type":"bb", "children":[{"name":"Cluster 0", "id":4041270576, "type":"cluster"}]}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":4038572456, "type":"component", "children":[{"name":"Stream Write", "id":4038672040, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":370}]], "type":"inst"}, {"name":"Stream Read", "id":4038671768, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":367}]], "type":"inst"}]}, {"name":"call.main", "id":4038572120, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"return.main", "id":4038572296, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":4038572120, "to":4038671768}, {"from":4038672040, "to":4038572296}, {"from":4038671768, "to":4038672040}]}';
var blockJSON='{"4038664496":{"nodes":[{"name":"Cluster 0", "id":4041270576, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":4041277568, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"WR", "id":4042772896, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":370}]], "type":"inst"}, {"name":"RD", "id":4043040944, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":367}]], "type":"inst"}], "links":[{"from":4043040944, "to":4042772896, "details":[{"type":"table", "Width":"1"}]}]}, "4038666128":{"nodes":[{"name":"?", "id":4041415936, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":367}]], "type":"inst"}, {"name":"Feedback", "id":4042035504, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":367}]], "type":"inst"}], "links":[{"from":4042035504, "to":4041415936, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"4038572456":{"nodes":[{"name":"main.B0.runOnce", "id":4038666128, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":4041415936, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":367}]], "type":"inst"}]}, {"name":"main.B1.start", "id":4038664496, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":4043040944, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":367}]], "type":"inst"}, {"name":"WR", "id":4042772896, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main/extr_.obs-studiolibobsobs-windows.c_get_virtual_key_with_main.c", "line":370}]], "type":"inst"}, {"name":"Cluster 0", "id":4041270576, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":4043990416, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}]}], "links":[]}}';