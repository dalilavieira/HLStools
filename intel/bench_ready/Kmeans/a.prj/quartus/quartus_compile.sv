module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] kmeans_start
	, output logic [0:0] kmeans_busy
	, output logic [0:0] kmeans_done
	, input logic [0:0] kmeans_stall
	, output logic [31:0] kmeans_returndata
	, input logic [31:0] kmeans_idx
	, input logic [31:0] kmeans_num_clusters
	, input logic [31:0] kmeans_num_dim
	);

	logic [0:0] kmeans_start_reg;
	logic [0:0] kmeans_busy_reg;
	logic [0:0] kmeans_done_reg;
	logic [0:0] kmeans_stall_reg;
	logic [31:0] kmeans_returndata_reg;
	logic [31:0] kmeans_idx_reg;
	logic [31:0] kmeans_num_clusters_reg;
	logic [31:0] kmeans_num_dim_reg;


	always @(posedge clock) begin
		kmeans_start_reg <= kmeans_start;
		kmeans_busy <= kmeans_busy_reg;
		kmeans_done <= kmeans_done_reg;
		kmeans_stall_reg <= kmeans_stall;
		kmeans_returndata <= kmeans_returndata_reg;
		kmeans_idx_reg <= kmeans_idx;
		kmeans_num_clusters_reg <= kmeans_num_clusters;
		kmeans_num_dim_reg <= kmeans_num_dim;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	kmeans kmeans_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(kmeans_start_reg)
		, .busy(kmeans_busy_reg)
		, .done(kmeans_done_reg)
		, .stall(kmeans_stall_reg)
		, .returndata(kmeans_returndata_reg)
		, .idx(kmeans_idx_reg)
		, .num_clusters(kmeans_num_clusters_reg)
		, .num_dim(kmeans_num_dim_reg)
	);



endmodule
