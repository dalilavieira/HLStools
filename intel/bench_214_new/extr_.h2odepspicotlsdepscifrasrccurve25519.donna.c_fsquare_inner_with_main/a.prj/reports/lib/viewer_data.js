var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":3088769000, "type":"component", "children":[{"name":"main.B0", "id":3088943600, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":3088769000, "type":"component", "children":[{"name":"Stream Read", "id":3088945896, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main.c", "line":75}]], "type":"inst"}]}, {"name":"call.main", "id":3088757160, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":3088757160, "to":3088945896}]}';
var blockJSON='{"3088943600":{"nodes":[{"name":"?", "id":3091268304, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main.c", "line":75}]], "type":"inst"}, {"name":"Feedback", "id":3092485552, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main.c", "line":75}]], "type":"inst"}, {"name":"RD", "id":3092669344, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main.c", "line":75}]], "type":"inst"}], "links":[{"from":3092485552, "to":3091268304, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"3088769000":{"nodes":[{"name":"main.B0", "id":3088943600, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":3092669344, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main.c", "line":75}]], "type":"inst"}, {"name":"?", "id":3091268304, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main/extr_.h2odepspicotlsdepscifrasrccurve25519.donna.c_fsquare_inner_with_main.c", "line":75}]], "type":"inst"}]}], "links":[]}}';
