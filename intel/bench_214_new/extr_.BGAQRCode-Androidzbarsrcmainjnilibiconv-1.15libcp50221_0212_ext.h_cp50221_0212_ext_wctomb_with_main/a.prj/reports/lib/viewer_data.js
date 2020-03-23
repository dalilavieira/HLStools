var pipelineJSON='{"1042540016":{"nodes":[{"name":"Entry", "id":1043320880, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":1043400048, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":1039971864, "type":"component", "children":[{"name":"main.B1.start", "id":1040143184, "type":"bb", "children":[{"name":"Cluster 0", "id":1042540016, "type":"cluster"}]}, {"name":"main.B0.runOnce", "id":1040143040, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":1039971864, "type":"component", "children":[{"name":"Stream Read", "id":1040195112, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":127}]], "type":"inst"}, {"name":"Stream Write", "id":1040123592, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":133}]], "type":"inst"}]}, {"name":"call.main", "id":1039970232, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"return.main", "id":1039971704, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":1039970232, "to":1040195112}, {"from":1040123592, "to":1039971704}, {"from":1040195112, "to":1040123592}]}';
var blockJSON='{"1040143040":{"nodes":[{"name":"Feedback", "id":1044086432, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":127}]], "type":"inst"}, {"name":"?", "id":1044407232, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":127}]], "type":"inst"}], "links":[{"from":1044086432, "to":1044407232, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "1040143184":{"nodes":[{"name":"Cluster 0", "id":1042540016, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":1042547008, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":1042745712, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":127}]], "type":"inst"}, {"name":"WR", "id":1043050768, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":133}]], "type":"inst"}], "links":[{"from":1042745712, "to":1043050768, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"1039971864":{"nodes":[{"name":"main.B0.runOnce", "id":1040143040, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":1044407232, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":127}]], "type":"inst"}]}, {"name":"main.B1.start", "id":1040143184, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":1042540016, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":1043400048, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":1042745712, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":127}]], "type":"inst"}, {"name":"WR", "id":1043050768, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main/extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c", "line":133}]], "type":"inst"}]}], "links":[]}}';
