module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] claswp_start
	, output logic [0:0] claswp_busy
	, output logic [0:0] claswp_done
	, input logic [0:0] claswp_stall
	, output logic [31:0] claswp_returndata
	, input logic [63:0] claswp_n
	, input logic [63:0] claswp_a
	, input logic [63:0] claswp_lda
	, input logic [63:0] claswp_k1
	, input logic [63:0] claswp_k2
	, input logic [63:0] claswp_ipiv
	, input logic [63:0] claswp_incx
	, output logic [63:0] claswp_avmm_0_rw_address
	, output logic [7:0] claswp_avmm_0_rw_byteenable
	, output logic [0:0] claswp_avmm_0_rw_read
	, input logic [63:0] claswp_avmm_0_rw_readdata
	, output logic [0:0] claswp_avmm_0_rw_write
	, output logic [63:0] claswp_avmm_0_rw_writedata
	);

	logic [0:0] claswp_start_reg;
	logic [0:0] claswp_busy_reg;
	logic [0:0] claswp_done_reg;
	logic [0:0] claswp_stall_reg;
	logic [31:0] claswp_returndata_reg;
	logic [63:0] claswp_n_reg;
	logic [63:0] claswp_a_reg;
	logic [63:0] claswp_lda_reg;
	logic [63:0] claswp_k1_reg;
	logic [63:0] claswp_k2_reg;
	logic [63:0] claswp_ipiv_reg;
	logic [63:0] claswp_incx_reg;
	logic [63:0] claswp_avmm_0_rw_address_reg;
	logic [7:0] claswp_avmm_0_rw_byteenable_reg;
	logic [0:0] claswp_avmm_0_rw_read_reg;
	logic [63:0] claswp_avmm_0_rw_readdata_reg;
	logic [0:0] claswp_avmm_0_rw_write_reg;
	logic [63:0] claswp_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		claswp_start_reg <= claswp_start;
		claswp_busy <= claswp_busy_reg;
		claswp_done <= claswp_done_reg;
		claswp_stall_reg <= claswp_stall;
		claswp_returndata <= claswp_returndata_reg;
		claswp_n_reg <= claswp_n;
		claswp_a_reg <= claswp_a;
		claswp_lda_reg <= claswp_lda;
		claswp_k1_reg <= claswp_k1;
		claswp_k2_reg <= claswp_k2;
		claswp_ipiv_reg <= claswp_ipiv;
		claswp_incx_reg <= claswp_incx;
		claswp_avmm_0_rw_address <= claswp_avmm_0_rw_address_reg;
		claswp_avmm_0_rw_byteenable <= claswp_avmm_0_rw_byteenable_reg;
		claswp_avmm_0_rw_read <= claswp_avmm_0_rw_read_reg;
		claswp_avmm_0_rw_readdata_reg <= claswp_avmm_0_rw_readdata;
		claswp_avmm_0_rw_write <= claswp_avmm_0_rw_write_reg;
		claswp_avmm_0_rw_writedata <= claswp_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	claswp claswp_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(claswp_start_reg)
		, .busy(claswp_busy_reg)
		, .done(claswp_done_reg)
		, .stall(claswp_stall_reg)
		, .returndata(claswp_returndata_reg)
		, .n(claswp_n_reg)
		, .a(claswp_a_reg)
		, .lda(claswp_lda_reg)
		, .k1(claswp_k1_reg)
		, .k2(claswp_k2_reg)
		, .ipiv(claswp_ipiv_reg)
		, .incx(claswp_incx_reg)
		, .avmm_0_rw_address(claswp_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(claswp_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(claswp_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(claswp_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(claswp_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(claswp_avmm_0_rw_writedata_reg)
	);



endmodule
