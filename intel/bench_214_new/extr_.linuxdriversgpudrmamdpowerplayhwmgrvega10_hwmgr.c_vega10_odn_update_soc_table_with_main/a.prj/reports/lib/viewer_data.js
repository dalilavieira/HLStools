var pipelineJSON='{"3019211616":{"nodes":[{"name":"Entry", "id":3019993712, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":3021548928, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"main", "id":3016647496, "type":"component", "children":[{"name":"main.B1.start", "id":3016803872, "type":"bb", "children":[{"name":"Cluster 0", "id":3019211616, "type":"cluster"}]}, {"name":"main.B0.runOnce", "id":3016803728, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":3016647496, "type":"component", "children":[{"name":"Stream Write", "id":3016643144, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":105}]], "type":"inst"}, {"name":"Stream Read", "id":3016642872, "details":[{"type":"table", "Basic Block":"main.B1.start", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":101}]], "type":"inst"}]}, {"name":"call.main", "id":3016646824, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"return.main", "id":3016647384, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":3016646824, "to":3016642872}, {"from":3016643144, "to":3016647384}, {"from":3016642872, "to":3016643144}]}';
var blockJSON='{"3016803728":{"nodes":[{"name":"?", "id":3019741360, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":101}]], "type":"inst"}, {"name":"Feedback", "id":3021943088, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":101}]], "type":"inst"}], "links":[{"from":3021943088, "to":3019741360, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "3016803872":{"nodes":[{"name":"Cluster 0", "id":3019211616, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":3019218608, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"WR", "id":3019317152, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":105}]], "type":"inst"}, {"name":"RD", "id":3019441680, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":101}]], "type":"inst"}], "links":[{"from":3019441680, "to":3019317152, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"3016647496":{"nodes":[{"name":"main.B0.runOnce", "id":3016803728, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":3019741360, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":101}]], "type":"inst"}]}, {"name":"main.B1.start", "id":3016803872, "start":"2", "end":"3", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":3019441680, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":101}]], "type":"inst"}, {"name":"WR", "id":3019317152, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.main", "Stall-free":"No", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main/extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c", "line":105}]], "type":"inst"}, {"name":"Cluster 0", "id":3019211616, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":3021548928, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}]}], "links":[]}}';
