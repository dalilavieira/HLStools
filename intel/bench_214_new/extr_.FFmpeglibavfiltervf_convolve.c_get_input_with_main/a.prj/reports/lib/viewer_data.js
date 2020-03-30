var pipelineJSON='{"2480286672":{"nodes":[{"name":"Entry", "id":2480838000, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":2482624240, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":2477745112, "type":"component", "children":[{"name":"main.B1.start", "id":2477900048, "type":"bb", "children":[{"name":"Cluster 0", "id":2480286672, "type":"cluster"}]}, {"name":"main.B0.runOnce", "id":2477899968, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":2477745112, "type":"component", "children":[{"name":"Stream Write", "id":2477942024, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":111}]], "type":"inst"}, {"name":"Stream Read", "id":2477941752, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":101}]], "type":"inst"}]}, {"name":"return.main", "id":2477729768, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"call.main", "id":2477740376, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2477942024, "to":2477729768}, {"from":2477740376, "to":2477941752}, {"from":2477941752, "to":2477942024}]}';
var blockJSON='{"2477899968":{"nodes":[{"name":"?", "id":2482731008, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":101}]], "type":"inst"}, {"name":"Feedback", "id":2483019888, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":101}]], "type":"inst"}], "links":[{"from":2483019888, "to":2482731008, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "2477900048":{"nodes":[{"name":"Cluster 0", "id":2480286672, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":2480293664, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"WR", "id":2482577488, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":111}]], "type":"inst"}, {"name":"RD", "id":2483021408, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":101}]], "type":"inst"}], "links":[{"from":2483021408, "to":2482577488, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2477745112":{"nodes":[{"name":"main.B0.runOnce", "id":2477899968, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2482731008, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":101}]], "type":"inst"}]}, {"name":"main.B1.start", "id":2477900048, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":2483021408, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":101}]], "type":"inst"}, {"name":"WR", "id":2482577488, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main/extr_.FFmpeglibavfiltervf_convolve.c_get_input_with_main.c", "line":111}]], "type":"inst"}, {"name":"Cluster 0", "id":2480286672, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":2482624240, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}]}], "links":[]}}';