var pipelineJSON='{"229022752":{"nodes":[{"name":"Exit", "id":229121376, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}, {"name":"Entry", "id":229522080, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":226481720, "type":"component", "children":[{"name":"main.B0.runOnce", "id":226643008, "type":"bb"}, {"name":"main.B1.start", "id":226643152, "type":"bb", "children":[{"name":"Cluster 0", "id":229022752, "type":"cluster"}]}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":226481720, "type":"component", "children":[{"name":"Stream Read", "id":226490264, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":167}]], "type":"inst"}, {"name":"Stream Write", "id":226490536, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":176}]], "type":"inst"}]}, {"name":"return.main", "id":226466376, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"call.main", "id":226476984, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":226490536, "to":226466376}, {"from":226476984, "to":226490264}, {"from":226490264, "to":226490536}]}';
var blockJSON='{"226643008":{"nodes":[{"name":"Feedback", "id":230008128, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":167}]], "type":"inst"}, {"name":"?", "id":231737952, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":167}]], "type":"inst"}], "links":[{"from":230008128, "to":231737952, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "226643152":{"nodes":[{"name":"Cluster 0", "id":229022752, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":229029744, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":229252720, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":167}]], "type":"inst"}, {"name":"WR", "id":229514576, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":176}]], "type":"inst"}], "links":[{"from":229252720, "to":229514576, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"226481720":{"nodes":[{"name":"main.B0.runOnce", "id":226643008, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":231737952, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":167}]], "type":"inst"}]}, {"name":"main.B1.start", "id":226643152, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":229022752, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":229121376, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":229252720, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":167}]], "type":"inst"}, {"name":"WR", "id":229514576, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main/extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c", "line":176}]], "type":"inst"}]}], "links":[]}}';
