module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] mlx5_command_str_start
	, output logic [0:0] mlx5_command_str_busy
	, output logic [0:0] mlx5_command_str_done
	, input logic [0:0] mlx5_command_str_stall
	, output logic [63:0] mlx5_command_str_returndata
	, input logic [31:0] mlx5_command_str_command
	);

	logic [0:0] mlx5_command_str_start_reg;
	logic [0:0] mlx5_command_str_busy_reg;
	logic [0:0] mlx5_command_str_done_reg;
	logic [0:0] mlx5_command_str_stall_reg;
	logic [63:0] mlx5_command_str_returndata_reg;
	logic [31:0] mlx5_command_str_command_reg;


	always @(posedge clock) begin
		mlx5_command_str_start_reg <= mlx5_command_str_start;
		mlx5_command_str_busy <= mlx5_command_str_busy_reg;
		mlx5_command_str_done <= mlx5_command_str_done_reg;
		mlx5_command_str_stall_reg <= mlx5_command_str_stall;
		mlx5_command_str_returndata <= mlx5_command_str_returndata_reg;
		mlx5_command_str_command_reg <= mlx5_command_str_command;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	mlx5_command_str mlx5_command_str_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(mlx5_command_str_start_reg)
		, .busy(mlx5_command_str_busy_reg)
		, .done(mlx5_command_str_done_reg)
		, .stall(mlx5_command_str_stall_reg)
		, .returndata(mlx5_command_str_returndata_reg)
		, .command(mlx5_command_str_command_reg)
	);



endmodule
