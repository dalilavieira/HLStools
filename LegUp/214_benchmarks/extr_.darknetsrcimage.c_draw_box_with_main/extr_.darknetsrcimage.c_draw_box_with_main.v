//----------------------------------------------------------------------------//
// Generated by LegUp High-Level Synthesis Tool Version 3.0 (http://legup.org)
// Compiled: Tue Jul 15 15:43:09 2014
// University of Toronto
// For research and academic purposes only. Commercial use is prohibited.
// Please send bugs to: legup@eecg.toronto.edu
// Date: Tue Mar 10 07:51:16 2020
//----------------------------------------------------------------------------//

`define MEMORY_CONTROLLER_ADDR_SIZE 32
`define MEMORY_CONTROLLER_DATA_SIZE 64
// Number of RAM elements: 0
`define MEMORY_CONTROLLER_TAG_SIZE 9
`define TAG_NULL `MEMORY_CONTROLLER_TAG_SIZE'd0
`define TAG_PROCESSOR `MEMORY_CONTROLLER_TAG_SIZE'd1

// Turn off warning 'ignoring unsupported system task'
// altera message_off 10175

module top
	(
		clk,
		reset,
		start,
		finish,
		return_val
	);
input clk;
input reset;
input start;
output wire finish;
output wire [31:0] return_val;
wire memory_controller_waitrequest;
wire memory_controller_enable_a;
wire [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_a;
wire memory_controller_write_enable_a;
wire [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_a;
wire [1:0] memory_controller_size_a;
wire [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_a;

wire memory_controller_enable_b;
wire [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_b;
wire memory_controller_write_enable_b;
wire [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_b;
wire [1:0] memory_controller_size_b;
wire [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_b;

assign memory_controller_waitrequest = 0;

memory_controller memory_controller_inst (
	.clk( clk ),
	.memory_controller_enable_a( memory_controller_enable_a ),
	.memory_controller_enable_b( memory_controller_enable_b ),
	.memory_controller_address_a( memory_controller_address_a ),
	.memory_controller_address_b( memory_controller_address_b ),
	.memory_controller_write_enable_a( memory_controller_write_enable_a ),
	.memory_controller_write_enable_b( memory_controller_write_enable_b ),
	.memory_controller_in_a( memory_controller_in_a ),
	.memory_controller_in_b( memory_controller_in_b ),
	.memory_controller_size_a( memory_controller_size_a ),
	.memory_controller_size_b( memory_controller_size_b ),
	.memory_controller_waitrequest( memory_controller_waitrequest ),
	.memory_controller_out_reg_a( memory_controller_out_a ),
	.memory_controller_out_reg_b( memory_controller_out_b )
);

main main_inst(
	.clk( clk ),
	.clk2x( clk2x ),
	.clk1x_follower( clk1x_follower ),
	.reset( reset ),
	.start( start ),
	.finish( finish ),
	.return_val( return_val ),
	.memory_controller_enable_a(memory_controller_enable_a),
	.memory_controller_address_a(memory_controller_address_a),
	.memory_controller_write_enable_a(memory_controller_write_enable_a),
	.memory_controller_in_a(memory_controller_in_a),
	.memory_controller_size_a(memory_controller_size_a),
	.memory_controller_out_a(memory_controller_out_a),
	.memory_controller_enable_b(memory_controller_enable_b),
	.memory_controller_address_b(memory_controller_address_b),
	.memory_controller_write_enable_b(memory_controller_write_enable_b),
	.memory_controller_in_b(memory_controller_in_b),
	.memory_controller_size_b(memory_controller_size_b),
	.memory_controller_out_b(memory_controller_out_b),
	.memory_controller_waitrequest(memory_controller_waitrequest)
);

endmodule
`timescale 1 ns / 1 ns
module memory_controller
(
	clk,
	memory_controller_address_a,
	memory_controller_address_b,
	memory_controller_enable_a,
	memory_controller_enable_b,
	memory_controller_write_enable_a,
	memory_controller_write_enable_b,
	memory_controller_in_a,
	memory_controller_in_b,
	memory_controller_size_a,
	memory_controller_size_b,
	memory_controller_waitrequest,
	memory_controller_out_reg_a,
	memory_controller_out_reg_b
);


input clk;
input memory_controller_waitrequest;
input [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_a;
input memory_controller_enable_a;
input memory_controller_write_enable_a;
input [64-1:0] memory_controller_in_a;
input [1:0] memory_controller_size_a;
output reg [64-1:0] memory_controller_out_reg_a;
reg [64-1:0] memory_controller_out_prev_a;
reg [64-1:0] memory_controller_out_a;

reg memory_controller_enable_reg_a;
input [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_b;
input memory_controller_enable_b;
input memory_controller_write_enable_b;
input [64-1:0] memory_controller_in_b;
input [1:0] memory_controller_size_b;
output reg [64-1:0] memory_controller_out_reg_b;
reg [64-1:0] memory_controller_out_prev_b;
reg [64-1:0] memory_controller_out_b;

reg memory_controller_enable_reg_b;
endmodule 
`timescale 1 ns / 1 ns
module main
(
	clk,
	clk2x,
	clk1x_follower,
	reset,
	start,
	finish,
	memory_controller_enable_a,
	memory_controller_address_a,
	memory_controller_write_enable_a,
	memory_controller_in_a,
	memory_controller_size_a,
	memory_controller_out_a,
	memory_controller_enable_b,
	memory_controller_address_b,
	memory_controller_write_enable_b,
	memory_controller_in_b,
	memory_controller_size_b,
	memory_controller_out_b,
	memory_controller_waitrequest,
	return_val
);

parameter  LEGUP_0 = 1'd0;
parameter  LEGUP_F_main_BB_draw_box_exit_1 = 1'd1;

input  clk;
input  clk2x;
input  clk1x_follower;
input  reset;
input  start;
output reg  finish;
output reg  memory_controller_enable_a;
output reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_a;
output reg  memory_controller_write_enable_a;
output reg [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_a;
output reg [1:0] memory_controller_size_a;
input [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_a;
output reg  memory_controller_enable_b;
output reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_b;
output reg  memory_controller_write_enable_b;
output reg [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_b;
output reg [1:0] memory_controller_size_b;
input [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_b;
input  memory_controller_waitrequest;
output reg [31:0] return_val;
reg  cur_state;
wire [15:0] legup_pthreadpoll_threadID;

// Local Rams


always @(posedge clk) begin
if (((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd1)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd0)) & (start == 1'd1)))
begin
cur_state <= LEGUP_F_main_BB_draw_box_exit_1;
if (reset == 1'b0 && ^(LEGUP_F_main_BB_draw_box_exit_1) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd0)) & (start == 1'd0)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if (((cur_state == LEGUP_F_main_BB_draw_box_exit_1) & (memory_controller_waitrequest == 1'd1)))
begin
cur_state <= LEGUP_F_main_BB_draw_box_exit_1;
if (reset == 1'b0 && ^(LEGUP_F_main_BB_draw_box_exit_1) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if (((cur_state == LEGUP_F_main_BB_draw_box_exit_1) & (memory_controller_waitrequest == 1'd0)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((reset == 1'd1))
begin
cur_state <= 1'd0;
if (reset == 1'b0 && ^(1'd0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
end
always @(posedge clk) begin
if ((cur_state == LEGUP_0))
begin
finish <= 1'd0;
if (reset == 1'b0 && ^(1'd0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to finish"); $finish; end
end
/* main: %draw_box.exit*/
/*   ret i32 0*/
if ((cur_state == LEGUP_F_main_BB_draw_box_exit_1))
begin
finish <= (memory_controller_waitrequest == 1'd0);
if (reset == 1'b0 && ^((memory_controller_waitrequest == 1'd0)) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to finish"); $finish; end
end
end
always @(*) begin
memory_controller_enable_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_enable_a = 1'd0;
end
end
always @(*) begin
memory_controller_address_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_address_a = 1'd0;
end
end
always @(*) begin
memory_controller_write_enable_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_write_enable_a = 1'd0;
end
end
always @(*) begin
memory_controller_in_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_in_a = 1'd0;
end
end
always @(*) begin
memory_controller_size_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_size_a = 1'd0;
end
end
always @(*) begin
memory_controller_enable_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_enable_b = 1'd0;
end
end
always @(*) begin
memory_controller_address_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_address_b = 1'd0;
end
end
always @(*) begin
memory_controller_write_enable_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_write_enable_b = 1'd0;
end
end
always @(*) begin
memory_controller_in_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_in_b = 1'd0;
end
end
always @(*) begin
memory_controller_size_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_size_b = 1'd0;
end
end
always @(posedge clk) begin
if ((cur_state == LEGUP_0))
begin
return_val <= 0;
if (reset == 1'b0 && ^(0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to return_val"); $finish; end
end
/* main: %draw_box.exit*/
/*   ret i32 0*/
if ((cur_state == LEGUP_F_main_BB_draw_box_exit_1))
begin
return_val <= 32'd0;
if (reset == 1'b0 && ^(32'd0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to return_val"); $finish; end
end
end

endmodule 
module ram_dual_port
(
	clk,
	address_a,
	address_b,
	wren_a,
	wren_b,
	data_a,
	data_b,
	byteena_a,
	byteena_b,
	q_a,
	q_b
);

parameter  width_a = 1'd0;
parameter  width_b = 1'd0;
parameter  widthad_a = 1'd0;
parameter  widthad_b = 1'd0;
parameter  numwords_a = 1'd0;
parameter  numwords_b = 1'd0;
parameter  init_file = "UNUSED.mif";
parameter  width_be_a = 1'd0;
parameter  width_be_b = 1'd0;
parameter  latency = 1;

input  clk;
input [(widthad_a-1):0] address_a;
input [(widthad_b-1):0] address_b;
output wire [(width_a-1):0] q_a;
output wire [(width_b-1):0] q_b;
reg [(width_a-1):0] q_a_wire;
reg [(width_b-1):0] q_b_wire;
input  wren_a;
input  wren_b;
input [(width_a-1):0] data_a;
input [(width_b-1):0] data_b;
// byte enable is unsupported by inferred RAMs
input [width_be_a-1:0] byteena_a;
input [width_be_b-1:0] byteena_b;

(* ramstyle = "no_rw_check", ram_init_file = init_file *) reg [width_a-1:0] ram[numwords_a-1:0];

/* synthesis translate_off */
integer i;
ALTERA_MF_MEMORY_INITIALIZATION mem ();
reg [8*256:1] ram_ver_file;
initial begin
	if (init_file == "UNUSED.mif")
    begin
		for (i = 0; i < numwords_a; i = i + 1)
			ram[i] = 0;
    end
	else
    begin
        // modelsim can't read .mif files directly. So use Altera function to
        // convert them to .ver files
        mem.convert_to_ver_file(init_file, width_a, ram_ver_file);
        $readmemh(ram_ver_file, ram);
    end
end
/* synthesis translate_on */

always @ (posedge clk)
begin // Port A
if (wren_a)
begin
    ram[address_a] <= data_a;
    q_a_wire <= {width_a{1'bX}};
end
else
    q_a_wire <= ram[address_a];
end
always @ (posedge clk)
begin // Port b
if (wren_b)
begin
    ram[address_b] <= data_b;
    q_b_wire <= {width_b{1'bX}};
end
else
    q_b_wire <= ram[address_b];
end



integer j;
reg [(width_a-1):0] q_a_reg[latency:1], q_b_reg[latency:1];

always @(*)
begin
   q_a_reg[1] <= q_a_wire;
   q_b_reg[1] <= q_b_wire;
end

always @(posedge clk)
begin
   for (j = 1; j < latency; j=j+1)
   begin
       q_a_reg[j+1] <= q_a_reg[j];
       q_b_reg[j+1] <= q_b_reg[j];
   end
end

assign q_a = q_a_reg[latency];
assign q_b = q_b_reg[latency];


endmodule
module rom_dual_port
(
	clk,
	address_a,
	address_b,
	q_a,
	q_b
);

parameter  width_a = 1'd0;
parameter  width_b = 1'd0;
parameter  widthad_a = 1'd0;
parameter  widthad_b = 1'd0;
parameter  numwords_a = 1'd0;
parameter  numwords_b = 1'd0;
parameter  init_file = "UNUSED.mif";
parameter  latency = 1;

input  clk;
input [(widthad_a-1):0] address_a;
input [(widthad_b-1):0] address_b;
output wire [(width_a-1):0] q_a;
output wire [(width_b-1):0] q_b;
reg [(width_a-1):0] q_a_wire;
reg [(width_b-1):0] q_b_wire;

(* ramstyle = "no_rw_check", ram_init_file = init_file *) reg [width_a-1:0] ram[numwords_a-1:0];

/* synthesis translate_off */
integer i;
ALTERA_MF_MEMORY_INITIALIZATION mem ();
reg [8*256:1] ram_ver_file;
initial begin
	if (init_file == "UNUSED.mif")
    begin
		for (i = 0; i < numwords_a; i = i + 1)
			ram[i] = 0;
    end
	else
    begin
        // modelsim can't read .mif files directly. So use Altera function to
        // convert them to .ver files
        mem.convert_to_ver_file(init_file, width_a, ram_ver_file);
        $readmemh(ram_ver_file, ram);
    end
end
/* synthesis translate_on */

always @ (posedge clk)
begin
    q_a_wire <= ram[address_a];
    q_b_wire <= ram[address_b];
end



integer j;
reg [(width_a-1):0] q_a_reg[latency:1], q_b_reg[latency:1];

always @(*)
begin
   q_a_reg[1] <= q_a_wire;
   q_b_reg[1] <= q_b_wire;
end

always @(posedge clk)
begin
   for (j = 1; j < latency; j=j+1)
   begin
       q_a_reg[j+1] <= q_a_reg[j];
       q_b_reg[j+1] <= q_b_reg[j];
   end
end

assign q_a = q_a_reg[latency];
assign q_b = q_b_reg[latency];


endmodule
module de2 (CLOCK_50, KEY, SW, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7, LEDG);
    input CLOCK_50;
    output [7:0] LEDG;
    input [3:0] KEY;
    input [17:0] SW;
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;

    wire clk = CLOCK_50;
    wire reset = ~KEY[0];
    wire go = ~KEY[1];

    wire  start;
    wire [31:0] return_val;
    wire  finish;

    reg [31:0] return_val_reg;
    
	reg [3:0] hex0, hex1, hex2, hex3, hex4, hex5, hex6, hex7;
	always @ (*) begin
		hex7 <= return_val_reg[31:28];
		hex6 <= return_val_reg[27:24];
		hex5 <= return_val_reg[23:20];
		hex4 <= return_val_reg[19:16];
		hex3 <= return_val_reg[15:12];
		hex2 <= return_val_reg[11:8];
		hex1 <= return_val_reg[7:4];
		hex0 <= return_val_reg[3:0];
	end

    hex_digits h7( .x(hex7), .hex_LEDs(HEX7));
    hex_digits h6( .x(hex6), .hex_LEDs(HEX6));
    hex_digits h5( .x(hex5), .hex_LEDs(HEX5));
    hex_digits h4( .x(hex4), .hex_LEDs(HEX4));
    hex_digits h3( .x(hex3), .hex_LEDs(HEX3));
    hex_digits h2( .x(hex2), .hex_LEDs(HEX2));
    hex_digits h1( .x(hex1), .hex_LEDs(HEX1));
    hex_digits h0( .x(hex0), .hex_LEDs(HEX0));


    top top_inst (
        .clk (clk),
        .reset (reset),
        .start (start),
        .finish (finish),
        .return_val (return_val)
    );

    parameter s_WAIT = 3'b001, s_START = 3'b010, s_EXE = 3'b011,
                s_DONE = 3'b100;

    // state registers
    reg [3:0] y_Q, Y_D;

    assign LEDG[3:0] = y_Q;

    // next state
    always @(*)
    begin
        case (y_Q)
            s_WAIT: if (go) Y_D = s_START; else Y_D = y_Q;

            s_START: Y_D = s_EXE;

            s_EXE: if (!finish) Y_D = s_EXE; else Y_D = s_DONE;

            s_DONE: Y_D = s_DONE;

            default: Y_D = 3'bxxx;
        endcase
    end

    // current state
    always @(posedge clk)
    begin
        if (reset) // synchronous clear
            y_Q <= s_WAIT;
        else
            y_Q <= Y_D;
    end

    always @(posedge clk)
        if (y_Q == s_EXE && finish)
            return_val_reg <= return_val;
        else if (y_Q == s_DONE)
            return_val_reg <= return_val_reg;
        else
            return_val_reg <= 0;


    assign start = (y_Q == s_START);
endmodule

module de4 (
	OSC_50_BANK2,
    BUTTON,
    LED,
	SEG0_D,
	SEG1_D
);
    input OSC_50_BANK2;
    input [1:0] BUTTON;
    output [6:0] SEG0_D;
    output [6:0] SEG1_D;
    output [7:0] LED;

    de2 de2_inst (
        .CLOCK_50 (OSC_50_BANK2),
        .LEDG (LED),
        .KEY (BUTTON),
        .SW (),
        .HEX0 (SEG0_D),
        .HEX1 (SEG1_D),
        .HEX2 (),
        .HEX3 (),
        .HEX4 (),
        .HEX5 (),
        .HEX6 (),
        .HEX7 ()
    );

endmodule
module hex_digits(x, hex_LEDs);
    input [3:0] x;
    output [6:0] hex_LEDs;
    
    assign hex_LEDs[0] = (~x[3] & ~x[2] & ~x[1] & x[0]) |
                            (~x[3] & x[2] & ~x[1] & ~x[0]) |
                            (x[3] & x[2] & ~x[1] & x[0]) |
                            (x[3] & ~x[2] & x[1] & x[0]);
    assign hex_LEDs[1] = (~x[3] & x[2] & ~x[1] & x[0]) |
                            (x[3] & x[1] & x[0]) |
                            (x[3] & x[2] & ~x[0]) |
                            (x[2] & x[1] & ~x[0]);
    assign hex_LEDs[2] = (x[3] & x[2] & ~x[0]) |
                            (x[3] & x[2] & x[1]) |
                            (~x[3] & ~x[2] & x[1] & ~x[0]);
    assign hex_LEDs[3] = (~x[3] & ~x[2] & ~x[1] & x[0]) | 
                            (~x[3] & x[2] & ~x[1] & ~x[0]) | 
                            (x[2] & x[1] & x[0]) | 
                            (x[3] & ~x[2] & x[1] & ~x[0]);
    assign hex_LEDs[4] = (~x[3] & x[0]) |
                            (~x[3] & x[2] & ~x[1]) |
                            (~x[2] & ~x[1] & x[0]);
    assign hex_LEDs[5] = (~x[3] & ~x[2] & x[0]) | 
                            (~x[3] & ~x[2] & x[1]) | 
                            (~x[3] & x[1] & x[0]) | 
                            (x[3] & x[2] & ~x[1] & x[0]);
    assign hex_LEDs[6] = (~x[3] & ~x[2] & ~x[1]) | 
                            (x[3] & x[2] & ~x[1] & ~x[0]) | 
                            (~x[3] & x[2] & x[1] & x[0]);
    
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


// Local Rams



initial 
    clk = 0;
always @(clk)
    clk <= #10 ~clk;

initial begin
//$monitor("At t=%t clk=%b %b %b %b %d", $time, clk, reset, start, finish, return_val);
@(negedge clk);
reset <= 1;
@(negedge clk);
reset <= 0;
start <= 1;

end

always@(finish) begin
    if (finish == 1) begin
        $display("At t=%t clk=%b finish=%b return_val=%d", $time, clk, finish, return_val);
        $display("Cycles: %d", ($time-50)/20);
        $finish;
    end
end

endmodule 
