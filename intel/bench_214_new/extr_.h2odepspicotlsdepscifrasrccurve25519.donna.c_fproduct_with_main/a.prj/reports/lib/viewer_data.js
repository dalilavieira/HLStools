var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":2016309240, "type":"component", "children":[{"name":"main.B0", "id":2016483856, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":2016309240, "type":"component", "children":[{"name":"Stream Read", "id":2016486152, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main.c", "line":120}]], "type":"inst"}]}, {"name":"call.main", "id":2016297400, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2016297400, "to":2016486152}]}';
var blockJSON='{"2016483856":{"nodes":[{"name":"RD", "id":2019776576, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main.c", "line":120}]], "type":"inst"}, {"name":"Feedback", "id":2019959696, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main.c", "line":120}]], "type":"inst"}, {"name":"?", "id":2020348384, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main.c", "line":120}]], "type":"inst"}], "links":[{"from":2019959696, "to":2020348384, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2016309240":{"nodes":[{"name":"main.B0", "id":2016483856, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2020348384, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main.c", "line":120}]], "type":"inst"}, {"name":"RD", "id":2019776576, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fproduct_with_main.c", "line":120}]], "type":"inst"}]}], "links":[]}}';
