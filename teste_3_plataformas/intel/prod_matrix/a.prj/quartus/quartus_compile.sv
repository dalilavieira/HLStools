module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] prod_matrix_start
	, output logic [0:0] prod_matrix_busy
	, output logic [0:0] prod_matrix_done
	, input logic [0:0] prod_matrix_stall
	, input logic [63:0] prod_matrix_v
	, input logic [63:0] prod_matrix_r
	, input logic [31:0] prod_matrix_row
	, input logic [31:0] prod_matrix_col
	, output logic [63:0] prod_matrix_avmm_0_rw_address
	, output logic [7:0] prod_matrix_avmm_0_rw_byteenable
	, output logic [0:0] prod_matrix_avmm_0_rw_read
	, input logic [63:0] prod_matrix_avmm_0_rw_readdata
	, output logic [0:0] prod_matrix_avmm_0_rw_write
	, output logic [63:0] prod_matrix_avmm_0_rw_writedata
	);

	logic [0:0] prod_matrix_start_reg;
	logic [0:0] prod_matrix_busy_reg;
	logic [0:0] prod_matrix_done_reg;
	logic [0:0] prod_matrix_stall_reg;
	logic [63:0] prod_matrix_v_reg;
	logic [63:0] prod_matrix_r_reg;
	logic [31:0] prod_matrix_row_reg;
	logic [31:0] prod_matrix_col_reg;
	logic [63:0] prod_matrix_avmm_0_rw_address_reg;
	logic [7:0] prod_matrix_avmm_0_rw_byteenable_reg;
	logic [0:0] prod_matrix_avmm_0_rw_read_reg;
	logic [63:0] prod_matrix_avmm_0_rw_readdata_reg;
	logic [0:0] prod_matrix_avmm_0_rw_write_reg;
	logic [63:0] prod_matrix_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		prod_matrix_start_reg <= prod_matrix_start;
		prod_matrix_busy <= prod_matrix_busy_reg;
		prod_matrix_done <= prod_matrix_done_reg;
		prod_matrix_stall_reg <= prod_matrix_stall;
		prod_matrix_v_reg <= prod_matrix_v;
		prod_matrix_r_reg <= prod_matrix_r;
		prod_matrix_row_reg <= prod_matrix_row;
		prod_matrix_col_reg <= prod_matrix_col;
		prod_matrix_avmm_0_rw_address <= prod_matrix_avmm_0_rw_address_reg;
		prod_matrix_avmm_0_rw_byteenable <= prod_matrix_avmm_0_rw_byteenable_reg;
		prod_matrix_avmm_0_rw_read <= prod_matrix_avmm_0_rw_read_reg;
		prod_matrix_avmm_0_rw_readdata_reg <= prod_matrix_avmm_0_rw_readdata;
		prod_matrix_avmm_0_rw_write <= prod_matrix_avmm_0_rw_write_reg;
		prod_matrix_avmm_0_rw_writedata <= prod_matrix_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	prod_matrix prod_matrix_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(prod_matrix_start_reg)
		, .busy(prod_matrix_busy_reg)
		, .done(prod_matrix_done_reg)
		, .stall(prod_matrix_stall_reg)
		, .v(prod_matrix_v_reg)
		, .r(prod_matrix_r_reg)
		, .row(prod_matrix_row_reg)
		, .col(prod_matrix_col_reg)
		, .avmm_0_rw_address(prod_matrix_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(prod_matrix_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(prod_matrix_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(prod_matrix_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(prod_matrix_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(prod_matrix_avmm_0_rw_writedata_reg)
	);



endmodule
