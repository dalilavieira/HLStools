module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] UTF8_getc_start
	, output logic [0:0] UTF8_getc_busy
	, output logic [0:0] UTF8_getc_done
	, input logic [0:0] UTF8_getc_stall
	, output logic [31:0] UTF8_getc_returndata
	, input logic [63:0] UTF8_getc_str
	, input logic [31:0] UTF8_getc_len
	, input logic [63:0] UTF8_getc_val
	, output logic [63:0] UTF8_getc_avmm_0_rw_address
	, output logic [7:0] UTF8_getc_avmm_0_rw_byteenable
	, output logic [0:0] UTF8_getc_avmm_0_rw_read
	, input logic [63:0] UTF8_getc_avmm_0_rw_readdata
	, output logic [0:0] UTF8_getc_avmm_0_rw_write
	, output logic [63:0] UTF8_getc_avmm_0_rw_writedata
	);

	logic [0:0] UTF8_getc_start_reg;
	logic [0:0] UTF8_getc_busy_reg;
	logic [0:0] UTF8_getc_done_reg;
	logic [0:0] UTF8_getc_stall_reg;
	logic [31:0] UTF8_getc_returndata_reg;
	logic [63:0] UTF8_getc_str_reg;
	logic [31:0] UTF8_getc_len_reg;
	logic [63:0] UTF8_getc_val_reg;
	logic [63:0] UTF8_getc_avmm_0_rw_address_reg;
	logic [7:0] UTF8_getc_avmm_0_rw_byteenable_reg;
	logic [0:0] UTF8_getc_avmm_0_rw_read_reg;
	logic [63:0] UTF8_getc_avmm_0_rw_readdata_reg;
	logic [0:0] UTF8_getc_avmm_0_rw_write_reg;
	logic [63:0] UTF8_getc_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		UTF8_getc_start_reg <= UTF8_getc_start;
		UTF8_getc_busy <= UTF8_getc_busy_reg;
		UTF8_getc_done <= UTF8_getc_done_reg;
		UTF8_getc_stall_reg <= UTF8_getc_stall;
		UTF8_getc_returndata <= UTF8_getc_returndata_reg;
		UTF8_getc_str_reg <= UTF8_getc_str;
		UTF8_getc_len_reg <= UTF8_getc_len;
		UTF8_getc_val_reg <= UTF8_getc_val;
		UTF8_getc_avmm_0_rw_address <= UTF8_getc_avmm_0_rw_address_reg;
		UTF8_getc_avmm_0_rw_byteenable <= UTF8_getc_avmm_0_rw_byteenable_reg;
		UTF8_getc_avmm_0_rw_read <= UTF8_getc_avmm_0_rw_read_reg;
		UTF8_getc_avmm_0_rw_readdata_reg <= UTF8_getc_avmm_0_rw_readdata;
		UTF8_getc_avmm_0_rw_write <= UTF8_getc_avmm_0_rw_write_reg;
		UTF8_getc_avmm_0_rw_writedata <= UTF8_getc_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	UTF8_getc UTF8_getc_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(UTF8_getc_start_reg)
		, .busy(UTF8_getc_busy_reg)
		, .done(UTF8_getc_done_reg)
		, .stall(UTF8_getc_stall_reg)
		, .returndata(UTF8_getc_returndata_reg)
		, .str(UTF8_getc_str_reg)
		, .len(UTF8_getc_len_reg)
		, .val(UTF8_getc_val_reg)
		, .avmm_0_rw_address(UTF8_getc_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(UTF8_getc_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(UTF8_getc_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(UTF8_getc_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(UTF8_getc_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(UTF8_getc_avmm_0_rw_writedata_reg)
	);



endmodule
