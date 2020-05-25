module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] xmlCheckLanguageID_start
	, output logic [0:0] xmlCheckLanguageID_busy
	, output logic [0:0] xmlCheckLanguageID_done
	, input logic [0:0] xmlCheckLanguageID_stall
	, output logic [31:0] xmlCheckLanguageID_returndata
	, input logic [63:0] xmlCheckLanguageID_lang
	, output logic [63:0] xmlCheckLanguageID_avmm_0_rw_address
	, output logic [7:0] xmlCheckLanguageID_avmm_0_rw_byteenable
	, output logic [0:0] xmlCheckLanguageID_avmm_0_rw_read
	, input logic [63:0] xmlCheckLanguageID_avmm_0_rw_readdata
	, output logic [0:0] xmlCheckLanguageID_avmm_0_rw_write
	, output logic [63:0] xmlCheckLanguageID_avmm_0_rw_writedata
	);

	logic [0:0] xmlCheckLanguageID_start_reg;
	logic [0:0] xmlCheckLanguageID_busy_reg;
	logic [0:0] xmlCheckLanguageID_done_reg;
	logic [0:0] xmlCheckLanguageID_stall_reg;
	logic [31:0] xmlCheckLanguageID_returndata_reg;
	logic [63:0] xmlCheckLanguageID_lang_reg;
	logic [63:0] xmlCheckLanguageID_avmm_0_rw_address_reg;
	logic [7:0] xmlCheckLanguageID_avmm_0_rw_byteenable_reg;
	logic [0:0] xmlCheckLanguageID_avmm_0_rw_read_reg;
	logic [63:0] xmlCheckLanguageID_avmm_0_rw_readdata_reg;
	logic [0:0] xmlCheckLanguageID_avmm_0_rw_write_reg;
	logic [63:0] xmlCheckLanguageID_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		xmlCheckLanguageID_start_reg <= xmlCheckLanguageID_start;
		xmlCheckLanguageID_busy <= xmlCheckLanguageID_busy_reg;
		xmlCheckLanguageID_done <= xmlCheckLanguageID_done_reg;
		xmlCheckLanguageID_stall_reg <= xmlCheckLanguageID_stall;
		xmlCheckLanguageID_returndata <= xmlCheckLanguageID_returndata_reg;
		xmlCheckLanguageID_lang_reg <= xmlCheckLanguageID_lang;
		xmlCheckLanguageID_avmm_0_rw_address <= xmlCheckLanguageID_avmm_0_rw_address_reg;
		xmlCheckLanguageID_avmm_0_rw_byteenable <= xmlCheckLanguageID_avmm_0_rw_byteenable_reg;
		xmlCheckLanguageID_avmm_0_rw_read <= xmlCheckLanguageID_avmm_0_rw_read_reg;
		xmlCheckLanguageID_avmm_0_rw_readdata_reg <= xmlCheckLanguageID_avmm_0_rw_readdata;
		xmlCheckLanguageID_avmm_0_rw_write <= xmlCheckLanguageID_avmm_0_rw_write_reg;
		xmlCheckLanguageID_avmm_0_rw_writedata <= xmlCheckLanguageID_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	xmlCheckLanguageID xmlCheckLanguageID_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(xmlCheckLanguageID_start_reg)
		, .busy(xmlCheckLanguageID_busy_reg)
		, .done(xmlCheckLanguageID_done_reg)
		, .stall(xmlCheckLanguageID_stall_reg)
		, .returndata(xmlCheckLanguageID_returndata_reg)
		, .lang(xmlCheckLanguageID_lang_reg)
		, .avmm_0_rw_address(xmlCheckLanguageID_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(xmlCheckLanguageID_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(xmlCheckLanguageID_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(xmlCheckLanguageID_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(xmlCheckLanguageID_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(xmlCheckLanguageID_avmm_0_rw_writedata_reg)
	);



endmodule
