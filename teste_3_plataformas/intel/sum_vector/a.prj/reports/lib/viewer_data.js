var pipelineJSON='{"2346742816":{"nodes":[{"name":"Exit", "id":2347942352, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}, {"name":"Entry", "id":2349922048, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}], "links":[]}}';
var treeJSON='{"nodes":[{"name":"sum_vector", "id":2343758472, "type":"component", "children":[{"name":"sum_vector.B1.start", "id":2343918016, "type":"bb", "children":[{"name":"Cluster 0", "id":2346742816, "type":"cluster"}]}, {"name":"sum_vector.B0.runOnce", "id":2343917936, "type":"bb"}, {"name":"sum_vector.B2", "id":2343918096, "type":"bb"}, {"name":"sum_vector.B3", "id":2343918608, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"sum_vector", "id":2343758472, "type":"component", "children":[{"name":"Stream Read", "id":2343912696, "details":[{"type":"table", "Basic Block":"sum_vector.B1.start", "Width":"256 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":4}]], "type":"inst"}, {"name":"Stream Write", "id":2343977480, "details":[{"type":"table", "Basic Block":"sum_vector.B2", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":9}]], "type":"inst"}]}, {"name":"return.sum_vector", "id":2343736456, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"call.sum_vector", "id":2343757576, "details":[{"type":"table", "Width":"256 bits", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"256 bits", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":2343977480, "to":2343736456}, {"from":2343757576, "to":2343912696}, {"from":2343912696, "to":2343977480}]}';
var blockJSON='{"2343917936":{"nodes":[{"name":"?", "id":2347433888, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":4}]], "type":"inst"}, {"name":"Feedback", "id":2349034064, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":4}]], "type":"inst"}], "links":[{"from":2349034064, "to":2347433888, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}, "2343918016":{"nodes":[{"name":"Cluster 0", "id":2346742816, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_sum_vectors_c0_enter1_sum_vector0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":2346749728, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"Select", "id":2347328544, "start":"2", "end":"3", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"2", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Compare", "id":2347977856, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Src", "id":2348985200, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Src", "id":2349166608, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Src", "id":2349287152, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Compare", "id":2349340640, "start":"2", "end":"3", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Src", "id":2349461424, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"+", "id":2355049200, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"-1 (0xFFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Src", "id":2356982480, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"+", "id":2358125504, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"33-bit Integer Add", "Constant Operand":"-1 (0x1FFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"RD", "id":2358172016, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"256 bits", "Depth":"0", "Stream Name":"call.sum_vector", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":4}]], "type":"inst"}], "links":[{"from":2347328544, "to":2355049200, "details":[{"type":"table", "Width":"32"}]}, {"from":2347977856, "to":2347328544, "details":[{"type":"table", "Width":"1"}]}, {"from":2349340640, "to":2349287152, "details":[{"type":"table", "Width":"1"}]}, {"from":2355049200, "to":2358125504, "details":[{"type":"table", "Width":"32"}]}, {"from":2358125504, "to":2348985200, "details":[{"type":"table", "Width":"33"}]}, {"from":2358172016, "to":2347328544, "details":[{"type":"table", "Width":"256"}]}, {"from":2358172016, "to":2347977856, "details":[{"type":"table", "Width":"256"}]}, {"from":2358172016, "to":2349166608, "details":[{"type":"table", "Width":"256"}]}, {"from":2358172016, "to":2349340640, "details":[{"type":"table", "Width":"256"}]}, {"from":2358172016, "to":2349461424, "details":[{"type":"table", "Width":"256"}]}, {"from":2358172016, "to":2356982480, "details":[{"type":"table", "Width":"256"}]}]}, "2343918096":{"nodes":[{"name":"WR", "id":2355296528, "start":"0", "end":"1.2e-38", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"1 bit", "Depth":"0", "Stream Name":"return.sum_vector", "Stall-free":"No", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":9}]], "type":"inst"}], "links":[]}, "2343918608":{"nodes":[{"name":"Loop Orch", "id":2347650896, "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":2347984496, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":2348370416, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Xor", "id":2348985904, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"\'i\'", "id":2349901568, "start":"64", "end":"65", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'i\'", "Start Cycle":"64", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"LD", "id":2349920704, "start":"65", "end":"97", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"65", "Latency":"32"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"FFwd Dest", "id":2349928864, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "type":"inst"}, {"name":"LD", "id":2349937040, "start":"65", "end":"97", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"65", "Latency":"32"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2349945120, "start":"97", "end":"97", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Start Cycle":"97", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2349961760, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"Or", "id":2349969840, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"1-bit Or", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":2349977952, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":2351559008, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":2351568400, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"ST", "id":2351803440, "start":"97", "end":"1.3e+02", "details":[{"type":"table", "Instruction":"Store", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"97", "Latency":"31"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2355050688, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2357932128, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Feedback", "id":2357932464, "start":"65", "end":"66", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"\'i\'", "Feedback FIFO Depth":"2", "Feedback FIFO Width":"32", "Start Cycle":"65", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":2358264608, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "type":"inst"}, {"name":"Xor", "id":2358477488, "start":"65", "end":"65", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}], "links":[{"from":2347650896, "to":2348985904, "details":[{"type":"table", "Width":"1"}]}, {"from":2347650896, "to":2349901568, "details":[{"type":"table", "Width":"1"}]}, {"from":2347650896, "to":2349920704, "details":[{"type":"table", "Width":"1"}]}, {"from":2347650896, "to":2349937040, "details":[{"type":"table", "Width":"1"}]}, {"from":2347650896, "to":2357932464, "details":[{"type":"table", "Width":"1"}]}, {"from":2347984496, "to":2347650896, "details":[{"type":"table", "Width":"1"}]}, {"from":2347984496, "to":2348985904, "details":[{"type":"table", "Width":"1"}]}, {"from":2347984496, "to":2349920704, "details":[{"type":"table", "Width":"1"}]}, {"from":2347984496, "to":2349937040, "details":[{"type":"table", "Width":"1"}]}, {"from":2347984496, "to":2357932464, "details":[{"type":"table", "Width":"1"}]}, {"from":2348370416, "to":2358477488, "details":[{"type":"table", "Width":"1"}]}, {"from":2348985904, "to":2347650896, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2348985904, "to":2348985904, "details":[{"type":"table", "Width":"1"}]}, {"from":2348985904, "to":2349920704, "details":[{"type":"table", "Width":"1"}]}, {"from":2348985904, "to":2349937040, "details":[{"type":"table", "Width":"1"}]}, {"from":2348985904, "to":2349969840, "details":[{"type":"table", "Width":"1"}]}, {"from":2348985904, "to":2357932464, "details":[{"type":"table", "Width":"1"}]}, {"from":2349901568, "to":2349961760, "details":[{"type":"table", "Width":"32"}]}, {"from":2349901568, "to":2351568400, "details":[{"type":"table", "Width":"32"}]}, {"from":2349901568, "to":2355050688, "details":[{"type":"table", "Width":"32"}]}, {"from":2349901568, "to":2357932128, "details":[{"type":"table", "Width":"32"}]}, {"from":2349920704, "to":2349945120, "details":[{"type":"table", "Width":"32"}]}, {"from":2349928864, "to":2351568400, "details":[{"type":"table", "Width":"64"}]}, {"from":2349937040, "to":2349945120, "details":[{"type":"table", "Width":"32"}]}, {"from":2349945120, "to":2351803440, "details":[{"type":"table", "Width":"32"}]}, {"from":2349961760, "to":2349920704, "details":[{"type":"table", "Width":"64"}]}, {"from":2349969840, "to":2349920704, "details":[{"type":"table", "Width":"1"}]}, {"from":2349969840, "to":2349937040, "details":[{"type":"table", "Width":"1"}]}, {"from":2349969840, "to":2351803440, "details":[{"type":"table", "Width":"1"}]}, {"from":2349977952, "to":2347650896, "details":[{"type":"table", "Width":"33"}]}, {"from":2349977952, "to":2348985904, "details":[{"type":"table", "Width":"33"}]}, {"from":2349977952, "to":2349920704, "details":[{"type":"table", "Width":"33"}]}, {"from":2349977952, "to":2349937040, "details":[{"type":"table", "Width":"33"}]}, {"from":2349977952, "to":2357932464, "details":[{"type":"table", "Width":"33"}]}, {"from":2351559008, "to":2355050688, "details":[{"type":"table", "Width":"64"}]}, {"from":2351568400, "to":2349937040, "details":[{"type":"table", "Width":"64"}]}, {"from":2351803440, "to":2349920704, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2351803440, "to":2349937040, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":2355050688, "to":2351803440, "details":[{"type":"table", "Width":"64"}]}, {"from":2357932128, "to":2357932464, "details":[{"type":"table", "Width":"32"}]}, {"from":2357932464, "to":2349901568, "reverse":1, "details":[{"type":"table", "Width":"32"}]}, {"from":2358264608, "to":2349961760, "details":[{"type":"table", "Width":"64"}]}, {"from":2358477488, "to":2349969840, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"2343758472":{"nodes":[{"name":"sum_vector.B0.runOnce", "id":2343917936, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":2347433888, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":4}]], "type":"inst"}]}, {"name":"sum_vector.B1.start", "id":2343918016, "start":"2", "end":"5", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":2358172016, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"256 bits", "Depth":"0", "Stream Name":"call.sum_vector", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":4}]], "type":"inst"}, {"name":"FFwd Src", "id":2356982480, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Src", "id":2349461424, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"Compare", "id":2349340640, "start":"4", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Src", "id":2349287152, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Src", "id":2349166608, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"Compare", "id":2347977856, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"32-bit Integer Compare", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Select", "id":2347328544, "start":"4", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Select", "Start Cycle":"2", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"+", "id":2355049200, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"-1 (0xFFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"+", "id":2358125504, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"33-bit Integer Add", "Constant Operand":"-1 (0x1FFFFFFFF)", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Src", "id":2348985200, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Cluster 0", "id":2346742816, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_sum_vectors_c0_enter1_sum_vector0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":2347942352, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}]}, {"name":"sum_vector.B3", "id":2343918608, "start":"5", "end":"133", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"FFwd Dest", "id":2358264608, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":2351559008, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":2349977952, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":2349928864, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Dest", "id":2348370416, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Xor", "id":2358477488, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"FFwd Dest", "id":2347984496, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"\'i\'", "id":2349901568, "start":"69", "end":"70", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'i\'", "Start Cycle":"64", "Latency":"1"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"+", "id":2357932128, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2355050688, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2351568400, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":2349961760, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"Xor", "id":2348985904, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"Or", "id":2349969840, "start":"70", "end":"70", "details":[{"type":"table", "Instruction":"1-bit Or", "Start Cycle":"65", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":6}]], "type":"inst"}, {"name":"LD", "id":2349937040, "start":"70", "end":"102", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"65", "Latency":"32"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"LD", "id":2349920704, "start":"70", "end":"102", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"65", "Latency":"32"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"+", "id":2349945120, "start":"102", "end":"102", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Start Cycle":"97", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}, {"name":"ST", "id":2351803440, "start":"102", "end":"133", "details":[{"type":"table", "Instruction":"Store", "Width":"32 bits", "LSU Style":"Pipelined", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"97", "Latency":"31"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":7}]], "type":"inst"}]}, {"name":"sum_vector.B2", "id":2343918096, "start":"133", "end":"133", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"WR", "id":2355296528, "start":"133", "end":"133", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"1 bit", "Depth":"0", "Stream Name":"return.sum_vector", "Stall-free":"No", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"sum_vector/sum_vector.c", "line":9}]], "type":"inst"}]}], "links":[]}}';
