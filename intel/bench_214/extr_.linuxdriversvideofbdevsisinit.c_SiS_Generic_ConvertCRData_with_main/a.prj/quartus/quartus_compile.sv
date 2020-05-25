module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] SiS_Generic_ConvertCRData_start
	, output logic [0:0] SiS_Generic_ConvertCRData_busy
	, output logic [0:0] SiS_Generic_ConvertCRData_done
	, input logic [0:0] SiS_Generic_ConvertCRData_stall
	, input logic [63:0] SiS_Generic_ConvertCRData_SiS_Pr
	, input logic [63:0] SiS_Generic_ConvertCRData_crdata
	, input logic [31:0] SiS_Generic_ConvertCRData_xres
	, input logic [31:0] SiS_Generic_ConvertCRData_yres
	, input logic [63:0] SiS_Generic_ConvertCRData_var0
	, input logic [0:0] SiS_Generic_ConvertCRData_writeres
	, output logic [63:0] SiS_Generic_ConvertCRData_avmm_0_rw_address
	, output logic [7:0] SiS_Generic_ConvertCRData_avmm_0_rw_byteenable
	, output logic [0:0] SiS_Generic_ConvertCRData_avmm_0_rw_read
	, input logic [63:0] SiS_Generic_ConvertCRData_avmm_0_rw_readdata
	, output logic [0:0] SiS_Generic_ConvertCRData_avmm_0_rw_write
	, output logic [63:0] SiS_Generic_ConvertCRData_avmm_0_rw_writedata
	);

	logic [0:0] SiS_Generic_ConvertCRData_start_reg;
	logic [0:0] SiS_Generic_ConvertCRData_busy_reg;
	logic [0:0] SiS_Generic_ConvertCRData_done_reg;
	logic [0:0] SiS_Generic_ConvertCRData_stall_reg;
	logic [63:0] SiS_Generic_ConvertCRData_SiS_Pr_reg;
	logic [63:0] SiS_Generic_ConvertCRData_crdata_reg;
	logic [31:0] SiS_Generic_ConvertCRData_xres_reg;
	logic [31:0] SiS_Generic_ConvertCRData_yres_reg;
	logic [63:0] SiS_Generic_ConvertCRData_var0_reg;
	logic [0:0] SiS_Generic_ConvertCRData_writeres_reg;
	logic [63:0] SiS_Generic_ConvertCRData_avmm_0_rw_address_reg;
	logic [7:0] SiS_Generic_ConvertCRData_avmm_0_rw_byteenable_reg;
	logic [0:0] SiS_Generic_ConvertCRData_avmm_0_rw_read_reg;
	logic [63:0] SiS_Generic_ConvertCRData_avmm_0_rw_readdata_reg;
	logic [0:0] SiS_Generic_ConvertCRData_avmm_0_rw_write_reg;
	logic [63:0] SiS_Generic_ConvertCRData_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		SiS_Generic_ConvertCRData_start_reg <= SiS_Generic_ConvertCRData_start;
		SiS_Generic_ConvertCRData_busy <= SiS_Generic_ConvertCRData_busy_reg;
		SiS_Generic_ConvertCRData_done <= SiS_Generic_ConvertCRData_done_reg;
		SiS_Generic_ConvertCRData_stall_reg <= SiS_Generic_ConvertCRData_stall;
		SiS_Generic_ConvertCRData_SiS_Pr_reg <= SiS_Generic_ConvertCRData_SiS_Pr;
		SiS_Generic_ConvertCRData_crdata_reg <= SiS_Generic_ConvertCRData_crdata;
		SiS_Generic_ConvertCRData_xres_reg <= SiS_Generic_ConvertCRData_xres;
		SiS_Generic_ConvertCRData_yres_reg <= SiS_Generic_ConvertCRData_yres;
		SiS_Generic_ConvertCRData_var0_reg <= SiS_Generic_ConvertCRData_var0;
		SiS_Generic_ConvertCRData_writeres_reg <= SiS_Generic_ConvertCRData_writeres;
		SiS_Generic_ConvertCRData_avmm_0_rw_address <= SiS_Generic_ConvertCRData_avmm_0_rw_address_reg;
		SiS_Generic_ConvertCRData_avmm_0_rw_byteenable <= SiS_Generic_ConvertCRData_avmm_0_rw_byteenable_reg;
		SiS_Generic_ConvertCRData_avmm_0_rw_read <= SiS_Generic_ConvertCRData_avmm_0_rw_read_reg;
		SiS_Generic_ConvertCRData_avmm_0_rw_readdata_reg <= SiS_Generic_ConvertCRData_avmm_0_rw_readdata;
		SiS_Generic_ConvertCRData_avmm_0_rw_write <= SiS_Generic_ConvertCRData_avmm_0_rw_write_reg;
		SiS_Generic_ConvertCRData_avmm_0_rw_writedata <= SiS_Generic_ConvertCRData_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	SiS_Generic_ConvertCRData SiS_Generic_ConvertCRData_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(SiS_Generic_ConvertCRData_start_reg)
		, .busy(SiS_Generic_ConvertCRData_busy_reg)
		, .done(SiS_Generic_ConvertCRData_done_reg)
		, .stall(SiS_Generic_ConvertCRData_stall_reg)
		, .SiS_Pr(SiS_Generic_ConvertCRData_SiS_Pr_reg)
		, .crdata(SiS_Generic_ConvertCRData_crdata_reg)
		, .xres(SiS_Generic_ConvertCRData_xres_reg)
		, .yres(SiS_Generic_ConvertCRData_yres_reg)
		, .var0(SiS_Generic_ConvertCRData_var0_reg)
		, .writeres(SiS_Generic_ConvertCRData_writeres_reg)
		, .avmm_0_rw_address(SiS_Generic_ConvertCRData_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(SiS_Generic_ConvertCRData_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(SiS_Generic_ConvertCRData_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(SiS_Generic_ConvertCRData_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(SiS_Generic_ConvertCRData_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(SiS_Generic_ConvertCRData_avmm_0_rw_writedata_reg)
	);



endmodule
