var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":4257045016, "type":"component", "children":[{"name":"main.B0", "id":4257221936, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":4257045016, "type":"component", "children":[{"name":"Stream Read", "id":4257056936, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main.c", "line":147}]], "type":"inst"}]}, {"name":"call.main", "id":4257040216, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":4257040216, "to":4257056936}]}';
var blockJSON='{"4257221936":{"nodes":[{"name":"?", "id":4260758544, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main.c", "line":147}]], "type":"inst"}, {"name":"Feedback", "id":4260867920, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main.c", "line":147}]], "type":"inst"}, {"name":"RD", "id":4260897664, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main.c", "line":147}]], "type":"inst"}], "links":[{"from":4260867920, "to":4260758544, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"4257045016":{"nodes":[{"name":"main.B0", "id":4257221936, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"RD", "id":4260897664, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main.c", "line":147}]], "type":"inst"}, {"name":"?", "id":4260758544, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main/extr_.reactossdklib3rdpartystlportsrcc_locale_win32c_locale_win32.c___ConvertTime_with_main.c", "line":147}]], "type":"inst"}]}], "links":[]}}';
