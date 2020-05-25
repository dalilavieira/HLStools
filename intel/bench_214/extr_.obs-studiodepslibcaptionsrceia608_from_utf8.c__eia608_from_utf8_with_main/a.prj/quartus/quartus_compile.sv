module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] eia608_from_utf8_start
	, output logic [0:0] eia608_from_utf8_busy
	, output logic [0:0] eia608_from_utf8_done
	, input logic [0:0] eia608_from_utf8_stall
	, output logic [31:0] eia608_from_utf8_returndata
	, input logic [63:0] eia608_from_utf8_s
	, output logic [63:0] eia608_from_utf8_avmm_0_rw_address
	, output logic [7:0] eia608_from_utf8_avmm_0_rw_byteenable
	, output logic [0:0] eia608_from_utf8_avmm_0_rw_read
	, input logic [63:0] eia608_from_utf8_avmm_0_rw_readdata
	, output logic [0:0] eia608_from_utf8_avmm_0_rw_write
	, output logic [63:0] eia608_from_utf8_avmm_0_rw_writedata
	);

	logic [0:0] eia608_from_utf8_start_reg;
	logic [0:0] eia608_from_utf8_busy_reg;
	logic [0:0] eia608_from_utf8_done_reg;
	logic [0:0] eia608_from_utf8_stall_reg;
	logic [31:0] eia608_from_utf8_returndata_reg;
	logic [63:0] eia608_from_utf8_s_reg;
	logic [63:0] eia608_from_utf8_avmm_0_rw_address_reg;
	logic [7:0] eia608_from_utf8_avmm_0_rw_byteenable_reg;
	logic [0:0] eia608_from_utf8_avmm_0_rw_read_reg;
	logic [63:0] eia608_from_utf8_avmm_0_rw_readdata_reg;
	logic [0:0] eia608_from_utf8_avmm_0_rw_write_reg;
	logic [63:0] eia608_from_utf8_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		eia608_from_utf8_start_reg <= eia608_from_utf8_start;
		eia608_from_utf8_busy <= eia608_from_utf8_busy_reg;
		eia608_from_utf8_done <= eia608_from_utf8_done_reg;
		eia608_from_utf8_stall_reg <= eia608_from_utf8_stall;
		eia608_from_utf8_returndata <= eia608_from_utf8_returndata_reg;
		eia608_from_utf8_s_reg <= eia608_from_utf8_s;
		eia608_from_utf8_avmm_0_rw_address <= eia608_from_utf8_avmm_0_rw_address_reg;
		eia608_from_utf8_avmm_0_rw_byteenable <= eia608_from_utf8_avmm_0_rw_byteenable_reg;
		eia608_from_utf8_avmm_0_rw_read <= eia608_from_utf8_avmm_0_rw_read_reg;
		eia608_from_utf8_avmm_0_rw_readdata_reg <= eia608_from_utf8_avmm_0_rw_readdata;
		eia608_from_utf8_avmm_0_rw_write <= eia608_from_utf8_avmm_0_rw_write_reg;
		eia608_from_utf8_avmm_0_rw_writedata <= eia608_from_utf8_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	eia608_from_utf8 eia608_from_utf8_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(eia608_from_utf8_start_reg)
		, .busy(eia608_from_utf8_busy_reg)
		, .done(eia608_from_utf8_done_reg)
		, .stall(eia608_from_utf8_stall_reg)
		, .returndata(eia608_from_utf8_returndata_reg)
		, .s(eia608_from_utf8_s_reg)
		, .avmm_0_rw_address(eia608_from_utf8_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(eia608_from_utf8_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(eia608_from_utf8_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(eia608_from_utf8_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(eia608_from_utf8_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(eia608_from_utf8_avmm_0_rw_writedata_reg)
	);



endmodule
