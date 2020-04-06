var pipelineJSON='{"2060903952":{"nodes":[{"name":"Exit", "id":2063290080, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}, {"name":"Entry", "id":2072106528, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}], "links":[]}, "2061333504":{"nodes":[{"name":"+", "id":2060891328, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Entry", "id":2061043376, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"+", "id":2061874832, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"33-bit Integer Add", "Constant Operand":"-1 (0x1FFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"\'i,j\'", "id":2061875168, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'i,j\'", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":2062050128, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":2062307776, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":2062539968, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"Compare", "id":2063286080, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2065645632, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"3", "Latency":"0"}], "type":"inst"}, {"name":"Loop Orch", "id":2067088192, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2067854464, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2070124896, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"-1 (0xFFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"Feedback", "id":2070227504, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"\'i,j\'", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"32", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Exit", "id":2072174896, "start":"3", "end":"6", "details":[{"type":"table", "Exit Start Cycle":"3", "Exit Latency":"3", "Exit FIFO Depth":"8", "Exit FIFO Width":"256", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"And", "id":2079072608, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"1-bit And", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2079418016, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}], "links":[{"from":2060891328, "to":2063286080, "details":[{"type":"table", "Width":"32"}]}, {"from":2060891328, "to":2070227504, "details":[{"type":"table", "Width":"32"}]}, {"from":2060891328, "to":2072174896, "details":[{"type":"table", "Width":"32"}]}, {"from":2061043376, "to":2061874832, "details":[{"type":"table", "Width":"16"}]}, {"from":2061043376, "to":2061875168, "details":[{"type":"table", "Width":"16"}]}, {"from":2061043376, "to":2067088192, "details":[{"type":"table", "Width":"16"}]}, {"from":2061043376, "to":2070124896, "details":[{"type":"table", "Width":"16"}]}, {"from":2061043376, "to":2070227504, "details":[{"type":"table", "Width":"16"}]}, {"from":2061043376, "to":2072174896, "details":[{"type":"table", "Width":"16"}]}, {"from":2061874832, "to":2072174896, "details":[{"type":"table", "Width":"33"}]}, {"from":2061875168, "to":2060891328, "details":[{"type":"table", "Width":"32"}]}, {"from":2061875168, "to":2072174896, "details":[{"type":"table", "Width":"32"}]}, {"from":2062050128, "to":2061874832, "details":[{"type":"table", "Width":"32"}]}, {"from":2062307776, "to":2061874832, "details":[{"type":"table", "Width":"32"}]}, {"from":2062539968, "to":2061874832, "details":[{"type":"table", "Width":"33"}]}, {"from":2062539968, "to":2067088192, "details":[{"type":"table", "Width":"33"}]}, {"from":2062539968, "to":2070124896, "details":[{"type":"table", "Width":"33"}]}, {"from":2062539968, "to":2070227504, "details":[{"type":"table", "Width":"33"}]}, {"from":2062539968, "to":2072174896, "details":[{"type":"table", "Width":"33"}]}, {"from":2063286080, "to":2079072608, "details":[{"type":"table", "Width":"1"}]}, {"from":2065645632, "to":2063286080, "details":[{"type":"table", "Width":"32"}]}, {"from":2067088192, "to":2072174896, "details":[{"type":"table", "Width":"1"}]}, {"from":2067854464, "to":2079072608, "details":[{"type":"table", "Width":"1"}]}, {"from":2070124896, "to":2061874832, "details":[{"type":"table", "Width":"32"}]}, {"from":2070124896, "to":2070124896, "details":[{"type":"table", "Width":"32"}]}, {"from":2070227504, "to":2061875168, "reverse":1, "details":[{"type":"table", "Width":"32"}]}, {"from":2079072608, "to":2072174896, "details":[{"type":"table", "Width":"1"}]}, {"from":2079418016, "to":2061874832, "details":[{"type":"table", "Width":"1"}]}, {"from":2079418016, "to":2067088192, "details":[{"type":"table", "Width":"1"}]}, {"from":2079418016, "to":2070124896, "details":[{"type":"table", "Width":"1"}]}, {"from":2079418016, "to":2070227504, "details":[{"type":"table", "Width":"1"}]}, {"from":2079418016, "to":2072174896, "details":[{"type":"table", "Width":"1"}]}]}}';
var treeJSON='{"nodes":[{"name":"bubbleSort", "id":2057548360, "type":"component", "children":[{"name":"bubbleSort.B3", "id":2057753104, "type":"bb", "children":[{"name":"Cluster 1", "id":2061333504, "type":"cluster"}]}, {"name":"bubbleSort.B5", "id":2057561760, "type":"bb"}, {"name":"bubbleSort.B1.start", "id":2057752944, "type":"bb", "children":[{"name":"Cluster 0", "id":2060903952, "type":"cluster"}]}, {"name":"bubbleSort.B0.runOnce", "id":2057761584, "type":"bb"}, {"name":"bubbleSort.B2", "id":2057753024, "type":"bb"}, {"name":"bubbleSort.B4", "id":2057561680, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"bubbleSort", "id":2057548360, "type":"component", "children":[{"name":"Stream Write", "id":2057831432, "details":[{"type":"table", "Basic Block":"bubbleSort.B5", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":16}]], "type":"inst"}, {"name":"Stream Read", "id":2057786152, "details":[{"type":"table", "Basic Block":"bubbleSort.B1.start", "Width":"128 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":5}]], "type":"inst"}]}, {"name":"return.bubbleSort", "id":2057559608, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"call.bubbleSort", "id":2057560856, "details":[{"type":"table", "Width":"128 bits", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"128 bits", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2057831432, "to":2057559608}, {"from":2057560856, "to":2057786152}, {"from":2057786152, "to":2057831432}]}';
var blockJSON='{"2057561680":{"nodes":[{"name":"Loop Input", "id":2061268128, "details":[{"type":"table", "Instruction":"Loop Input", "Preceding Blocks":"bubbleSort.B4, bubbleSort.B3"}], "type":"inst"}, {"name":"ST", "id":2061749424, "start":"65", "end":"96", "details":[{"type":"table", "Instruction":"Store", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"65", "Latency":"31"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":12}]], "type":"inst"}, {"name":"Xor", "id":2063591520, "start":"34", "end":"34", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"34", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2066068176, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"Compare", "id":2066075856, "start":"34", "end":"34", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"34", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"LD", "id":2066102528, "start":"2", "end":"34", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"2", "Latency":"32"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"?", "id":2066110976, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2066135232, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2066177008, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"Feedback", "id":2066209728, "start":"96", "end":"97", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"2", "Feedback FIFO Width":"32", "Start Cycle":"96", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":6}]], "type":"inst"}, {"name":"Xor", "id":2066242480, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Feedback", "id":2066267568, "start":"96", "end":"97", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"2", "Feedback FIFO Width":"1", "Start Cycle":"96", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"LD", "id":2066413920, "start":"2", "end":"34", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"2", "Latency":"32"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"Or", "id":2066415168, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"1-bit Or", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2066417808, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"And", "id":2066508592, "start":"34", "end":"34", "details":[{"type":"table", "Instruction":"1-bit And", "Start Cycle":"34", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"?", "id":2066573872, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":6}]], "type":"inst"}, {"name":"Or", "id":2067619680, "start":"34", "end":"34", "details":[{"type":"table", "Instruction":"1-bit Or", "Start Cycle":"34", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Loop Orch", "id":2067859696, "start":"95", "end":"95", "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"\'j\'", "id":2068363008, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'j\'", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":6}]], "type":"inst"}, {"name":"Feedback", "id":2070057520, "start":"96", "end":"97", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"\'j\'", "Feedback FIFO Depth":"2", "Feedback FIFO Width":"32", "Start Cycle":"96", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Xor", "id":2070671264, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"+", "id":2079267584, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"ST", "id":2079583088, "start":"34", "end":"65", "details":[{"type":"table", "Instruction":"Store", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"34", "Latency":"31"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":11}]], "type":"inst"}], "links":[{"from":2061268128, "to":2067859696, "details":[{"type":"table", "Width":"1"}]}, {"from":2061749424, "to":2066102528, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2061749424, "to":2066413920, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2061749424, "to":2079583088, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2063591520, "to":2067619680, "details":[{"type":"table", "Width":"1"}]}, {"from":2066068176, "to":2066177008, "details":[{"type":"table", "Width":"64"}]}, {"from":2066075856, "to":2066508592, "details":[{"type":"table", "Width":"1"}]}, {"from":2066102528, "to":2066075856, "details":[{"type":"table", "Width":"32"}]}, {"from":2066102528, "to":2079583088, "details":[{"type":"table", "Width":"32"}]}, {"from":2066110976, "to":2066242480, "details":[{"type":"table", "Width":"1"}]}, {"from":2066110976, "to":2066267568, "details":[{"type":"table", "Width":"1"}]}, {"from":2066135232, "to":2061749424, "details":[{"type":"table", "Width":"64"}]}, {"from":2066135232, "to":2066102528, "details":[{"type":"table", "Width":"64"}]}, {"from":2066177008, "to":2066413920, "details":[{"type":"table", "Width":"64"}]}, {"from":2066177008, "to":2079583088, "details":[{"type":"table", "Width":"64"}]}, {"from":2066209728, "to":2066573872, "reverse":1, "details":[{"type":"table", "Width":"32"}]}, {"from":2066242480, "to":2066415168, "details":[{"type":"table", "Width":"1"}]}, {"from":2066267568, "to":2066110976, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2066413920, "to":2061749424, "details":[{"type":"table", "Width":"32"}]}, {"from":2066413920, "to":2066075856, "details":[{"type":"table", "Width":"32"}]}, {"from":2066415168, "to":2066102528, "details":[{"type":"table", "Width":"1"}]}, {"from":2066415168, "to":2066413920, "details":[{"type":"table", "Width":"1"}]}, {"from":2066417808, "to":2066135232, "details":[{"type":"table", "Width":"64"}]}, {"from":2066508592, "to":2063591520, "details":[{"type":"table", "Width":"1"}]}, {"from":2066573872, "to":2066177008, "details":[{"type":"table", "Width":"32"}]}, {"from":2066573872, "to":2066209728, "details":[{"type":"table", "Width":"32"}]}, {"from":2067619680, "to":2061749424, "details":[{"type":"table", "Width":"1"}]}, {"from":2067619680, "to":2079583088, "details":[{"type":"table", "Width":"1"}]}, {"from":2067859696, "to":2066102528, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2066110976, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2066209728, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2066267568, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2066413920, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2066508592, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2066573872, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2067859696, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2068363008, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2070057520, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2070671264, "reverse":1, "details":[{"type":"table", "Width":"2"}]}, {"from":2067859696, "to":2079583088, "details":[{"type":"table", "Width":"2"}]}, {"from":2068363008, "to":2066135232, "details":[{"type":"table", "Width":"32"}]}, {"from":2068363008, "to":2079267584, "details":[{"type":"table", "Width":"32"}]}, {"from":2061268128, "to":2068363008, "details":[{"type":"table", "Width":"32"}]}, {"from":2061268128, "to":2066573872, "details":[{"type":"table", "Width":"32"}]}, {"from":2070057520, "to":2068363008, "reverse":1, "details":[{"type":"table", "Width":"32"}]}, {"from":2070671264, "to":2066102528, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2066209728, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2066267568, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2066413920, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2066415168, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2066508592, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2067619680, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2067859696, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2070057520, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2070671264, "details":[{"type":"table", "Width":"1"}]}, {"from":2070671264, "to":2079583088, "details":[{"type":"table", "Width":"1"}]}, {"from":2079267584, "to":2070057520, "details":[{"type":"table", "Width":"32"}]}, {"from":2079583088, "to":2061749424, "details":[{"type":"table", "Width":"1"}]}, {"from":2079583088, "to":2066102528, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2079583088, "to":2066413920, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2061268128, "to":2066110976, "details":[{"type":"table", "Width":"1"}]}]}, "2057561760":{"nodes":[{"name":"WR", "id":2065782560, "start":"0", "end":"1.2e-38", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"1 bit", "Depth":"0", "Stream Name":"return.bubbleSort", "Stall-free":"No", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":16}]], "type":"inst"}], "links":[]}, "2057752944":{"nodes":[{"name":"Cluster 0", "id":2060903952, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":2060910848, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"FFwd Src", "id":2060999216, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"Select", "id":2063607824, "start":"2", "end":"3", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"2", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2063727200, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"33-bit Integer Add", "Constant Operand":"-1 (0x1FFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"RD", "id":2066087968, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"128 bits", "Depth":"0", "Stream Name":"call.bubbleSort", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":5}]], "type":"inst"}, {"name":"+", "id":2066695584, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"-1 (0xFFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"Compare", "id":2066734944, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"FFwd Src", "id":2066845760, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Src", "id":2079366304, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"FFwd Src", "id":2079368816, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"Compare", "id":2079441264, "start":"2", "end":"3", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}], "links":[{"from":2063607824, "to":2066695584, "details":[{"type":"table", "Width":"32"}]}, {"from":2063727200, "to":2079366304, "details":[{"type":"table", "Width":"33"}]}, {"from":2066087968, "to":2060999216, "details":[{"type":"table", "Width":"128"}]}, {"from":2066087968, "to":2063607824, "details":[{"type":"table", "Width":"128"}]}, {"from":2066087968, "to":2066734944, "details":[{"type":"table", "Width":"128"}]}, {"from":2066087968, "to":2066845760, "details":[{"type":"table", "Width":"128"}]}, {"from":2066087968, "to":2079441264, "details":[{"type":"table", "Width":"128"}]}, {"from":2066695584, "to":2063727200, "details":[{"type":"table", "Width":"32"}]}, {"from":2066734944, "to":2063607824, "details":[{"type":"table", "Width":"1"}]}, {"from":2079441264, "to":2079368816, "details":[{"type":"table", "Width":"1"}]}]}, "2057753024":{"nodes":[{"name":"Input", "id":2064000864, "details":[{"type":"table", "Instruction":"Input", "Preceding Blocks":"bubbleSort.B4"}], "type":"inst"}], "links":[]}, "2057753104":{"nodes":[{"name":"Cluster 1", "id":2061333504, "start":"1", "end":"6", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_for_body_bubblesorts_c0_enter535_bubblesort1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"5"}], "type":"bb", "children":[{"name":"Logic", "id":2061339968, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"2"}], "type":"inst"}, {"name":"Exit", "id":2061684944, "details":[{"type":"table", "Exit Start Cycle":"3", "Exit Latency":"3", "Exit FIFO Depth":"8", "Exit FIFO Width":"256", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"bb"}]}, {"name":"Loop Orch", "id":2079534224, "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}], "links":[{"from":2061339968, "to":2061684944}, {"from":2079534224, "to":2061339968, "details":[{"type":"table", "Width":"1"}]}]}, "2057761584":{"nodes":[{"name":"Feedback", "id":2070559808, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":5}]], "type":"inst"}, {"name":"?", "id":2080062480, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":5}]], "type":"inst"}], "links":[{"from":2070559808, "to":2080062480, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2057548360":{"nodes":[{"name":"bubbleSort.B0.runOnce", "id":2057761584, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2080062480, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":5}]], "type":"inst"}]}, {"name":"bubbleSort.B1.start", "id":2057752944, "start":"2", "end":"5", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":2060903952, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":2063290080, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":2066087968, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"128 bits", "Depth":"0", "Stream Name":"call.bubbleSort", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":5}]], "type":"inst"}, {"name":"Compare", "id":2079441264, "start":"4", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"FFwd Src", "id":2079368816, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"FFwd Src", "id":2066845760, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"Compare", "id":2066734944, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"Select", "id":2063607824, "start":"4", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"2", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2066695584, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"-1 (0xFFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2063727200, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"33-bit Integer Add", "Constant Operand":"-1 (0x1FFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"FFwd Src", "id":2079366304, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"FFwd Src", "id":2060999216, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}]}, {"name":"bubbleSort.B3", "id":2057753104, "start":"5", "end":"11", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 1", "id":2061333504, "start":"6", "end":"11", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_for_body_bubblesorts_c0_enter535_bubblesort1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"5"}], "type":"cluster", "children":[{"name":"\'i,j\'", "id":2061875168, "start":"7", "end":"7", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'i,j\'", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":6}]], "type":"inst"}, {"name":"+", "id":2060891328, "start":"7", "end":"7", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2062050128, "start":"7", "end":"7", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":2062307776, "start":"7", "end":"7", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":2062539968, "start":"6", "end":"6", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"FFwd Dest", "id":2065645632, "start":"8", "end":"8", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"3", "Latency":"0"}], "type":"inst"}, {"name":"Compare", "id":2063286080, "start":"8", "end":"8", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2067854464, "start":"8", "end":"8", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"And", "id":2079072608, "start":"8", "end":"8", "details":[{"type":"table", "Instruction":"1-bit And", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2079418016, "start":"6", "end":"6", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"1", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2070124896, "start":"8", "end":"8", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"-1 (0xFFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2061874832, "start":"8", "end":"8", "details":[{"type":"table", "Instruction":"33-bit Integer Add", "Constant Operand":"-1 (0x1FFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Exit", "id":2072174896, "start":"8", "end":"11", "details":[{"type":"table", "Exit Start Cycle":"3", "Exit Latency":"3", "Exit FIFO Depth":"8", "Exit FIFO Width":"256", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}]}, {"name":"bubbleSort.B4", "id":2057561680, "start":"11", "end":"108", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Xor", "id":2070671264, "start":"13", "end":"13", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"FFwd Dest", "id":2066417808, "start":"13", "end":"13", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":2066068176, "start":"13", "end":"13", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"\'j\'", "id":2068363008, "start":"12", "end":"13", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'j\'", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":6}]], "type":"inst"}, {"name":"+", "id":2079267584, "start":"13", "end":"13", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2066135232, "start":"13", "end":"13", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"?", "id":2066573872, "start":"12", "end":"13", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":6}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2066177008, "start":"13", "end":"13", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"?", "id":2066110976, "start":"12", "end":"13", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Xor", "id":2066242480, "start":"13", "end":"13", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Or", "id":2066415168, "start":"13", "end":"13", "details":[{"type":"table", "Instruction":"1-bit Or", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"LD", "id":2066413920, "start":"13", "end":"45", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"2", "Latency":"32"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"LD", "id":2066102528, "start":"13", "end":"45", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"2", "Latency":"32"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"Compare", "id":2066075856, "start":"45", "end":"45", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"34", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":9}]], "type":"inst"}, {"name":"And", "id":2066508592, "start":"45", "end":"45", "details":[{"type":"table", "Instruction":"1-bit And", "Start Cycle":"34", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Xor", "id":2063591520, "start":"45", "end":"45", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"34", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"Or", "id":2067619680, "start":"45", "end":"45", "details":[{"type":"table", "Instruction":"1-bit Or", "Start Cycle":"34", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":8}]], "type":"inst"}, {"name":"ST", "id":2079583088, "start":"45", "end":"76", "details":[{"type":"table", "Instruction":"Store", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"34", "Latency":"31"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":11}]], "type":"inst"}, {"name":"ST", "id":2061749424, "start":"76", "end":"107", "details":[{"type":"table", "Instruction":"Store", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"65", "Latency":"31"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":12}]], "type":"inst"}]}, {"name":"bubbleSort.B2", "id":2057753024, "start":"108", "end":"108", "details":[{"type":"table"}], "type":"bb"}, {"name":"bubbleSort.B5", "id":2057561760, "start":"108", "end":"108", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"WR", "id":2065782560, "start":"108", "end":"108", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"1 bit", "Depth":"0", "Stream Name":"return.bubbleSort", "Stall-free":"No", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"bubblesort/bubblesort.c", "line":16}]], "type":"inst"}]}], "links":[]}}';
