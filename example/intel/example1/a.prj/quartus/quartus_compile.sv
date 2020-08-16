module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] foo_start
	, output logic [0:0] foo_busy
	, output logic [0:0] foo_done
	, input logic [0:0] foo_stall
	, output logic [7:0] foo_returndata
	, input logic [63:0] foo_a
	, output logic [63:0] foo_avmm_0_rw_address
	, output logic [7:0] foo_avmm_0_rw_byteenable
	, output logic [0:0] foo_avmm_0_rw_read
	, input logic [63:0] foo_avmm_0_rw_readdata
	, output logic [0:0] foo_avmm_0_rw_write
	, output logic [63:0] foo_avmm_0_rw_writedata
	);

	logic [0:0] foo_start_reg;
	logic [0:0] foo_busy_reg;
	logic [0:0] foo_done_reg;
	logic [0:0] foo_stall_reg;
	logic [7:0] foo_returndata_reg;
	logic [63:0] foo_a_reg;
	logic [63:0] foo_avmm_0_rw_address_reg;
	logic [7:0] foo_avmm_0_rw_byteenable_reg;
	logic [0:0] foo_avmm_0_rw_read_reg;
	logic [63:0] foo_avmm_0_rw_readdata_reg;
	logic [0:0] foo_avmm_0_rw_write_reg;
	logic [63:0] foo_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		foo_start_reg <= foo_start;
		foo_busy <= foo_busy_reg;
		foo_done <= foo_done_reg;
		foo_stall_reg <= foo_stall;
		foo_returndata <= foo_returndata_reg;
		foo_a_reg <= foo_a;
		foo_avmm_0_rw_address <= foo_avmm_0_rw_address_reg;
		foo_avmm_0_rw_byteenable <= foo_avmm_0_rw_byteenable_reg;
		foo_avmm_0_rw_read <= foo_avmm_0_rw_read_reg;
		foo_avmm_0_rw_readdata_reg <= foo_avmm_0_rw_readdata;
		foo_avmm_0_rw_write <= foo_avmm_0_rw_write_reg;
		foo_avmm_0_rw_writedata <= foo_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	foo foo_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(foo_start_reg)
		, .busy(foo_busy_reg)
		, .done(foo_done_reg)
		, .stall(foo_stall_reg)
		, .returndata(foo_returndata_reg)
		, .a(foo_a_reg)
		, .avmm_0_rw_address(foo_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(foo_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(foo_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(foo_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(foo_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(foo_avmm_0_rw_writedata_reg)
	);



endmodule
