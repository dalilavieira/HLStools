var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":2910241944, "type":"component", "children":[{"name":"main.B0", "id":2910421440, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":2910241944, "type":"component", "children":[{"name":"Stream Read", "id":2910439032, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main.c", "line":114}]], "type":"inst"}]}, {"name":"call.main", "id":2910230104, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2910230104, "to":2910439032}]}';
var blockJSON='{"2910421440":{"nodes":[{"name":"RD", "id":2911292672, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main.c", "line":114}]], "type":"inst"}, {"name":"?", "id":2914098432, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main.c", "line":114}]], "type":"inst"}, {"name":"Feedback", "id":2914214416, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main.c", "line":114}]], "type":"inst"}], "links":[{"from":2914214416, "to":2914098432, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2910241944":{"nodes":[{"name":"main.B0", "id":2910421440, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2914098432, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main.c", "line":114}]], "type":"inst"}, {"name":"RD", "id":2911292672, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main/extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main.c", "line":114}]], "type":"inst"}]}], "links":[]}}';