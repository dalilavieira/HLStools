var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":372588328, "type":"component", "children":[{"name":"main.B0", "id":372769504, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":372588328, "type":"component", "children":[{"name":"Stream Read", "id":372777896, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main.c", "line":63}]], "type":"inst"}]}, {"name":"call.main", "id":372576488, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":372576488, "to":372777896}]}';
var blockJSON='{"372769504":{"nodes":[{"name":"Feedback", "id":375918416, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main.c", "line":63}]], "type":"inst"}, {"name":"RD", "id":376109328, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main.c", "line":63}]], "type":"inst"}, {"name":"?", "id":376305088, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main.c", "line":63}]], "type":"inst"}], "links":[{"from":375918416, "to":376305088, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"372588328":{"nodes":[{"name":"main.B0", "id":372769504, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":376305088, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main.c", "line":63}]], "type":"inst"}, {"name":"RD", "id":376109328, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main/extr_.FFmpeglibavcodecmdct15.c_fft5_with_main.c", "line":63}]], "type":"inst"}]}], "links":[]}}';
