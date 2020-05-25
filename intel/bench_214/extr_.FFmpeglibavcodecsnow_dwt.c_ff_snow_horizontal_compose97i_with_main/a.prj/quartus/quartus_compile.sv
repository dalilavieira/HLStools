module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] ff_snow_horizontal_compose97i_start
	, output logic [0:0] ff_snow_horizontal_compose97i_busy
	, output logic [0:0] ff_snow_horizontal_compose97i_done
	, input logic [0:0] ff_snow_horizontal_compose97i_stall
	, input logic [63:0] ff_snow_horizontal_compose97i_b
	, input logic [63:0] ff_snow_horizontal_compose97i_temp
	, input logic [31:0] ff_snow_horizontal_compose97i_width
	, output logic [63:0] ff_snow_horizontal_compose97i_avmm_0_rw_address
	, output logic [7:0] ff_snow_horizontal_compose97i_avmm_0_rw_byteenable
	, output logic [0:0] ff_snow_horizontal_compose97i_avmm_0_rw_read
	, input logic [63:0] ff_snow_horizontal_compose97i_avmm_0_rw_readdata
	, output logic [0:0] ff_snow_horizontal_compose97i_avmm_0_rw_write
	, output logic [63:0] ff_snow_horizontal_compose97i_avmm_0_rw_writedata
	);

	logic [0:0] ff_snow_horizontal_compose97i_start_reg;
	logic [0:0] ff_snow_horizontal_compose97i_busy_reg;
	logic [0:0] ff_snow_horizontal_compose97i_done_reg;
	logic [0:0] ff_snow_horizontal_compose97i_stall_reg;
	logic [63:0] ff_snow_horizontal_compose97i_b_reg;
	logic [63:0] ff_snow_horizontal_compose97i_temp_reg;
	logic [31:0] ff_snow_horizontal_compose97i_width_reg;
	logic [63:0] ff_snow_horizontal_compose97i_avmm_0_rw_address_reg;
	logic [7:0] ff_snow_horizontal_compose97i_avmm_0_rw_byteenable_reg;
	logic [0:0] ff_snow_horizontal_compose97i_avmm_0_rw_read_reg;
	logic [63:0] ff_snow_horizontal_compose97i_avmm_0_rw_readdata_reg;
	logic [0:0] ff_snow_horizontal_compose97i_avmm_0_rw_write_reg;
	logic [63:0] ff_snow_horizontal_compose97i_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		ff_snow_horizontal_compose97i_start_reg <= ff_snow_horizontal_compose97i_start;
		ff_snow_horizontal_compose97i_busy <= ff_snow_horizontal_compose97i_busy_reg;
		ff_snow_horizontal_compose97i_done <= ff_snow_horizontal_compose97i_done_reg;
		ff_snow_horizontal_compose97i_stall_reg <= ff_snow_horizontal_compose97i_stall;
		ff_snow_horizontal_compose97i_b_reg <= ff_snow_horizontal_compose97i_b;
		ff_snow_horizontal_compose97i_temp_reg <= ff_snow_horizontal_compose97i_temp;
		ff_snow_horizontal_compose97i_width_reg <= ff_snow_horizontal_compose97i_width;
		ff_snow_horizontal_compose97i_avmm_0_rw_address <= ff_snow_horizontal_compose97i_avmm_0_rw_address_reg;
		ff_snow_horizontal_compose97i_avmm_0_rw_byteenable <= ff_snow_horizontal_compose97i_avmm_0_rw_byteenable_reg;
		ff_snow_horizontal_compose97i_avmm_0_rw_read <= ff_snow_horizontal_compose97i_avmm_0_rw_read_reg;
		ff_snow_horizontal_compose97i_avmm_0_rw_readdata_reg <= ff_snow_horizontal_compose97i_avmm_0_rw_readdata;
		ff_snow_horizontal_compose97i_avmm_0_rw_write <= ff_snow_horizontal_compose97i_avmm_0_rw_write_reg;
		ff_snow_horizontal_compose97i_avmm_0_rw_writedata <= ff_snow_horizontal_compose97i_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	ff_snow_horizontal_compose97i ff_snow_horizontal_compose97i_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(ff_snow_horizontal_compose97i_start_reg)
		, .busy(ff_snow_horizontal_compose97i_busy_reg)
		, .done(ff_snow_horizontal_compose97i_done_reg)
		, .stall(ff_snow_horizontal_compose97i_stall_reg)
		, .b(ff_snow_horizontal_compose97i_b_reg)
		, .temp(ff_snow_horizontal_compose97i_temp_reg)
		, .width(ff_snow_horizontal_compose97i_width_reg)
		, .avmm_0_rw_address(ff_snow_horizontal_compose97i_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(ff_snow_horizontal_compose97i_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(ff_snow_horizontal_compose97i_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(ff_snow_horizontal_compose97i_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(ff_snow_horizontal_compose97i_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(ff_snow_horizontal_compose97i_avmm_0_rw_writedata_reg)
	);



endmodule
