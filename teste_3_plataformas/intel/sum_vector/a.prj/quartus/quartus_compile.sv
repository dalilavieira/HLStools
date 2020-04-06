module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] sum_vector_start
	, output logic [0:0] sum_vector_busy
	, output logic [0:0] sum_vector_done
	, input logic [0:0] sum_vector_stall
	, input logic [63:0] sum_vector_a
	, input logic [63:0] sum_vector_b
	, input logic [63:0] sum_vector_c
	, input logic [31:0] sum_vector_n
	, output logic [63:0] sum_vector_avmm_0_rw_address
	, output logic [7:0] sum_vector_avmm_0_rw_byteenable
	, output logic [0:0] sum_vector_avmm_0_rw_read
	, input logic [63:0] sum_vector_avmm_0_rw_readdata
	, output logic [0:0] sum_vector_avmm_0_rw_write
	, output logic [63:0] sum_vector_avmm_0_rw_writedata
	);

	logic [0:0] sum_vector_start_reg;
	logic [0:0] sum_vector_busy_reg;
	logic [0:0] sum_vector_done_reg;
	logic [0:0] sum_vector_stall_reg;
	logic [63:0] sum_vector_a_reg;
	logic [63:0] sum_vector_b_reg;
	logic [63:0] sum_vector_c_reg;
	logic [31:0] sum_vector_n_reg;
	logic [63:0] sum_vector_avmm_0_rw_address_reg;
	logic [7:0] sum_vector_avmm_0_rw_byteenable_reg;
	logic [0:0] sum_vector_avmm_0_rw_read_reg;
	logic [63:0] sum_vector_avmm_0_rw_readdata_reg;
	logic [0:0] sum_vector_avmm_0_rw_write_reg;
	logic [63:0] sum_vector_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		sum_vector_start_reg <= sum_vector_start;
		sum_vector_busy <= sum_vector_busy_reg;
		sum_vector_done <= sum_vector_done_reg;
		sum_vector_stall_reg <= sum_vector_stall;
		sum_vector_a_reg <= sum_vector_a;
		sum_vector_b_reg <= sum_vector_b;
		sum_vector_c_reg <= sum_vector_c;
		sum_vector_n_reg <= sum_vector_n;
		sum_vector_avmm_0_rw_address <= sum_vector_avmm_0_rw_address_reg;
		sum_vector_avmm_0_rw_byteenable <= sum_vector_avmm_0_rw_byteenable_reg;
		sum_vector_avmm_0_rw_read <= sum_vector_avmm_0_rw_read_reg;
		sum_vector_avmm_0_rw_readdata_reg <= sum_vector_avmm_0_rw_readdata;
		sum_vector_avmm_0_rw_write <= sum_vector_avmm_0_rw_write_reg;
		sum_vector_avmm_0_rw_writedata <= sum_vector_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	sum_vector sum_vector_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(sum_vector_start_reg)
		, .busy(sum_vector_busy_reg)
		, .done(sum_vector_done_reg)
		, .stall(sum_vector_stall_reg)
		, .a(sum_vector_a_reg)
		, .b(sum_vector_b_reg)
		, .c(sum_vector_c_reg)
		, .n(sum_vector_n_reg)
		, .avmm_0_rw_address(sum_vector_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(sum_vector_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(sum_vector_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(sum_vector_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(sum_vector_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(sum_vector_avmm_0_rw_writedata_reg)
	);



endmodule
