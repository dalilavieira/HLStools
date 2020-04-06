module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] floydWarshall_start
	, output logic [0:0] floydWarshall_busy
	, output logic [0:0] floydWarshall_done
	, input logic [0:0] floydWarshall_stall
	, input logic [63:0] floydWarshall_graph
	, output logic [63:0] floydWarshall_avmm_0_rw_address
	, output logic [7:0] floydWarshall_avmm_0_rw_byteenable
	, output logic [0:0] floydWarshall_avmm_0_rw_read
	, input logic [63:0] floydWarshall_avmm_0_rw_readdata
	, output logic [0:0] floydWarshall_avmm_0_rw_write
	, output logic [63:0] floydWarshall_avmm_0_rw_writedata
	);

	logic [0:0] floydWarshall_start_reg;
	logic [0:0] floydWarshall_busy_reg;
	logic [0:0] floydWarshall_done_reg;
	logic [0:0] floydWarshall_stall_reg;
	logic [63:0] floydWarshall_graph_reg;
	logic [63:0] floydWarshall_avmm_0_rw_address_reg;
	logic [7:0] floydWarshall_avmm_0_rw_byteenable_reg;
	logic [0:0] floydWarshall_avmm_0_rw_read_reg;
	logic [63:0] floydWarshall_avmm_0_rw_readdata_reg;
	logic [0:0] floydWarshall_avmm_0_rw_write_reg;
	logic [63:0] floydWarshall_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		floydWarshall_start_reg <= floydWarshall_start;
		floydWarshall_busy <= floydWarshall_busy_reg;
		floydWarshall_done <= floydWarshall_done_reg;
		floydWarshall_stall_reg <= floydWarshall_stall;
		floydWarshall_graph_reg <= floydWarshall_graph;
		floydWarshall_avmm_0_rw_address <= floydWarshall_avmm_0_rw_address_reg;
		floydWarshall_avmm_0_rw_byteenable <= floydWarshall_avmm_0_rw_byteenable_reg;
		floydWarshall_avmm_0_rw_read <= floydWarshall_avmm_0_rw_read_reg;
		floydWarshall_avmm_0_rw_readdata_reg <= floydWarshall_avmm_0_rw_readdata;
		floydWarshall_avmm_0_rw_write <= floydWarshall_avmm_0_rw_write_reg;
		floydWarshall_avmm_0_rw_writedata <= floydWarshall_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	floydWarshall floydWarshall_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(floydWarshall_start_reg)
		, .busy(floydWarshall_busy_reg)
		, .done(floydWarshall_done_reg)
		, .stall(floydWarshall_stall_reg)
		, .graph(floydWarshall_graph_reg)
		, .avmm_0_rw_address(floydWarshall_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(floydWarshall_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(floydWarshall_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(floydWarshall_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(floydWarshall_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(floydWarshall_avmm_0_rw_writedata_reg)
	);



endmodule
