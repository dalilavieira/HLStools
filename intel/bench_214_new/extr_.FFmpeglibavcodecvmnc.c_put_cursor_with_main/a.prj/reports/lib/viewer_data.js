var pipelineJSON='{"630464368":{"nodes":[{"name":"Exit", "id":630488736, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}, {"name":"Entry", "id":631223296, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":627925816, "type":"component", "children":[{"name":"main.B0.runOnce", "id":628080640, "type":"bb"}, {"name":"main.B1.start", "id":628080720, "type":"bb", "children":[{"name":"Cluster 0", "id":630464368, "type":"cluster"}]}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":627925816, "type":"component", "children":[{"name":"Stream Write", "id":628118424, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":87}]], "type":"inst"}, {"name":"Stream Read", "id":628118152, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":80}]], "type":"inst"}]}, {"name":"return.main", "id":627910472, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"call.main", "id":627921080, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":628118424, "to":627910472}, {"from":627921080, "to":628118152}, {"from":628118152, "to":628118424}]}';
var blockJSON='{"628080640":{"nodes":[{"name":"?", "id":631001664, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":80}]], "type":"inst"}, {"name":"Feedback", "id":632625680, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":80}]], "type":"inst"}], "links":[{"from":632625680, "to":631001664, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "628080720":{"nodes":[{"name":"Cluster 0", "id":630464368, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":630471344, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"WR", "id":631168336, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":87}]], "type":"inst"}, {"name":"RD", "id":632739520, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":80}]], "type":"inst"}], "links":[{"from":632739520, "to":631168336, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"627925816":{"nodes":[{"name":"main.B0.runOnce", "id":628080640, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":631001664, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":80}]], "type":"inst"}]}, {"name":"main.B1.start", "id":628080720, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":632739520, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":80}]], "type":"inst"}, {"name":"WR", "id":631168336, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main/extr_.FFmpeglibavcodecvmnc.c_put_cursor_with_main.c", "line":87}]], "type":"inst"}, {"name":"Cluster 0", "id":630464368, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":630488736, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}]}], "links":[]}}';