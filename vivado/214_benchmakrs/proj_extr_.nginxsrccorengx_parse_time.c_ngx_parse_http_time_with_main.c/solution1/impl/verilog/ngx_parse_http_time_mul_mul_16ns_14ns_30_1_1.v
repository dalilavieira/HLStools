
`timescale 1 ns / 1 ps

  module ngx_parse_http_time_mul_mul_16ns_14ns_30_1_1_DSP48_3(a, b, p);
input [16 - 1 : 0] a;
input [14 - 1 : 0] b;
output [30 - 1 : 0] p;

assign p = $unsigned (a) * $unsigned (b);

endmodule
`timescale 1 ns / 1 ps
module ngx_parse_http_time_mul_mul_16ns_14ns_30_1_1(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



ngx_parse_http_time_mul_mul_16ns_14ns_30_1_1_DSP48_3 ngx_parse_http_time_mul_mul_16ns_14ns_30_1_1_DSP48_3_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

