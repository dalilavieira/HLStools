module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] stb_from_utf8_start
	, output logic [0:0] stb_from_utf8_busy
	, output logic [0:0] stb_from_utf8_done
	, input logic [0:0] stb_from_utf8_stall
	, output logic [63:0] stb_from_utf8_returndata
	, input logic [63:0] stb_from_utf8_buffer0
	, input logic [63:0] stb_from_utf8_ostr
	, input logic [31:0] stb_from_utf8_n
	, output logic [63:0] stb_from_utf8_avmm_0_rw_address
	, output logic [7:0] stb_from_utf8_avmm_0_rw_byteenable
	, output logic [0:0] stb_from_utf8_avmm_0_rw_read
	, input logic [63:0] stb_from_utf8_avmm_0_rw_readdata
	, output logic [0:0] stb_from_utf8_avmm_0_rw_write
	, output logic [63:0] stb_from_utf8_avmm_0_rw_writedata
	);

	logic [0:0] stb_from_utf8_start_reg;
	logic [0:0] stb_from_utf8_busy_reg;
	logic [0:0] stb_from_utf8_done_reg;
	logic [0:0] stb_from_utf8_stall_reg;
	logic [63:0] stb_from_utf8_returndata_reg;
	logic [63:0] stb_from_utf8_buffer0_reg;
	logic [63:0] stb_from_utf8_ostr_reg;
	logic [31:0] stb_from_utf8_n_reg;
	logic [63:0] stb_from_utf8_avmm_0_rw_address_reg;
	logic [7:0] stb_from_utf8_avmm_0_rw_byteenable_reg;
	logic [0:0] stb_from_utf8_avmm_0_rw_read_reg;
	logic [63:0] stb_from_utf8_avmm_0_rw_readdata_reg;
	logic [0:0] stb_from_utf8_avmm_0_rw_write_reg;
	logic [63:0] stb_from_utf8_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		stb_from_utf8_start_reg <= stb_from_utf8_start;
		stb_from_utf8_busy <= stb_from_utf8_busy_reg;
		stb_from_utf8_done <= stb_from_utf8_done_reg;
		stb_from_utf8_stall_reg <= stb_from_utf8_stall;
		stb_from_utf8_returndata <= stb_from_utf8_returndata_reg;
		stb_from_utf8_buffer0_reg <= stb_from_utf8_buffer0;
		stb_from_utf8_ostr_reg <= stb_from_utf8_ostr;
		stb_from_utf8_n_reg <= stb_from_utf8_n;
		stb_from_utf8_avmm_0_rw_address <= stb_from_utf8_avmm_0_rw_address_reg;
		stb_from_utf8_avmm_0_rw_byteenable <= stb_from_utf8_avmm_0_rw_byteenable_reg;
		stb_from_utf8_avmm_0_rw_read <= stb_from_utf8_avmm_0_rw_read_reg;
		stb_from_utf8_avmm_0_rw_readdata_reg <= stb_from_utf8_avmm_0_rw_readdata;
		stb_from_utf8_avmm_0_rw_write <= stb_from_utf8_avmm_0_rw_write_reg;
		stb_from_utf8_avmm_0_rw_writedata <= stb_from_utf8_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	stb_from_utf8 stb_from_utf8_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(stb_from_utf8_start_reg)
		, .busy(stb_from_utf8_busy_reg)
		, .done(stb_from_utf8_done_reg)
		, .stall(stb_from_utf8_stall_reg)
		, .returndata(stb_from_utf8_returndata_reg)
		, .buffer0(stb_from_utf8_buffer0_reg)
		, .ostr(stb_from_utf8_ostr_reg)
		, .n(stb_from_utf8_n_reg)
		, .avmm_0_rw_address(stb_from_utf8_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(stb_from_utf8_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(stb_from_utf8_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(stb_from_utf8_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(stb_from_utf8_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(stb_from_utf8_avmm_0_rw_writedata_reg)
	);



endmodule
