var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":264210664, "type":"component", "children":[{"name":"main.B0", "id":264363664, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":264210664, "type":"component", "children":[{"name":"Stream Read", "id":264422408, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main.c", "line":89}]], "type":"inst"}]}, {"name":"call.main", "id":264207704, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":264207704, "to":264422408}]}';
var blockJSON='{"264363664":{"nodes":[{"name":"Feedback", "id":267757968, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main.c", "line":89}]], "type":"inst"}, {"name":"RD", "id":267866880, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main.c", "line":89}]], "type":"inst"}, {"name":"?", "id":268202976, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main.c", "line":89}]], "type":"inst"}], "links":[{"from":267757968, "to":268202976, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"264210664":{"nodes":[{"name":"main.B0", "id":264363664, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":268202976, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main.c", "line":89}]], "type":"inst"}, {"name":"RD", "id":267866880, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main/extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main.c", "line":89}]], "type":"inst"}]}], "links":[]}}';