var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":81390136, "type":"component", "children":[{"name":"main.B0", "id":81583472, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":81390136, "type":"component", "children":[{"name":"Stream Read", "id":81598952, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main.c", "line":144}]], "type":"inst"}]}, {"name":"call.main", "id":81400568, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":81400568, "to":81598952}]}';
var blockJSON='{"81583472":{"nodes":[{"name":"?", "id":84251072, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main.c", "line":144}]], "type":"inst"}, {"name":"Feedback", "id":84919760, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main.c", "line":144}]], "type":"inst"}, {"name":"RD", "id":85253920, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main.c", "line":144}]], "type":"inst"}], "links":[{"from":84919760, "to":84251072, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"81390136":{"nodes":[{"name":"main.B0", "id":81583472, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":85253920, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main.c", "line":144}]], "type":"inst"}, {"name":"?", "id":84251072, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main/extr_.reactosdllcpldeskpreview.c_CalculateItemSize_with_main.c", "line":144}]], "type":"inst"}]}], "links":[]}}';
