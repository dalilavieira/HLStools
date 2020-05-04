// ----------------------------------------------------------------------------
// LegUp High-Level Synthesis Tool Version 7.5 (http://legupcomputing.com)
// Copyright (c) 2015-2019 LegUp Computing Inc. All Rights Reserved.
// For technical issues, please contact: support@legupcomputing.com
// For general inquiries, please contact: info@legupcomputing.com
// Date: Mon May  4 12:57:00 2020
// ----------------------------------------------------------------------------
`define MEMORY_CONTROLLER_ADDR_SIZE 32
// This directory contains the memory initialization files generated by LegUp.
// This relative path is used by ModelSim and FPGA synthesis tool.
`define MEM_INIT_DIR "../mem_init/"

`timescale 1 ns / 1 ns
module top
(
	clk,
	reset,
	start,
	finish,
	return_val
);

input  clk;
input  reset;
input  start;
output reg  finish;
output reg [31:0] return_val;
reg  main_inst_clk;
reg  main_inst_reset;
reg  main_inst_start;
wire  main_inst_finish;
wire [31:0] main_inst_return_val;
reg  main_inst_finish_reg;
reg [31:0] main_inst_return_val_reg;


main main_inst (
	.clk (main_inst_clk),
	.reset (main_inst_reset),
	.start (main_inst_start),
	.finish (main_inst_finish),
	.return_val (main_inst_return_val)
);



always @(*) begin
	main_inst_clk = clk;
end
always @(*) begin
	main_inst_reset = reset;
end
always @(*) begin
	main_inst_start = start;
end
always @(posedge clk) begin
	if ((reset | main_inst_start)) begin
		main_inst_finish_reg <= 1'd0;
	end
	if (main_inst_finish) begin
		main_inst_finish_reg <= 1'd1;
	end
end
always @(posedge clk) begin
	if ((reset | main_inst_start)) begin
		main_inst_return_val_reg <= 0;
	end
	if (main_inst_finish) begin
		main_inst_return_val_reg <= main_inst_return_val;
	end
end
always @(*) begin
	finish = main_inst_finish;
end
always @(*) begin
	return_val = main_inst_return_val;
end

endmodule
`timescale 1 ns / 1 ns
module main
(
	clk,
	reset,
	start,
	finish,
	return_val
);

parameter  LEGUP_0 = 1'd0;
parameter  LEGUP_F_main_BB_entry_1 = 1'd1;

input  clk;
input  reset;
input  start;
output reg  finish;
output reg [31:0] return_val;
reg  cur_state/* synthesis syn_encoding="onehot" */;
reg  next_state;
wire  fsm_stall;


always @(posedge clk) begin
if (reset == 1'b1)
	cur_state <= LEGUP_0;
else if (!fsm_stall)
	cur_state <= next_state;
end

always @(*)
begin
next_state = cur_state;
case(cur_state)  /* synthesis parallel_case */
LEGUP_0:
	if ((fsm_stall == 1'd0) && (start == 1'd1))
		next_state = LEGUP_F_main_BB_entry_1;
LEGUP_F_main_BB_entry_1:
		next_state = LEGUP_0;
default:
	next_state = cur_state;
endcase

end
assign fsm_stall = 1'd0;
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		finish <= 1'd0;
	end
	if ((cur_state == LEGUP_F_main_BB_entry_1)) begin
		finish <= (fsm_stall == 1'd0);
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		return_val <= 0;
	end
	if ((cur_state == LEGUP_F_main_BB_entry_1)) begin
		return_val <= 32'd0;
	end
end

endmodule
module ram_dual_port
(
	clk,
	clken,
	address_a,
	address_b,
	wren_a,
	data_a,
	byteena_a,
	wren_b,
	data_b,
	byteena_b,
	q_b,
	q_a
);

parameter  width_a = 1'd0;
parameter  widthad_a = 1'd0;
parameter  numwords_a = 1'd0;
parameter  width_b = 1'd0;
parameter  widthad_b = 1'd0;
parameter  numwords_b = 1'd0;
parameter  latency = 1;
parameter  init_file = "UNUSED";
parameter  width_be_a = 1'd0;
parameter  width_be_b = 1'd0;
localparam output_registered = (latency == 1)? "UNREGISTERED" : "CLOCK0";
input  clk;
input  clken;
input [(widthad_a-1):0] address_a;
output wire [(width_a-1):0] q_a;
wire [(width_a-1):0] q_a_wire;
input [(widthad_b-1):0] address_b;
output wire [(width_b-1):0] q_b;
wire [(width_b-1):0] q_b_wire;
input  wren_a;
input [(width_a-1):0] data_a;
input [width_be_a-1:0] byteena_a;
input  wren_b;
input [(width_b-1):0] data_b;
input [width_be_b-1:0] byteena_b;
reg  clk_wire;

altsyncram altsyncram_component (
	.address_a (address_a),
    .clock0 (clk_wire),
    .clock1 (1'd1),
    .clocken0 (clken),
    .clocken1 (1'd1),
    .clocken2 (1'd1),
    .clocken3 (1'd1),
    .aclr0 (1'd0),
    .aclr1 (1'd0),
    .addressstall_a (1'd0),
    .eccstatus (),
    .rden_a (clken),
    .q_a (q_a),
	.address_b (address_b),
    .addressstall_b (1'd0),
    .rden_b (clken),
    .q_b (q_b),
    .wren_a (wren_a),
    .data_a (data_a),
    .wren_b (wren_b),
    .data_b (data_b),
    .byteena_b (byteena_b),
    .byteena_a (byteena_a)
);
defparam
    altsyncram_component.width_byteena_a = width_be_a,
    altsyncram_component.width_byteena_b = width_be_b,
    altsyncram_component.operation_mode = "BIDIR_DUAL_PORT",
    altsyncram_component.read_during_write_mode_mixed_ports = "OLD_DATA",
    altsyncram_component.init_file = init_file,
    altsyncram_component.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
    altsyncram_component.lpm_type = "altsyncram",
    altsyncram_component.power_up_uninitialized = "FALSE",
    altsyncram_component.intended_device_family = "CycloneIV",
    altsyncram_component.clock_enable_input_b = "BYPASS",
    altsyncram_component.clock_enable_output_b = "BYPASS",
    altsyncram_component.outdata_aclr_b = "NONE",
    altsyncram_component.outdata_reg_b = output_registered,
    altsyncram_component.numwords_b = numwords_b,
    altsyncram_component.widthad_b = widthad_b,
    altsyncram_component.width_b = width_b,
    altsyncram_component.address_reg_b = "CLOCK0",
    altsyncram_component.byteena_reg_b = "CLOCK0",
    altsyncram_component.indata_reg_b = "CLOCK0",
    altsyncram_component.wrcontrol_wraddress_reg_b = "CLOCK0",
    altsyncram_component.clock_enable_input_a = "BYPASS",
    altsyncram_component.clock_enable_output_a = "BYPASS",
    altsyncram_component.outdata_aclr_a = "NONE",
    altsyncram_component.outdata_reg_a = output_registered,
    altsyncram_component.numwords_a = numwords_a,
    altsyncram_component.widthad_a = widthad_a,
    altsyncram_component.width_a = width_a;

always @(*) begin
	clk_wire = clk;
end


endmodule
`timescale 1 ns / 1 ns
module main_tb
(
);

reg  clk;
reg  reset;
reg  start;
wire [31:0] return_val;
wire  finish;


top top_inst (
	.clk (clk),
	.reset (reset),
	.start (start),
	.finish (finish),
	.return_val (return_val)
);




initial 
    clk = 0;
always @(clk)
    clk <= #10 ~clk;

initial begin
//$monitor("At t=%t clk=%b %b %b %b %d", $time, clk, reset, start, finish, return_val);
reset <= 1;
@(negedge clk);
reset <= 0;
start <= 1;
@(negedge clk);
start <= 0;
end

always@(posedge clk) begin
    if (finish == 1) begin
        $display("At t=%t clk=%b finish=%b return_val=%d", $time, clk, finish, return_val);
        $display("Cycles: %d", ($time-50)/20);
        $finish;
    end
end


endmodule
