module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] zlaswp_start
	, output logic [0:0] zlaswp_busy
	, output logic [0:0] zlaswp_done
	, input logic [0:0] zlaswp_stall
	, output logic [31:0] zlaswp_returndata
	, input logic [63:0] zlaswp_n
	, input logic [63:0] zlaswp_a
	, input logic [63:0] zlaswp_lda
	, input logic [63:0] zlaswp_k1
	, input logic [63:0] zlaswp_k2
	, input logic [63:0] zlaswp_ipiv
	, input logic [63:0] zlaswp_incx
	, output logic [63:0] zlaswp_avmm_0_rw_address
	, output logic [7:0] zlaswp_avmm_0_rw_byteenable
	, output logic [0:0] zlaswp_avmm_0_rw_read
	, input logic [63:0] zlaswp_avmm_0_rw_readdata
	, output logic [0:0] zlaswp_avmm_0_rw_write
	, output logic [63:0] zlaswp_avmm_0_rw_writedata
	);

	logic [0:0] zlaswp_start_reg;
	logic [0:0] zlaswp_busy_reg;
	logic [0:0] zlaswp_done_reg;
	logic [0:0] zlaswp_stall_reg;
	logic [31:0] zlaswp_returndata_reg;
	logic [63:0] zlaswp_n_reg;
	logic [63:0] zlaswp_a_reg;
	logic [63:0] zlaswp_lda_reg;
	logic [63:0] zlaswp_k1_reg;
	logic [63:0] zlaswp_k2_reg;
	logic [63:0] zlaswp_ipiv_reg;
	logic [63:0] zlaswp_incx_reg;
	logic [63:0] zlaswp_avmm_0_rw_address_reg;
	logic [7:0] zlaswp_avmm_0_rw_byteenable_reg;
	logic [0:0] zlaswp_avmm_0_rw_read_reg;
	logic [63:0] zlaswp_avmm_0_rw_readdata_reg;
	logic [0:0] zlaswp_avmm_0_rw_write_reg;
	logic [63:0] zlaswp_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		zlaswp_start_reg <= zlaswp_start;
		zlaswp_busy <= zlaswp_busy_reg;
		zlaswp_done <= zlaswp_done_reg;
		zlaswp_stall_reg <= zlaswp_stall;
		zlaswp_returndata <= zlaswp_returndata_reg;
		zlaswp_n_reg <= zlaswp_n;
		zlaswp_a_reg <= zlaswp_a;
		zlaswp_lda_reg <= zlaswp_lda;
		zlaswp_k1_reg <= zlaswp_k1;
		zlaswp_k2_reg <= zlaswp_k2;
		zlaswp_ipiv_reg <= zlaswp_ipiv;
		zlaswp_incx_reg <= zlaswp_incx;
		zlaswp_avmm_0_rw_address <= zlaswp_avmm_0_rw_address_reg;
		zlaswp_avmm_0_rw_byteenable <= zlaswp_avmm_0_rw_byteenable_reg;
		zlaswp_avmm_0_rw_read <= zlaswp_avmm_0_rw_read_reg;
		zlaswp_avmm_0_rw_readdata_reg <= zlaswp_avmm_0_rw_readdata;
		zlaswp_avmm_0_rw_write <= zlaswp_avmm_0_rw_write_reg;
		zlaswp_avmm_0_rw_writedata <= zlaswp_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	zlaswp zlaswp_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(zlaswp_start_reg)
		, .busy(zlaswp_busy_reg)
		, .done(zlaswp_done_reg)
		, .stall(zlaswp_stall_reg)
		, .returndata(zlaswp_returndata_reg)
		, .n(zlaswp_n_reg)
		, .a(zlaswp_a_reg)
		, .lda(zlaswp_lda_reg)
		, .k1(zlaswp_k1_reg)
		, .k2(zlaswp_k2_reg)
		, .ipiv(zlaswp_ipiv_reg)
		, .incx(zlaswp_incx_reg)
		, .avmm_0_rw_address(zlaswp_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(zlaswp_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(zlaswp_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(zlaswp_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(zlaswp_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(zlaswp_avmm_0_rw_writedata_reg)
	);



endmodule
