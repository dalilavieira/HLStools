var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":1252321672, "type":"component", "children":[{"name":"main.B0", "id":1252517552, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":1252321672, "type":"component", "children":[{"name":"Stream Read", "id":1252533640, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main.c", "line":104}]], "type":"inst"}]}, {"name":"call.main", "id":1252321560, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":1252321560, "to":1252533640}]}';
var blockJSON='{"1252517552":{"nodes":[{"name":"?", "id":1254943296, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main.c", "line":104}]], "type":"inst"}, {"name":"RD", "id":1255295872, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main.c", "line":104}]], "type":"inst"}, {"name":"Feedback", "id":1255813520, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main.c", "line":104}]], "type":"inst"}], "links":[{"from":1255813520, "to":1254943296, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"1252321672":{"nodes":[{"name":"main.B0", "id":1252517552, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":1255295872, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main.c", "line":104}]], "type":"inst"}, {"name":"?", "id":1254943296, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main/extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main.c", "line":104}]], "type":"inst"}]}], "links":[]}}';
