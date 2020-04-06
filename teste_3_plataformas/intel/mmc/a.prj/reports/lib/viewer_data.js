var pipelineJSON='{"1889860848":{"nodes":[{"name":"Exit", "id":1890492864, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}, {"name":"Entry", "id":1896961104, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}], "links":[]}, "1890186688":{"nodes":[{"name":"Loop Orch", "id":1889888320, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"Exit", "id":1889947488, "start":"2", "end":"5", "details":[{"type":"table", "Exit Start Cycle":"2", "Exit Latency":"3", "Exit FIFO Depth":"8", "Exit FIFO Width":"24", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"\'F1\'", "id":1890439104, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'F1\'", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":12}]], "type":"inst"}, {"name":"FFwd Dest", "id":1890485376, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Select", "id":1890546832, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":10}]], "type":"inst"}, {"name":"FFwd Dest", "id":1890547168, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":6}]], "type":"inst"}, {"name":"Feedback", "id":1890660432, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"\'F1\'", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"32", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"Select", "id":1891776416, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":12}]], "type":"inst"}, {"name":"Compare", "id":1891776752, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"Entry", "id":1891977920, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Xor", "id":1892071376, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":1892114336, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":1892234768, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Select", "id":1892248560, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"+", "id":1892252800, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"Feedback", "id":1892253136, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"\'F2\'", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"32", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"FFwd Src", "id":1892275360, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"Compare", "id":1892296000, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":1892296336, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"\'F2\'", "id":1893969312, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'F2\'", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":10}]], "type":"inst"}, {"name":"Select", "id":1896895152, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"+", "id":1896895488, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}], "links":[{"from":1889888320, "to":1889947488, "details":[{"type":"table", "Width":"4"}]}, {"from":1889888320, "to":1890660432, "details":[{"type":"table", "Width":"4"}]}, {"from":1889888320, "to":1892071376, "reverse":1, "details":[{"type":"table", "Width":"4"}]}, {"from":1889888320, "to":1892253136, "details":[{"type":"table", "Width":"4"}]}, {"from":1890439104, "to":1891776416, "details":[{"type":"table", "Width":"32"}]}, {"from":1890485376, "to":1896895152, "details":[{"type":"table", "Width":"32"}]}, {"from":1890546832, "to":1891776752, "details":[{"type":"table", "Width":"32"}]}, {"from":1890546832, "to":1892252800, "details":[{"type":"table", "Width":"32"}]}, {"from":1890547168, "to":1891776416, "details":[{"type":"table", "Width":"32"}]}, {"from":1890660432, "to":1890439104, "reverse":1, "details":[{"type":"table", "Width":"32"}]}, {"from":1891776416, "to":1891776752, "details":[{"type":"table", "Width":"32"}]}, {"from":1891776416, "to":1896895488, "details":[{"type":"table", "Width":"32"}]}, {"from":1891776752, "to":1892248560, "details":[{"type":"table", "Width":"1"}]}, {"from":1891776752, "to":1896895152, "details":[{"type":"table", "Width":"1"}]}, {"from":1891977920, "to":1889888320, "details":[{"type":"table", "Width":"16"}]}, {"from":1891977920, "to":1889947488, "details":[{"type":"table", "Width":"16"}]}, {"from":1891977920, "to":1890439104, "details":[{"type":"table", "Width":"16"}]}, {"from":1891977920, "to":1890546832, "details":[{"type":"table", "Width":"16"}]}, {"from":1891977920, "to":1890660432, "details":[{"type":"table", "Width":"16"}]}, {"from":1891977920, "to":1891776416, "details":[{"type":"table", "Width":"16"}]}, {"from":1891977920, "to":1892253136, "details":[{"type":"table", "Width":"16"}]}, {"from":1891977920, "to":1893969312, "details":[{"type":"table", "Width":"16"}]}, {"from":1892071376, "to":1889888320, "details":[{"type":"table", "Width":"1"}]}, {"from":1892071376, "to":1892275360, "details":[{"type":"table", "Width":"1"}]}, {"from":1892114336, "to":1890546832, "details":[{"type":"table", "Width":"32"}]}, {"from":1892234768, "to":1892248560, "details":[{"type":"table", "Width":"32"}]}, {"from":1892248560, "to":1892252800, "details":[{"type":"table", "Width":"32"}]}, {"from":1892252800, "to":1892253136, "details":[{"type":"table", "Width":"32"}]}, {"from":1892252800, "to":1892296000, "details":[{"type":"table", "Width":"32"}]}, {"from":1892253136, "to":1893969312, "reverse":1, "details":[{"type":"table", "Width":"32"}]}, {"from":1892296000, "to":1889888320, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":1892296336, "to":1889888320, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":1893969312, "to":1890546832, "details":[{"type":"table", "Width":"32"}]}, {"from":1896895152, "to":1896895488, "details":[{"type":"table", "Width":"32"}]}, {"from":1896895488, "to":1890660432, "details":[{"type":"table", "Width":"32"}]}, {"from":1896895488, "to":1892275360, "details":[{"type":"table", "Width":"32"}]}, {"from":1896895488, "to":1892296000, "details":[{"type":"table", "Width":"32"}]}]}}';
var treeJSON='{"nodes":[{"name":"mmc", "id":1886990936, "type":"component", "children":[{"name":"mmc.B2", "id":1887170816, "type":"bb", "children":[{"name":"Cluster 1", "id":1890186688, "type":"cluster"}]}, {"name":"mmc.B1.start", "id":1887151712, "type":"bb", "children":[{"name":"Cluster 0", "id":1889860848, "type":"cluster"}]}, {"name":"mmc.B0.runOnce", "id":1887151568, "type":"bb"}, {"name":"mmc.B3", "id":1887170896, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"mmc", "id":1886990936, "type":"component", "children":[{"name":"Stream Read", "id":1887196088, "details":[{"type":"table", "Basic Block":"mmc.B1.start", "Width":"64 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":5}]], "type":"inst"}, {"name":"Stream Write", "id":1887216504, "details":[{"type":"table", "Basic Block":"mmc.B3", "Width":"32 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":14}]], "type":"inst"}]}, {"name":"return.mmc", "id":1886984456, "details":[{"type":"table", "Width":"32 bits", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"32 bits", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"call.mmc", "id":1886986024, "details":[{"type":"table", "Width":"64 bits", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"64 bits", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":1887216504, "to":1886984456}, {"from":1886986024, "to":1887196088}, {"from":1887196088, "to":1887216504}]}';
var blockJSON='{"1887151568":{"nodes":[{"name":"?", "id":1892299520, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"mmc/mmc.c", "line":5}]], "type":"inst"}, {"name":"Feedback", "id":1895364640, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"mmc/mmc.c", "line":5}]], "type":"inst"}], "links":[{"from":1895364640, "to":1892299520, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "1887151712":{"nodes":[{"name":"Cluster 0", "id":1889860848, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":1889867840, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":1890369024, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"64 bits", "Depth":"0", "Stream Name":"call.mmc", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":5}]], "type":"inst"}, {"name":"FFwd Src", "id":1890737600, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Src", "id":1892091936, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"Compare", "id":1895258320, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"FFwd Src", "id":1895258656, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}], "links":[{"from":1890369024, "to":1890737600, "details":[{"type":"table", "Width":"64"}]}, {"from":1890369024, "to":1895258320, "details":[{"type":"table", "Width":"64"}]}, {"from":1890369024, "to":1895258656, "details":[{"type":"table", "Width":"64"}]}, {"from":1895258320, "to":1892091936, "details":[{"type":"table", "Width":"1"}]}]}, "1887170816":{"nodes":[{"name":"Cluster 1", "id":1890186688, "start":"1", "end":"5", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_while_body_mmcs_c0_enter182_mmc1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"4"}], "type":"bb", "children":[{"name":"Logic", "id":1890192992, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"1"}], "type":"inst"}, {"name":"Exit", "id":1890570976, "details":[{"type":"table", "Exit Start Cycle":"2", "Exit Latency":"3", "Exit FIFO Depth":"8", "Exit FIFO Width":"24", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"bb"}]}, {"name":"Loop Orch", "id":1890185168, "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}], "links":[{"from":1890192992, "to":1890570976}, {"from":1890185168, "to":1890192992, "details":[{"type":"table", "Width":"1"}]}]}, "1887170896":{"nodes":[{"name":"FFwd Dest", "id":1890277520, "start":"0", "end":"1.2e-38", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":1891882480, "start":"0", "end":"1.2e-38", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"Select", "id":1891994752, "start":"0", "end":"1.2e-38", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"WR", "id":1891995088, "start":"0", "end":"1.2e-38", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.mmc", "Stall-free":"No", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":14}]], "type":"inst"}, {"name":"FFwd Dest", "id":1892169008, "start":"0", "end":"1.2e-38", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}], "links":[{"from":1890277520, "to":1891994752, "details":[{"type":"table", "Width":"32"}]}, {"from":1891882480, "to":1891994752, "details":[{"type":"table", "Width":"1"}]}, {"from":1891994752, "to":1891995088, "details":[{"type":"table", "Width":"32"}]}, {"from":1892169008, "to":1891994752, "details":[{"type":"table", "Width":"32"}]}]}}';
var scheduleJSON='{"1886990936":{"nodes":[{"name":"mmc.B0.runOnce", "id":1887151568, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":1892299520, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"mmc/mmc.c", "line":5}]], "type":"inst"}]}, {"name":"mmc.B1.start", "id":1887151712, "start":"2", "end":"4", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":1889860848, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":1890492864, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":1890369024, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"64 bits", "Depth":"0", "Stream Name":"call.mmc", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":5}]], "type":"inst"}, {"name":"FFwd Src", "id":1895258656, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"Compare", "id":1895258320, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"FFwd Src", "id":1892091936, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"FFwd Src", "id":1890737600, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}]}, {"name":"mmc.B2", "id":1887170816, "start":"4", "end":"9", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 1", "id":1890186688, "start":"5", "end":"9", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_while_body_mmcs_c0_enter182_mmc1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"4"}], "type":"cluster", "children":[{"name":"\'F2\'", "id":1893969312, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'F2\'", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":10}]], "type":"inst"}, {"name":"\'F1\'", "id":1890439104, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'F1\'", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":12}]], "type":"inst"}, {"name":"FFwd Dest", "id":1890485376, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":1890547168, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":6}]], "type":"inst"}, {"name":"Select", "id":1891776416, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":12}]], "type":"inst"}, {"name":"Xor", "id":1892071376, "start":"6", "end":"6", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":1892114336, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":6}]], "type":"inst"}, {"name":"Select", "id":1890546832, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":10}]], "type":"inst"}, {"name":"Compare", "id":1891776752, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"Select", "id":1896895152, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"+", "id":1896895488, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"FFwd Src", "id":1892275360, "start":"6", "end":"6", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"FFwd Dest", "id":1892234768, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Select", "id":1892248560, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"+", "id":1892252800, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"Compare", "id":1892296000, "start":"6", "end":"6", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":1892296336, "start":"6", "end":"6", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"Exit", "id":1889947488, "start":"6", "end":"9", "details":[{"type":"table", "Exit Start Cycle":"2", "Exit Latency":"3", "Exit FIFO Depth":"8", "Exit FIFO Width":"24", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}]}, {"name":"mmc.B3", "id":1887170896, "start":"9", "end":"9", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"FFwd Dest", "id":1892169008, "start":"9", "end":"9", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"FFwd Dest", "id":1891882480, "start":"9", "end":"9", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":1890277520, "start":"9", "end":"9", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":6}]], "type":"inst"}, {"name":"Select", "id":1891994752, "start":"9", "end":"9", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":9}]], "type":"inst"}, {"name":"WR", "id":1891995088, "start":"9", "end":"9", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"32 bits", "Depth":"0", "Stream Name":"return.mmc", "Stall-free":"No", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"mmc/mmc.c", "line":14}]], "type":"inst"}]}], "links":[]}}';
