var pipelineJSON='{"3486488800":{"nodes":[{"name":"Entry", "id":3487040288, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":3487405888, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":3483951144, "type":"component", "children":[{"name":"main.B0.runOnce", "id":3484106016, "type":"bb"}, {"name":"main.B1.start", "id":3484106160, "type":"bb", "children":[{"name":"Cluster 0", "id":3486488800, "type":"cluster"}]}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":3483951144, "type":"component", "children":[{"name":"Stream Write", "id":3484142776, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"example2/example2.c", "line":20}]], "type":"inst"}, {"name":"Stream Read", "id":3484142504, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"example2/example2.c", "line":13}]], "type":"inst"}]}, {"name":"return.main", "id":3483935800, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"call.main", "id":3483946408, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":3484142776, "to":3483935800}, {"from":3483946408, "to":3484142504}, {"from":3484142504, "to":3484142776}]}';
var blockJSON='{"3484106016":{"nodes":[{"name":"?", "id":3487018112, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"example2/example2.c", "line":13}]], "type":"inst"}, {"name":"Feedback", "id":3489208192, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"example2/example2.c", "line":13}]], "type":"inst"}], "links":[{"from":3489208192, "to":3487018112, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "3484106160":{"nodes":[{"name":"Cluster 0", "id":3486488800, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":3486495792, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"WR", "id":3487308752, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"example2/example2.c", "line":20}]], "type":"inst"}, {"name":"RD", "id":3487412976, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"example2/example2.c", "line":13}]], "type":"inst"}], "links":[{"from":3487412976, "to":3487308752, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"3483951144":{"nodes":[{"name":"main.B0.runOnce", "id":3484106016, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":3487018112, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"example2/example2.c", "line":13}]], "type":"inst"}]}, {"name":"main.B1.start", "id":3484106160, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":3487412976, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"example2/example2.c", "line":13}]], "type":"inst"}, {"name":"WR", "id":3487308752, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"example2/example2.c", "line":20}]], "type":"inst"}, {"name":"Cluster 0", "id":3486488800, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":3487405888, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}]}], "links":[]}}';
