var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":704302872, "type":"component", "children":[{"name":"main.B0", "id":704482400, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":704302872, "type":"component", "children":[{"name":"Stream Read", "id":704492312, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main.c", "line":46}]], "type":"inst"}]}, {"name":"call.main", "id":704291032, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":704291032, "to":704492312}]}';
var blockJSON='{"704482400":{"nodes":[{"name":"RD", "id":705350368, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main.c", "line":46}]], "type":"inst"}, {"name":"?", "id":707182048, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main.c", "line":46}]], "type":"inst"}, {"name":"Feedback", "id":708018496, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main.c", "line":46}]], "type":"inst"}], "links":[{"from":708018496, "to":707182048, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"704302872":{"nodes":[{"name":"main.B0", "id":704482400, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":707182048, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main.c", "line":46}]], "type":"inst"}, {"name":"RD", "id":705350368, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main/extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main.c", "line":46}]], "type":"inst"}]}], "links":[]}}';
