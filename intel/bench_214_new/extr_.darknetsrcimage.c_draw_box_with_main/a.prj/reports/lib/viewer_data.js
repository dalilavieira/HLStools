var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":502189928, "type":"component", "children":[{"name":"main.B0", "id":502369456, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":502189928, "type":"component", "children":[{"name":"Stream Read", "id":502380056, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.darknetsrcimage.c_draw_box_with_main/extr_.darknetsrcimage.c_draw_box_with_main.c", "line":54}]], "type":"inst"}]}, {"name":"call.main", "id":502178088, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":502178088, "to":502380056}]}';
var blockJSON='{"502369456":{"nodes":[{"name":"RD", "id":504856720, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.darknetsrcimage.c_draw_box_with_main/extr_.darknetsrcimage.c_draw_box_with_main.c", "line":54}]], "type":"inst"}, {"name":"Feedback", "id":505958544, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.darknetsrcimage.c_draw_box_with_main/extr_.darknetsrcimage.c_draw_box_with_main.c", "line":54}]], "type":"inst"}, {"name":"?", "id":506227904, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.darknetsrcimage.c_draw_box_with_main/extr_.darknetsrcimage.c_draw_box_with_main.c", "line":54}]], "type":"inst"}], "links":[{"from":505958544, "to":506227904, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"502189928":{"nodes":[{"name":"main.B0", "id":502369456, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":506227904, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.darknetsrcimage.c_draw_box_with_main/extr_.darknetsrcimage.c_draw_box_with_main.c", "line":54}]], "type":"inst"}, {"name":"RD", "id":504856720, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.darknetsrcimage.c_draw_box_with_main/extr_.darknetsrcimage.c_draw_box_with_main.c", "line":54}]], "type":"inst"}]}], "links":[]}}';