var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":3705704936, "type":"component", "children":[{"name":"main.B0", "id":3705885120, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":3705704936, "type":"component", "children":[{"name":"Stream Read", "id":3705895784, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main.c", "line":166}]], "type":"inst"}]}, {"name":"call.main", "id":3705693096, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":3705693096, "to":3705895784}]}';
var blockJSON='{"3705885120":{"nodes":[{"name":"RD", "id":3709181248, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main.c", "line":166}]], "type":"inst"}, {"name":"?", "id":3709343360, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main.c", "line":166}]], "type":"inst"}, {"name":"Feedback", "id":3709743872, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main.c", "line":166}]], "type":"inst"}], "links":[{"from":3709743872, "to":3709343360, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"3705704936":{"nodes":[{"name":"main.B0", "id":3705885120, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":3709343360, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main.c", "line":166}]], "type":"inst"}, {"name":"RD", "id":3709181248, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv4CalcArbitration_with_main.c", "line":166}]], "type":"inst"}]}], "links":[]}}';