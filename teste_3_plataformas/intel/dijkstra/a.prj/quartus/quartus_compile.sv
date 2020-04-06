module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] dijkstra_start
	, output logic [0:0] dijkstra_busy
	, output logic [0:0] dijkstra_done
	, input logic [0:0] dijkstra_stall
	, input logic [63:0] dijkstra_graph
	, input logic [31:0] dijkstra_src
	, output logic [63:0] dijkstra_avmm_0_rw_address
	, output logic [7:0] dijkstra_avmm_0_rw_byteenable
	, output logic [0:0] dijkstra_avmm_0_rw_read
	, input logic [63:0] dijkstra_avmm_0_rw_readdata
	, output logic [0:0] dijkstra_avmm_0_rw_write
	, output logic [63:0] dijkstra_avmm_0_rw_writedata
	);

	logic [0:0] dijkstra_start_reg;
	logic [0:0] dijkstra_busy_reg;
	logic [0:0] dijkstra_done_reg;
	logic [0:0] dijkstra_stall_reg;
	logic [63:0] dijkstra_graph_reg;
	logic [31:0] dijkstra_src_reg;
	logic [63:0] dijkstra_avmm_0_rw_address_reg;
	logic [7:0] dijkstra_avmm_0_rw_byteenable_reg;
	logic [0:0] dijkstra_avmm_0_rw_read_reg;
	logic [63:0] dijkstra_avmm_0_rw_readdata_reg;
	logic [0:0] dijkstra_avmm_0_rw_write_reg;
	logic [63:0] dijkstra_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		dijkstra_start_reg <= dijkstra_start;
		dijkstra_busy <= dijkstra_busy_reg;
		dijkstra_done <= dijkstra_done_reg;
		dijkstra_stall_reg <= dijkstra_stall;
		dijkstra_graph_reg <= dijkstra_graph;
		dijkstra_src_reg <= dijkstra_src;
		dijkstra_avmm_0_rw_address <= dijkstra_avmm_0_rw_address_reg;
		dijkstra_avmm_0_rw_byteenable <= dijkstra_avmm_0_rw_byteenable_reg;
		dijkstra_avmm_0_rw_read <= dijkstra_avmm_0_rw_read_reg;
		dijkstra_avmm_0_rw_readdata_reg <= dijkstra_avmm_0_rw_readdata;
		dijkstra_avmm_0_rw_write <= dijkstra_avmm_0_rw_write_reg;
		dijkstra_avmm_0_rw_writedata <= dijkstra_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	dijkstra dijkstra_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(dijkstra_start_reg)
		, .busy(dijkstra_busy_reg)
		, .done(dijkstra_done_reg)
		, .stall(dijkstra_stall_reg)
		, .graph(dijkstra_graph_reg)
		, .src(dijkstra_src_reg)
		, .avmm_0_rw_address(dijkstra_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(dijkstra_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(dijkstra_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(dijkstra_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(dijkstra_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(dijkstra_avmm_0_rw_writedata_reg)
	);



endmodule
