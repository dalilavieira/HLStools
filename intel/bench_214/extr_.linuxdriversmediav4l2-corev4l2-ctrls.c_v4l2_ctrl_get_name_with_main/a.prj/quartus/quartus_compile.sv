module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] v4l2_ctrl_get_name_start
	, output logic [0:0] v4l2_ctrl_get_name_busy
	, output logic [0:0] v4l2_ctrl_get_name_done
	, input logic [0:0] v4l2_ctrl_get_name_stall
	, output logic [63:0] v4l2_ctrl_get_name_returndata
	, input logic [31:0] v4l2_ctrl_get_name_id
	);

	logic [0:0] v4l2_ctrl_get_name_start_reg;
	logic [0:0] v4l2_ctrl_get_name_busy_reg;
	logic [0:0] v4l2_ctrl_get_name_done_reg;
	logic [0:0] v4l2_ctrl_get_name_stall_reg;
	logic [63:0] v4l2_ctrl_get_name_returndata_reg;
	logic [31:0] v4l2_ctrl_get_name_id_reg;


	always @(posedge clock) begin
		v4l2_ctrl_get_name_start_reg <= v4l2_ctrl_get_name_start;
		v4l2_ctrl_get_name_busy <= v4l2_ctrl_get_name_busy_reg;
		v4l2_ctrl_get_name_done <= v4l2_ctrl_get_name_done_reg;
		v4l2_ctrl_get_name_stall_reg <= v4l2_ctrl_get_name_stall;
		v4l2_ctrl_get_name_returndata <= v4l2_ctrl_get_name_returndata_reg;
		v4l2_ctrl_get_name_id_reg <= v4l2_ctrl_get_name_id;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	v4l2_ctrl_get_name v4l2_ctrl_get_name_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(v4l2_ctrl_get_name_start_reg)
		, .busy(v4l2_ctrl_get_name_busy_reg)
		, .done(v4l2_ctrl_get_name_done_reg)
		, .stall(v4l2_ctrl_get_name_stall_reg)
		, .returndata(v4l2_ctrl_get_name_returndata_reg)
		, .id(v4l2_ctrl_get_name_id_reg)
	);



endmodule
