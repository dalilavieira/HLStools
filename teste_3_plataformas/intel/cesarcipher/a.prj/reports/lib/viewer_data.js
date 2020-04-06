var pipelineJSON='{"3064011872":{"nodes":[{"name":"Exit", "id":3065996592, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}, {"name":"Entry", "id":3071633152, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}], "links":[]}, "3064217088":{"nodes":[{"name":"Exit", "id":3066002368, "start":"8", "end":"11", "details":[{"type":"table", "Exit Start Cycle":"8", "Exit Latency":"3", "Exit FIFO Depth":"16", "Exit FIFO Width":"8", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"Compare", "id":3071111712, "start":"8", "end":"8", "details":[{"type":"table", "Instruction":"8-bit Integer Compare", "Start Cycle":"8", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"FFwd Src", "id":3071112048, "start":"3", "end":"3", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "type":"inst"}, {"name":"FFwd Src", "id":3071399808, "start":"8", "end":"8", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"8", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Entry", "id":3071501584, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"2", "Latency":"0"}], "type":"inst"}, {"name":"LD", "id":3071589232, "start":"3", "end":"8", "details":[{"type":"table", "Instruction":"Load", "Width":"8 bits", "LSU Style":"Pipelined never-stall", "Stall-free":"Yes", "Global Memory":"Yes", "Start Cycle":"3", "Latency":"5"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}], "links":[{"from":3071111712, "to":3071399808, "details":[{"type":"table", "Width":"1"}]}, {"from":3071501584, "to":3071112048, "details":[{"type":"table", "Width":"192"}]}, {"from":3071501584, "to":3071589232, "details":[{"type":"table", "Width":"192"}]}, {"from":3071589232, "to":3071111712, "details":[{"type":"table", "Width":"8"}]}]}, "3064420336":{"nodes":[{"name":"Entry", "id":3071278672, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":3071521888, "start":"1", "end":"1", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}, {"name":"Loop Orch", "id":3074635200, "start":"1", "end":"1", "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":8}]], "type":"inst"}], "links":[{"from":3071278672, "to":3071521888, "details":[{"type":"table", "Width":"16"}]}, {"from":3071278672, "to":3074635200, "details":[{"type":"table", "Width":"16"}]}, {"from":3074635200, "to":3071521888, "details":[{"type":"table", "Width":"1"}]}]}, "3064688480":{"nodes":[{"name":"+", "id":3064472256, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":22}]], "type":"inst"}, {"name":"Feedback", "id":3064472592, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"\'i\'", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"32", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":22}]], "type":"inst"}, {"name":"FFwd Dest", "id":3064712352, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"5", "Latency":"0"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":3064714560, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Loop Orch", "id":3064772784, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Entry", "id":3065772000, "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"\'i\'", "id":3066822880, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'i\'", "Start Cycle":"4", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":6}]], "type":"inst"}, {"name":"Xor", "id":3071136144, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Exit", "id":3071350752, "start":"10", "end":"13", "details":[{"type":"table", "Exit Start Cycle":"10", "Exit Latency":"3", "Exit FIFO Depth":"16", "Exit FIFO Width":"32", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"Compare", "id":3071352960, "start":"10", "end":"10", "details":[{"type":"table", "Instruction":"8-bit Integer Compare", "Start Cycle":"10", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"FFwd Dest", "id":3071353296, "start":"10", "end":"10", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"10", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"FFwd Dest", "id":3073653952, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Or", "id":3073656576, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"1-bit Or", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"LD", "id":3073656912, "start":"5", "end":"10", "details":[{"type":"table", "Instruction":"Load", "Width":"8 bits", "LSU Style":"Pipelined never-stall", "Stall-free":"Yes", "Global Memory":"Yes", "Start Cycle":"5", "Latency":"5"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}], "links":[{"from":3064472256, "to":3064472592, "details":[{"type":"table", "Width":"32"}]}, {"from":3064472256, "to":3064714560, "details":[{"type":"table", "Width":"32"}]}, {"from":3064472592, "to":3066822880, "reverse":1, "details":[{"type":"table", "Width":"32"}]}, {"from":3064712352, "to":3064714560, "details":[{"type":"table", "Width":"64"}]}, {"from":3064714560, "to":3073656912, "details":[{"type":"table", "Width":"64"}]}, {"from":3064772784, "to":3064472592, "reverse":1, "details":[{"type":"table", "Width":"11"}]}, {"from":3064772784, "to":3071136144, "reverse":1, "details":[{"type":"table", "Width":"11"}]}, {"from":3064772784, "to":3071350752, "reverse":1, "details":[{"type":"table", "Width":"11"}]}, {"from":3065772000, "to":3064472592, "details":[{"type":"table", "Width":"24"}]}, {"from":3065772000, "to":3064772784, "details":[{"type":"table", "Width":"24"}]}, {"from":3065772000, "to":3066822880, "details":[{"type":"table", "Width":"24"}]}, {"from":3065772000, "to":3071350752, "details":[{"type":"table", "Width":"24"}]}, {"from":3066822880, "to":3064472256, "details":[{"type":"table", "Width":"32"}]}, {"from":3071136144, "to":3064772784, "details":[{"type":"table", "Width":"1"}]}, {"from":3071136144, "to":3073656576, "details":[{"type":"table", "Width":"1"}]}, {"from":3071352960, "to":3064772784, "reverse":1, "details":[{"type":"table", "Width":"1"}]}, {"from":3071353296, "to":3064772784, "details":[{"type":"table", "Width":"1"}]}, {"from":3073653952, "to":3073656576, "details":[{"type":"table", "Width":"1"}]}, {"from":3073656576, "to":3073656912, "details":[{"type":"table", "Width":"1"}]}, {"from":3073656912, "to":3071352960, "details":[{"type":"table", "Width":"8"}]}]}}';
var treeJSON='{"nodes":[{"name":"cesarcipher", "id":3061010472, "type":"component", "children":[{"name":"cesarcipher.B3", "id":3061199184, "type":"bb", "children":[{"name":"Cluster 3", "id":3064688480, "type":"cluster"}]}, {"name":"cesarcipher.B4", "id":3061011024, "type":"bb"}, {"name":"cesarcipher.B5", "id":3061011104, "type":"bb"}, {"name":"cesarcipher.B0.runOnce", "id":3061207664, "type":"bb"}, {"name":"cesarcipher.B2", "id":3061199104, "type":"bb", "children":[{"name":"Cluster 2", "id":3064420336, "type":"cluster"}]}, {"name":"cesarcipher.B1.start", "id":3061199024, "type":"bb", "children":[{"name":"Cluster 1", "id":3064217088, "type":"cluster"}, {"name":"Cluster 0", "id":3064011872, "type":"cluster"}]}]}], "links":[]}';
var new_lmvJSON='{"nodes":[{"name":"cesarcipher", "id":3061010472, "type":"component", "children":[{"name":"Local Memory", "id":1, "type":"memtype", "children":[{"name":"aux", "id":2, "details":[{"type":"table", "Declared at":[{"type":"text", "text":"%L", "links":[{"filename":"cesarcipher/cesarcipher.c", "line":"5"}]}]}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":5}]], "type":"unsynth"}]}]}], "links":[]}';
var systemJSON='{"nodes":[{"name":"cesarcipher", "id":3061010472, "type":"component", "children":[{"name":"Stream Write", "id":3061250168, "details":[{"type":"table", "Basic Block":"cesarcipher.B5", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":34}]], "type":"inst"}, {"name":"Stream Read", "id":3061167288, "details":[{"type":"table", "Basic Block":"cesarcipher.B1.start", "Width":"128 bits", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":4}]], "type":"inst"}]}, {"name":"call.cesarcipher", "id":3061005512, "details":[{"type":"table", "Width":"128 bits", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"128 bits", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}, {"name":"return.cesarcipher", "id":3061012216, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Ready Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Ready":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":3061005512, "to":3061167288}, {"from":3061250168, "to":3061012216}, {"from":3061167288, "to":3061250168}]}';
var blockJSON='{"3061011024":{"nodes":[{"name":"Input", "id":3065399696, "details":[{"type":"table", "Instruction":"Input", "Preceding Blocks":"cesarcipher.B3"}], "type":"inst"}], "links":[]}, "3061011104":{"nodes":[{"name":"WR", "id":3066565712, "start":"0", "end":"1.2e-38", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"1 bit", "Depth":"0", "Stream Name":"return.cesarcipher", "Stall-free":"No", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":34}]], "type":"inst"}], "links":[]}, "3061199024":{"nodes":[{"name":"Cluster 1", "id":3064217088, "start":"2", "end":"11", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"2", "Cluster Latency":"9"}], "type":"bb", "children":[{"name":"Logic", "id":3064222656, "details":[{"type":"table", "Cluster Logic Start Cycle":"2", "Cluster Logic Latency":"6"}], "type":"inst"}, {"name":"Exit", "id":3064343632, "details":[{"type":"table", "Exit Start Cycle":"8", "Exit Latency":"3", "Exit FIFO Depth":"16", "Exit FIFO Width":"8", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"bb"}]}, {"name":"Cluster 0", "id":3064011872, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":3064018704, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":3063893504, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"128 bits", "Depth":"0", "Stream Name":"call.cesarcipher", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":4}]], "type":"inst"}], "links":[{"from":3064222656, "to":3064343632}, {"from":3063893504, "to":3064222656, "details":[{"type":"table", "Width":"128"}]}]}, "3061199104":{"nodes":[{"name":"Cluster 2", "id":3064420336, "start":"1", "end":"1", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_while_cond1_preheader_cesarciphers_c0_enter173_cesarcipher1", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"bb", "children":[{"name":"Logic", "id":3064427280, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"0"}], "type":"inst"}]}, {"name":"Loop Input", "id":3071977792, "details":[{"type":"table", "Instruction":"Loop Input", "Preceding Blocks":"cesarcipher.B4, cesarcipher.B1.start"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":8}]], "type":"inst"}], "links":[{"from":3071977792, "to":3064427280, "details":[{"type":"table", "Width":"1"}]}]}, "3061199184":{"nodes":[{"name":"Cluster 3", "id":3064688480, "start":"1", "end":"13", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_while_body3_cesarciphers_c0_enter224_cesarcipher1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"12"}], "type":"bb", "children":[{"name":"Logic", "id":3064695200, "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"9"}], "type":"inst"}, {"name":"Exit", "id":3065101072, "details":[{"type":"table", "Exit Start Cycle":"10", "Exit Latency":"3", "Exit FIFO Depth":"16", "Exit FIFO Width":"32", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"bb"}]}, {"name":"Loop Input", "id":3071124912, "details":[{"type":"table", "Instruction":"Loop Input", "Preceding Blocks":"cesarcipher.B3, cesarcipher.B2"}], "type":"inst"}], "links":[{"from":3064695200, "to":3065101072}, {"from":3071124912, "to":3064695200, "details":[{"type":"table", "Width":"1"}]}, {"from":3071124912, "to":3064695200, "details":[{"type":"table", "Width":"1"}]}]}, "3061207664":{"nodes":[{"name":"?", "id":3065135120, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":4}]], "type":"inst"}, {"name":"Feedback", "id":3074475760, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":4}]], "type":"inst"}], "links":[{"from":3074475760, "to":3065135120, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"3061010472":{"nodes":[{"name":"cesarcipher.B0.runOnce", "id":3061207664, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":3065135120, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":4}]], "type":"inst"}]}, {"name":"cesarcipher.B1.start", "id":3061199024, "start":"2", "end":"13", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":3064011872, "start":"3", "end":"3", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_wt_entry_cesarciphers_c0_enter2_cesarcipher0", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":3065996592, "start":"3", "end":"3", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}, {"name":"RD", "id":3063893504, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"128 bits", "Depth":"0", "Stream Name":"call.cesarcipher", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":4}]], "type":"inst"}, {"name":"Cluster 1", "id":3064217088, "start":"4", "end":"13", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c1_in_wt_entry_cesarciphers_c1_enter_cesarcipher4", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"2", "Cluster Latency":"9"}], "type":"cluster", "children":[{"name":"LD", "id":3071589232, "start":"5", "end":"10", "details":[{"type":"table", "Instruction":"Load", "Width":"8 bits", "LSU Style":"Pipelined never-stall", "Stall-free":"Yes", "Global Memory":"Yes", "Start Cycle":"3", "Latency":"5"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Compare", "id":3071111712, "start":"10", "end":"10", "details":[{"type":"table", "Instruction":"8-bit Integer Compare", "Start Cycle":"8", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"FFwd Src", "id":3071399808, "start":"10", "end":"10", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"8", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"FFwd Src", "id":3071112048, "start":"5", "end":"5", "details":[{"type":"table", "Instruction":"FFwd Source", "Start Cycle":"3", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":3066002368, "start":"10", "end":"13", "details":[{"type":"table", "Exit Start Cycle":"8", "Exit Latency":"3", "Exit FIFO Depth":"16", "Exit FIFO Width":"8", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}]}, {"name":"cesarcipher.B2", "id":3061199104, "start":"13", "end":"14", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 2", "id":3064420336, "start":"14", "end":"14", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_while_cond1_preheader_cesarciphers_c0_enter173_cesarcipher1", "Cluster Type":"Stall-Enable", "Cluster Start Cycle":"1", "Cluster Latency":"0"}], "type":"cluster", "children":[{"name":"Exit", "id":3071521888, "start":"14", "end":"14", "details":[{"type":"table", "Exit Start Cycle":"1", "Exit Latency":"0"}], "type":"inst"}]}]}, {"name":"cesarcipher.B3", "id":3061199184, "start":"14", "end":"27", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 3", "id":3064688480, "start":"15", "end":"27", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_while_body3_cesarciphers_c0_enter224_cesarcipher1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"12"}], "type":"cluster", "children":[{"name":"\'i\'", "id":3066822880, "start":"18", "end":"18", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"\'i\'", "Start Cycle":"4", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":6}]], "type":"inst"}, {"name":"+", "id":3064472256, "start":"19", "end":"19", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":22}]], "type":"inst"}, {"name":"FFwd Dest", "id":3064712352, "start":"19", "end":"19", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"5", "Latency":"0"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":3064714560, "start":"19", "end":"19", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Xor", "id":3071136144, "start":"19", "end":"19", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"FFwd Dest", "id":3071353296, "start":"24", "end":"24", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"10", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"FFwd Dest", "id":3073653952, "start":"19", "end":"19", "details":[{"type":"table", "Instruction":"FFwd Destination", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Or", "id":3073656576, "start":"19", "end":"19", "details":[{"type":"table", "Instruction":"1-bit Or", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"LD", "id":3073656912, "start":"19", "end":"24", "details":[{"type":"table", "Instruction":"Load", "Width":"8 bits", "LSU Style":"Pipelined never-stall", "Stall-free":"Yes", "Global Memory":"Yes", "Start Cycle":"5", "Latency":"5"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Compare", "id":3071352960, "start":"24", "end":"24", "details":[{"type":"table", "Instruction":"8-bit Integer Compare", "Start Cycle":"10", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":11}]], "type":"inst"}, {"name":"Exit", "id":3071350752, "start":"24", "end":"27", "details":[{"type":"table", "Exit Start Cycle":"10", "Exit Latency":"3", "Exit FIFO Depth":"16", "Exit FIFO Width":"32", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}]}, {"name":"cesarcipher.B4", "id":3061011024, "start":"27", "end":"27", "details":[{"type":"table"}], "type":"bb"}, {"name":"cesarcipher.B5", "id":3061011104, "start":"27", "end":"27", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"WR", "id":3066565712, "start":"27", "end":"27", "details":[{"type":"table", "Instruction":"Stream Write", "Width":"1 bit", "Depth":"0", "Stream Name":"return.cesarcipher", "Stall-free":"No", "Start Cycle":"0", "Latency":"0"}], "debug":[[{"filename":"cesarcipher/cesarcipher.c", "line":34}]], "type":"inst"}]}], "links":[]}}';