module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] bubbleSort_start
	, output logic [0:0] bubbleSort_busy
	, output logic [0:0] bubbleSort_done
	, input logic [0:0] bubbleSort_stall
	, input logic [63:0] bubbleSort_v
	, input logic [31:0] bubbleSort_n
	, output logic [63:0] bubbleSort_avmm_0_rw_address
	, output logic [7:0] bubbleSort_avmm_0_rw_byteenable
	, output logic [0:0] bubbleSort_avmm_0_rw_read
	, input logic [63:0] bubbleSort_avmm_0_rw_readdata
	, output logic [0:0] bubbleSort_avmm_0_rw_write
	, output logic [63:0] bubbleSort_avmm_0_rw_writedata
	);

	logic [0:0] bubbleSort_start_reg;
	logic [0:0] bubbleSort_busy_reg;
	logic [0:0] bubbleSort_done_reg;
	logic [0:0] bubbleSort_stall_reg;
	logic [63:0] bubbleSort_v_reg;
	logic [31:0] bubbleSort_n_reg;
	logic [63:0] bubbleSort_avmm_0_rw_address_reg;
	logic [7:0] bubbleSort_avmm_0_rw_byteenable_reg;
	logic [0:0] bubbleSort_avmm_0_rw_read_reg;
	logic [63:0] bubbleSort_avmm_0_rw_readdata_reg;
	logic [0:0] bubbleSort_avmm_0_rw_write_reg;
	logic [63:0] bubbleSort_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		bubbleSort_start_reg <= bubbleSort_start;
		bubbleSort_busy <= bubbleSort_busy_reg;
		bubbleSort_done <= bubbleSort_done_reg;
		bubbleSort_stall_reg <= bubbleSort_stall;
		bubbleSort_v_reg <= bubbleSort_v;
		bubbleSort_n_reg <= bubbleSort_n;
		bubbleSort_avmm_0_rw_address <= bubbleSort_avmm_0_rw_address_reg;
		bubbleSort_avmm_0_rw_byteenable <= bubbleSort_avmm_0_rw_byteenable_reg;
		bubbleSort_avmm_0_rw_read <= bubbleSort_avmm_0_rw_read_reg;
		bubbleSort_avmm_0_rw_readdata_reg <= bubbleSort_avmm_0_rw_readdata;
		bubbleSort_avmm_0_rw_write <= bubbleSort_avmm_0_rw_write_reg;
		bubbleSort_avmm_0_rw_writedata <= bubbleSort_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	bubbleSort bubbleSort_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(bubbleSort_start_reg)
		, .busy(bubbleSort_busy_reg)
		, .done(bubbleSort_done_reg)
		, .stall(bubbleSort_stall_reg)
		, .v(bubbleSort_v_reg)
		, .n(bubbleSort_n_reg)
		, .avmm_0_rw_address(bubbleSort_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(bubbleSort_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(bubbleSort_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(bubbleSort_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(bubbleSort_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(bubbleSort_avmm_0_rw_writedata_reg)
	);



endmodule
