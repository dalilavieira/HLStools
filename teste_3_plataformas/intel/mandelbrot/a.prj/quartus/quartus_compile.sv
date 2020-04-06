module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] mandelbrot_start
	, output logic [0:0] mandelbrot_busy
	, output logic [0:0] mandelbrot_done
	, input logic [0:0] mandelbrot_stall
	, input logic [31:0] mandelbrot_xmax
	, input logic [31:0] mandelbrot_xmin
	, input logic [31:0] mandelbrot_ymax
	, input logic [31:0] mandelbrot_ymin
	, input logic [31:0] mandelbrot_maxiter
	, input logic [31:0] mandelbrot_xres
	, input logic [31:0] mandelbrot_yres
	, input logic [31:0] mandelbrot_dx
	, input logic [31:0] mandelbrot_dy
	);

	logic [0:0] mandelbrot_start_reg;
	logic [0:0] mandelbrot_busy_reg;
	logic [0:0] mandelbrot_done_reg;
	logic [0:0] mandelbrot_stall_reg;
	logic [31:0] mandelbrot_xmax_reg;
	logic [31:0] mandelbrot_xmin_reg;
	logic [31:0] mandelbrot_ymax_reg;
	logic [31:0] mandelbrot_ymin_reg;
	logic [31:0] mandelbrot_maxiter_reg;
	logic [31:0] mandelbrot_xres_reg;
	logic [31:0] mandelbrot_yres_reg;
	logic [31:0] mandelbrot_dx_reg;
	logic [31:0] mandelbrot_dy_reg;


	always @(posedge clock) begin
		mandelbrot_start_reg <= mandelbrot_start;
		mandelbrot_busy <= mandelbrot_busy_reg;
		mandelbrot_done <= mandelbrot_done_reg;
		mandelbrot_stall_reg <= mandelbrot_stall;
		mandelbrot_xmax_reg <= mandelbrot_xmax;
		mandelbrot_xmin_reg <= mandelbrot_xmin;
		mandelbrot_ymax_reg <= mandelbrot_ymax;
		mandelbrot_ymin_reg <= mandelbrot_ymin;
		mandelbrot_maxiter_reg <= mandelbrot_maxiter;
		mandelbrot_xres_reg <= mandelbrot_xres;
		mandelbrot_yres_reg <= mandelbrot_yres;
		mandelbrot_dx_reg <= mandelbrot_dx;
		mandelbrot_dy_reg <= mandelbrot_dy;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	mandelbrot mandelbrot_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(mandelbrot_start_reg)
		, .busy(mandelbrot_busy_reg)
		, .done(mandelbrot_done_reg)
		, .stall(mandelbrot_stall_reg)
		, .xmax(mandelbrot_xmax_reg)
		, .xmin(mandelbrot_xmin_reg)
		, .ymax(mandelbrot_ymax_reg)
		, .ymin(mandelbrot_ymin_reg)
		, .maxiter(mandelbrot_maxiter_reg)
		, .xres(mandelbrot_xres_reg)
		, .yres(mandelbrot_yres_reg)
		, .dx(mandelbrot_dx_reg)
		, .dy(mandelbrot_dy_reg)
	);



endmodule
