var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":1347946216, "type":"component", "children":[{"name":"main.B0", "id":1348100656, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":1347946216, "type":"component", "children":[{"name":"Stream Read", "id":1348159768, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main.c", "line":87}]], "type":"inst"}]}, {"name":"call.main", "id":1347946104, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":1347946104, "to":1348159768}]}';
var blockJSON='{"1348100656":{"nodes":[{"name":"Feedback", "id":1351733840, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main.c", "line":87}]], "type":"inst"}, {"name":"RD", "id":1351818448, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main.c", "line":87}]], "type":"inst"}, {"name":"?", "id":1351982848, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main.c", "line":87}]], "type":"inst"}], "links":[{"from":1351733840, "to":1351982848, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"1347946216":{"nodes":[{"name":"main.B0", "id":1348100656, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":1351982848, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main.c", "line":87}]], "type":"inst"}, {"name":"RD", "id":1351818448, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main/extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main.c", "line":87}]], "type":"inst"}]}], "links":[]}}';
