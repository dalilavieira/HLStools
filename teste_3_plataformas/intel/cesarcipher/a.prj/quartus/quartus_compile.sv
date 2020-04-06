module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] cesarcipher_start
	, output logic [0:0] cesarcipher_busy
	, output logic [0:0] cesarcipher_done
	, input logic [0:0] cesarcipher_stall
	, input logic [63:0] cesarcipher_palavra
	, input logic [31:0] cesarcipher_n
	, output logic [63:0] cesarcipher_avmm_0_rw_address
	, output logic [7:0] cesarcipher_avmm_0_rw_byteenable
	, output logic [0:0] cesarcipher_avmm_0_rw_read
	, input logic [63:0] cesarcipher_avmm_0_rw_readdata
	, output logic [0:0] cesarcipher_avmm_0_rw_write
	, output logic [63:0] cesarcipher_avmm_0_rw_writedata
	);

	logic [0:0] cesarcipher_start_reg;
	logic [0:0] cesarcipher_busy_reg;
	logic [0:0] cesarcipher_done_reg;
	logic [0:0] cesarcipher_stall_reg;
	logic [63:0] cesarcipher_palavra_reg;
	logic [31:0] cesarcipher_n_reg;
	logic [63:0] cesarcipher_avmm_0_rw_address_reg;
	logic [7:0] cesarcipher_avmm_0_rw_byteenable_reg;
	logic [0:0] cesarcipher_avmm_0_rw_read_reg;
	logic [63:0] cesarcipher_avmm_0_rw_readdata_reg;
	logic [0:0] cesarcipher_avmm_0_rw_write_reg;
	logic [63:0] cesarcipher_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		cesarcipher_start_reg <= cesarcipher_start;
		cesarcipher_busy <= cesarcipher_busy_reg;
		cesarcipher_done <= cesarcipher_done_reg;
		cesarcipher_stall_reg <= cesarcipher_stall;
		cesarcipher_palavra_reg <= cesarcipher_palavra;
		cesarcipher_n_reg <= cesarcipher_n;
		cesarcipher_avmm_0_rw_address <= cesarcipher_avmm_0_rw_address_reg;
		cesarcipher_avmm_0_rw_byteenable <= cesarcipher_avmm_0_rw_byteenable_reg;
		cesarcipher_avmm_0_rw_read <= cesarcipher_avmm_0_rw_read_reg;
		cesarcipher_avmm_0_rw_readdata_reg <= cesarcipher_avmm_0_rw_readdata;
		cesarcipher_avmm_0_rw_write <= cesarcipher_avmm_0_rw_write_reg;
		cesarcipher_avmm_0_rw_writedata <= cesarcipher_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	cesarcipher cesarcipher_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(cesarcipher_start_reg)
		, .busy(cesarcipher_busy_reg)
		, .done(cesarcipher_done_reg)
		, .stall(cesarcipher_stall_reg)
		, .palavra(cesarcipher_palavra_reg)
		, .n(cesarcipher_n_reg)
		, .avmm_0_rw_address(cesarcipher_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(cesarcipher_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(cesarcipher_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(cesarcipher_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(cesarcipher_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(cesarcipher_avmm_0_rw_writedata_reg)
	);



endmodule
