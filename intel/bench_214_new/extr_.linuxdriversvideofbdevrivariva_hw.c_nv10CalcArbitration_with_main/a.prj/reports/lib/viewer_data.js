var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":1980535320, "type":"component", "children":[{"name":"main.B0", "id":1980715504, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":1980535320, "type":"component", "children":[{"name":"Stream Read", "id":1980726392, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main.c", "line":243}]], "type":"inst"}]}, {"name":"call.main", "id":1980523480, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":1980523480, "to":1980726392}]}';
var blockJSON='{"1980715504":{"nodes":[{"name":"RD", "id":1983477536, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main.c", "line":243}]], "type":"inst"}, {"name":"?", "id":1983495648, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main.c", "line":243}]], "type":"inst"}, {"name":"Feedback", "id":1984303952, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main.c", "line":243}]], "type":"inst"}], "links":[{"from":1984303952, "to":1983495648, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"1980535320":{"nodes":[{"name":"main.B0", "id":1980715504, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":1983495648, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main.c", "line":243}]], "type":"inst"}, {"name":"RD", "id":1983477536, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main/extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main.c", "line":243}]], "type":"inst"}]}], "links":[]}}';