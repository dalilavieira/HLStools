var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":4212832120, "type":"component", "children":[{"name":"main.B0", "id":4213011440, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":4212832120, "type":"component", "children":[{"name":"Stream Read", "id":4213036456, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c", "line":127}]], "type":"inst"}]}, {"name":"call.main", "id":4212817800, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":4212817800, "to":4213036456}]}';
var blockJSON='{"4213011440":{"nodes":[{"name":"RD", "id":4215662512, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c", "line":127}]], "type":"inst"}, {"name":"Feedback", "id":4216610960, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c", "line":127}]], "type":"inst"}, {"name":"?", "id":4216682864, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c", "line":127}]], "type":"inst"}], "links":[{"from":4216610960, "to":4216682864, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"4212832120":{"nodes":[{"name":"main.B0", "id":4213011440, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":4216682864, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c", "line":127}]], "type":"inst"}, {"name":"RD", "id":4215662512, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main/extr_.linuxdriversvideofbdevsavagesavagefb_driver.c_vgaHWInit_with_main.c", "line":127}]], "type":"inst"}]}], "links":[]}}';