module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] main_start
	, output logic [0:0] main_busy
	, output logic [0:0] main_done
	, input logic [0:0] main_stall
	, output logic [31:0] main_returndata
	, input logic [63:0] main_DCB_PFC_UP_ATTR_0
	, input logic [63:0] main_DCB_PFC_UP_ATTR_MAX
	, input logic [63:0] main_DCB_PG_ATTR_BW_ID_0
	, input logic [63:0] main_DCB_PG_ATTR_BW_ID_MAX
	, output logic [63:0] main_avmm_0_rw_address
	, output logic [7:0] main_avmm_0_rw_byteenable
	, output logic [0:0] main_avmm_0_rw_read
	, input logic [63:0] main_avmm_0_rw_readdata
	, output logic [0:0] main_avmm_0_rw_write
	, output logic [63:0] main_avmm_0_rw_writedata
	);

	logic [0:0] main_start_reg;
	logic [0:0] main_busy_reg;
	logic [0:0] main_done_reg;
	logic [0:0] main_stall_reg;
	logic [31:0] main_returndata_reg;
	logic [63:0] main_DCB_PFC_UP_ATTR_0_reg;
	logic [63:0] main_DCB_PFC_UP_ATTR_MAX_reg;
	logic [63:0] main_DCB_PG_ATTR_BW_ID_0_reg;
	logic [63:0] main_DCB_PG_ATTR_BW_ID_MAX_reg;
	logic [63:0] main_avmm_0_rw_address_reg;
	logic [7:0] main_avmm_0_rw_byteenable_reg;
	logic [0:0] main_avmm_0_rw_read_reg;
	logic [63:0] main_avmm_0_rw_readdata_reg;
	logic [0:0] main_avmm_0_rw_write_reg;
	logic [63:0] main_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		main_start_reg <= main_start;
		main_busy <= main_busy_reg;
		main_done <= main_done_reg;
		main_stall_reg <= main_stall;
		main_returndata <= main_returndata_reg;
		main_DCB_PFC_UP_ATTR_0_reg <= main_DCB_PFC_UP_ATTR_0;
		main_DCB_PFC_UP_ATTR_MAX_reg <= main_DCB_PFC_UP_ATTR_MAX;
		main_DCB_PG_ATTR_BW_ID_0_reg <= main_DCB_PG_ATTR_BW_ID_0;
		main_DCB_PG_ATTR_BW_ID_MAX_reg <= main_DCB_PG_ATTR_BW_ID_MAX;
		main_avmm_0_rw_address <= main_avmm_0_rw_address_reg;
		main_avmm_0_rw_byteenable <= main_avmm_0_rw_byteenable_reg;
		main_avmm_0_rw_read <= main_avmm_0_rw_read_reg;
		main_avmm_0_rw_readdata_reg <= main_avmm_0_rw_readdata;
		main_avmm_0_rw_write <= main_avmm_0_rw_write_reg;
		main_avmm_0_rw_writedata <= main_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	main main_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(main_start_reg)
		, .busy(main_busy_reg)
		, .done(main_done_reg)
		, .stall(main_stall_reg)
		, .returndata(main_returndata_reg)
		, .DCB_PFC_UP_ATTR_0(main_DCB_PFC_UP_ATTR_0_reg)
		, .DCB_PFC_UP_ATTR_MAX(main_DCB_PFC_UP_ATTR_MAX_reg)
		, .DCB_PG_ATTR_BW_ID_0(main_DCB_PG_ATTR_BW_ID_0_reg)
		, .DCB_PG_ATTR_BW_ID_MAX(main_DCB_PG_ATTR_BW_ID_MAX_reg)
		, .avmm_0_rw_address(main_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(main_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(main_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(main_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(main_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(main_avmm_0_rw_writedata_reg)
	);



endmodule
