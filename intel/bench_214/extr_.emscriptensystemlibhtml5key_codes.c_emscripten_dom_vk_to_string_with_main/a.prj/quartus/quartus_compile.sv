module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] emscripten_dom_vk_to_string_start
	, output logic [0:0] emscripten_dom_vk_to_string_busy
	, output logic [0:0] emscripten_dom_vk_to_string_done
	, input logic [0:0] emscripten_dom_vk_to_string_stall
	, output logic [63:0] emscripten_dom_vk_to_string_returndata
	, input logic [31:0] emscripten_dom_vk_to_string_dom_vk_code
	);

	logic [0:0] emscripten_dom_vk_to_string_start_reg;
	logic [0:0] emscripten_dom_vk_to_string_busy_reg;
	logic [0:0] emscripten_dom_vk_to_string_done_reg;
	logic [0:0] emscripten_dom_vk_to_string_stall_reg;
	logic [63:0] emscripten_dom_vk_to_string_returndata_reg;
	logic [31:0] emscripten_dom_vk_to_string_dom_vk_code_reg;


	always @(posedge clock) begin
		emscripten_dom_vk_to_string_start_reg <= emscripten_dom_vk_to_string_start;
		emscripten_dom_vk_to_string_busy <= emscripten_dom_vk_to_string_busy_reg;
		emscripten_dom_vk_to_string_done <= emscripten_dom_vk_to_string_done_reg;
		emscripten_dom_vk_to_string_stall_reg <= emscripten_dom_vk_to_string_stall;
		emscripten_dom_vk_to_string_returndata <= emscripten_dom_vk_to_string_returndata_reg;
		emscripten_dom_vk_to_string_dom_vk_code_reg <= emscripten_dom_vk_to_string_dom_vk_code;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	emscripten_dom_vk_to_string emscripten_dom_vk_to_string_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(emscripten_dom_vk_to_string_start_reg)
		, .busy(emscripten_dom_vk_to_string_busy_reg)
		, .done(emscripten_dom_vk_to_string_done_reg)
		, .stall(emscripten_dom_vk_to_string_stall_reg)
		, .returndata(emscripten_dom_vk_to_string_returndata_reg)
		, .dom_vk_code(emscripten_dom_vk_to_string_dom_vk_code_reg)
	);



endmodule
