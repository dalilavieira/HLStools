var pipelineJSON='{}';
var treeJSON='{"nodes":[{"name":"main", "id":4069234200, "type":"component", "children":[{"name":"main.B0", "id":4069388416, "type":"bb"}]}], "links":[]}';
var new_lmvJSON='{"nodes":[], "links":[]}';
var systemJSON='{"nodes":[{"name":"main", "id":4069234200, "type":"component", "children":[{"name":"Stream Read", "id":4069389384, "details":[{"type":"table", "Basic Block":"main.B0", "Width":"1 bit", "Depth":"0", "Stall-free":"No", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c", "line":108}]], "type":"inst"}]}, {"name":"call.main", "id":4069234088, "details":[{"type":"table", "Width":"1 bit", "Depth":"0", "Reday Latency":"0", "Bits per Symbol":"1 bit", "Uses Packets":"No", "Uses Valid":"Yes", "Uses Empty":"No", "First symbol in high order bits":"No"}], "type":"stream"}], "links":[{"from":4069234088, "to":4069389384}]}';
var blockJSON='{"4069388416":{"nodes":[{"name":"RD", "id":4071785536, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c", "line":108}]], "type":"inst"}, {"name":"?", "id":4072970704, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c", "line":108}]], "type":"inst"}, {"name":"Feedback", "id":4073228512, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c", "line":108}]], "type":"inst"}], "links":[{"from":4073228512, "to":4072970704, "reverse":1, "details":[{"type":"table", "Width":"1"}]}]}}';
var scheduleJSON='{"4069234200":{"nodes":[{"name":"main.B0", "id":4069388416, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":4072970704, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"bench_214_new/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c", "line":108}]], "type":"inst"}, {"name":"RD", "id":4071785536, "start":"2", "end":"2", "details":[{"type":"table", "Instruction":"Stream Read", "Width":"1 bit", "Depth":"0", "Stream Name":"call.main", "Stall-free":"No", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"bench_214_new/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main/extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c", "line":108}]], "type":"inst"}]}], "links":[]}}';