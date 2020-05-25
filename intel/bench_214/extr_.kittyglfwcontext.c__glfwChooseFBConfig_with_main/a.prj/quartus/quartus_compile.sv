module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] glfwChooseFBConfig_start
	, output logic [0:0] glfwChooseFBConfig_busy
	, output logic [0:0] glfwChooseFBConfig_done
	, input logic [0:0] glfwChooseFBConfig_stall
	, output logic [63:0] glfwChooseFBConfig_returndata
	, input logic [63:0] glfwChooseFBConfig_desired
	, input logic [63:0] glfwChooseFBConfig_alternatives
	, input logic [31:0] glfwChooseFBConfig_count
	, input logic [63:0] glfwChooseFBConfig_GLFW_DONT_CARE
	, input logic [63:0] glfwChooseFBConfig_UINT_MAX
	, output logic [63:0] glfwChooseFBConfig_avmm_0_rw_address
	, output logic [7:0] glfwChooseFBConfig_avmm_0_rw_byteenable
	, output logic [0:0] glfwChooseFBConfig_avmm_0_rw_read
	, input logic [63:0] glfwChooseFBConfig_avmm_0_rw_readdata
	, output logic [0:0] glfwChooseFBConfig_avmm_0_rw_write
	, output logic [63:0] glfwChooseFBConfig_avmm_0_rw_writedata
	);

	logic [0:0] glfwChooseFBConfig_start_reg;
	logic [0:0] glfwChooseFBConfig_busy_reg;
	logic [0:0] glfwChooseFBConfig_done_reg;
	logic [0:0] glfwChooseFBConfig_stall_reg;
	logic [63:0] glfwChooseFBConfig_returndata_reg;
	logic [63:0] glfwChooseFBConfig_desired_reg;
	logic [63:0] glfwChooseFBConfig_alternatives_reg;
	logic [31:0] glfwChooseFBConfig_count_reg;
	logic [63:0] glfwChooseFBConfig_GLFW_DONT_CARE_reg;
	logic [63:0] glfwChooseFBConfig_UINT_MAX_reg;
	logic [63:0] glfwChooseFBConfig_avmm_0_rw_address_reg;
	logic [7:0] glfwChooseFBConfig_avmm_0_rw_byteenable_reg;
	logic [0:0] glfwChooseFBConfig_avmm_0_rw_read_reg;
	logic [63:0] glfwChooseFBConfig_avmm_0_rw_readdata_reg;
	logic [0:0] glfwChooseFBConfig_avmm_0_rw_write_reg;
	logic [63:0] glfwChooseFBConfig_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		glfwChooseFBConfig_start_reg <= glfwChooseFBConfig_start;
		glfwChooseFBConfig_busy <= glfwChooseFBConfig_busy_reg;
		glfwChooseFBConfig_done <= glfwChooseFBConfig_done_reg;
		glfwChooseFBConfig_stall_reg <= glfwChooseFBConfig_stall;
		glfwChooseFBConfig_returndata <= glfwChooseFBConfig_returndata_reg;
		glfwChooseFBConfig_desired_reg <= glfwChooseFBConfig_desired;
		glfwChooseFBConfig_alternatives_reg <= glfwChooseFBConfig_alternatives;
		glfwChooseFBConfig_count_reg <= glfwChooseFBConfig_count;
		glfwChooseFBConfig_GLFW_DONT_CARE_reg <= glfwChooseFBConfig_GLFW_DONT_CARE;
		glfwChooseFBConfig_UINT_MAX_reg <= glfwChooseFBConfig_UINT_MAX;
		glfwChooseFBConfig_avmm_0_rw_address <= glfwChooseFBConfig_avmm_0_rw_address_reg;
		glfwChooseFBConfig_avmm_0_rw_byteenable <= glfwChooseFBConfig_avmm_0_rw_byteenable_reg;
		glfwChooseFBConfig_avmm_0_rw_read <= glfwChooseFBConfig_avmm_0_rw_read_reg;
		glfwChooseFBConfig_avmm_0_rw_readdata_reg <= glfwChooseFBConfig_avmm_0_rw_readdata;
		glfwChooseFBConfig_avmm_0_rw_write <= glfwChooseFBConfig_avmm_0_rw_write_reg;
		glfwChooseFBConfig_avmm_0_rw_writedata <= glfwChooseFBConfig_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	glfwChooseFBConfig glfwChooseFBConfig_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(glfwChooseFBConfig_start_reg)
		, .busy(glfwChooseFBConfig_busy_reg)
		, .done(glfwChooseFBConfig_done_reg)
		, .stall(glfwChooseFBConfig_stall_reg)
		, .returndata(glfwChooseFBConfig_returndata_reg)
		, .desired(glfwChooseFBConfig_desired_reg)
		, .alternatives(glfwChooseFBConfig_alternatives_reg)
		, .count(glfwChooseFBConfig_count_reg)
		, .GLFW_DONT_CARE(glfwChooseFBConfig_GLFW_DONT_CARE_reg)
		, .UINT_MAX(glfwChooseFBConfig_UINT_MAX_reg)
		, .avmm_0_rw_address(glfwChooseFBConfig_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(glfwChooseFBConfig_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(glfwChooseFBConfig_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(glfwChooseFBConfig_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(glfwChooseFBConfig_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(glfwChooseFBConfig_avmm_0_rw_writedata_reg)
	);



endmodule
