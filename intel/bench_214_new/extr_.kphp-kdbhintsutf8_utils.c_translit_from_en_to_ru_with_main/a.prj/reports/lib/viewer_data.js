var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":2159593096, "type":"component", "children":[{"name":"main.B0", "id":2159745296, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":2159593096, "type":"component", "children":[{"name":"Stream Read", "id":2159716152, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c", "line":322}]], "type":"inst"}]}, {"name":"call.main", "id":2159592936, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2159592936, "to":2159716152}]}';
var blockJSON='{"2159745296":{"nodes":[{"name":"RD", "id":2162576880, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c", "line":322}]], "type":"inst"}, {"name":"?", "id":2162577552, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c", "line":322}]], "type":"inst"}, {"name":"Feedback", "id":2163931584, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c", "line":322}]], "type":"inst"}], "links":[{"from":2163931584, "to":2162577552, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2159593096":{"nodes":[{"name":"main.B0", "id":2159745296, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2162577552, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c", "line":322}]], "type":"inst"}, {"name":"RD", "id":2162576880, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main/extr_.kphp-kdbhintsutf8_utils.c_translit_from_en_to_ru_with_main.c", "line":322}]], "type":"inst"}]}], "links":[]}}';
