// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      qspline
`define AUTOTB_DUT_INST AESL_inst_qspline
`define AUTOTB_TOP      apatb_qspline_top
`define AUTOTB_LAT_RESULT_FILE "qspline.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "qspline.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_qspline_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_a AESL_automem_a
`define AESL_MEM_INST_a mem_inst_a
`define AESL_MEM_b AESL_automem_b
`define AESL_MEM_INST_b mem_inst_b
`define AESL_MEM_c AESL_automem_c
`define AESL_MEM_INST_c mem_inst_c
`define AESL_MEM_d AESL_automem_d
`define AESL_MEM_INST_d mem_inst_d
`define AESL_MEM_e AESL_automem_e
`define AESL_MEM_INST_e mem_inst_e
`define AESL_MEM_f AESL_automem_f
`define AESL_MEM_INST_f mem_inst_f
`define AESL_MEM_g AESL_automem_g
`define AESL_MEM_INST_g mem_inst_g
`define AESL_MEM_out_r AESL_automem_out_r
`define AESL_MEM_INST_out_r mem_inst_out_r
`define AUTOTB_TVIN_a  "../tv/cdatafile/c.qspline.autotvin_a.dat"
`define AUTOTB_TVIN_b  "../tv/cdatafile/c.qspline.autotvin_b.dat"
`define AUTOTB_TVIN_c  "../tv/cdatafile/c.qspline.autotvin_c.dat"
`define AUTOTB_TVIN_e  "../tv/cdatafile/c.qspline.autotvin_e.dat"
`define AUTOTB_TVIN_f  "../tv/cdatafile/c.qspline.autotvin_f.dat"
`define AUTOTB_TVIN_g  "../tv/cdatafile/c.qspline.autotvin_g.dat"
`define AUTOTB_TVIN_out_r  "../tv/cdatafile/c.qspline.autotvin_out_r.dat"
`define AUTOTB_TVIN_a_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvin_a.dat"
`define AUTOTB_TVIN_b_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvin_b.dat"
`define AUTOTB_TVIN_c_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvin_c.dat"
`define AUTOTB_TVIN_e_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvin_e.dat"
`define AUTOTB_TVIN_f_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvin_f.dat"
`define AUTOTB_TVIN_g_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvin_g.dat"
`define AUTOTB_TVIN_out_r_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvin_out_r.dat"
`define AUTOTB_TVOUT_out_r  "../tv/cdatafile/c.qspline.autotvout_out_r.dat"
`define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.qspline.autotvout_ap_return.dat"
`define AUTOTB_TVOUT_out_r_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvout_out_r.dat"
`define AUTOTB_TVOUT_ap_return_out_wrapc  "../tv/rtldatafile/rtl.qspline.autotvout_ap_return.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 30202;
parameter LENGTH_a = 100;
parameter LENGTH_b = 100;
parameter LENGTH_c = 100;
parameter LENGTH_e = 100;
parameter LENGTH_f = 100;
parameter LENGTH_g = 100;
parameter LENGTH_out_r = 100;
parameter LENGTH_ap_return = 1;

task read_token;
    input integer fp;
    output reg [135 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [6 : 0] a_address0;
wire  a_ce0;
wire [15 : 0] a_q0;
wire [6 : 0] b_address0;
wire  b_ce0;
wire [15 : 0] b_q0;
wire [6 : 0] c_address0;
wire  c_ce0;
wire [15 : 0] c_q0;
wire [6 : 0] d_address0;
wire  d_ce0;
wire  d_we0;
wire [15 : 0] d_d0;
wire [15 : 0] d_q0;
wire [6 : 0] d_address1;
wire  d_ce1;
wire  d_we1;
wire [15 : 0] d_d1;
wire [15 : 0] d_q1;
wire [6 : 0] e_address0;
wire  e_ce0;
wire [15 : 0] e_q0;
wire [6 : 0] f_address0;
wire  f_ce0;
wire [15 : 0] f_q0;
wire [6 : 0] g_address0;
wire  g_ce0;
wire [15 : 0] g_q0;
wire [6 : 0] out_r_address0;
wire  out_r_ce0;
wire  out_r_we0;
wire [31 : 0] out_r_d0;
wire [31 : 0] out_r_q0;
wire [31 : 0] ap_return;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .a_address0(a_address0),
    .a_ce0(a_ce0),
    .a_q0(a_q0),
    .b_address0(b_address0),
    .b_ce0(b_ce0),
    .b_q0(b_q0),
    .c_address0(c_address0),
    .c_ce0(c_ce0),
    .c_q0(c_q0),
    .d_address0(d_address0),
    .d_ce0(d_ce0),
    .d_we0(d_we0),
    .d_d0(d_d0),
    .d_q0(d_q0),
    .d_address1(d_address1),
    .d_ce1(d_ce1),
    .d_we1(d_we1),
    .d_d1(d_d1),
    .d_q1(d_q1),
    .e_address0(e_address0),
    .e_ce0(e_ce0),
    .e_q0(e_q0),
    .f_address0(f_address0),
    .f_ce0(f_ce0),
    .f_q0(f_q0),
    .g_address0(g_address0),
    .g_ce0(g_ce0),
    .g_q0(g_q0),
    .out_r_address0(out_r_address0),
    .out_r_ce0(out_r_ce0),
    .out_r_we0(out_r_we0),
    .out_r_d0(out_r_d0),
    .out_r_q0(out_r_q0),
    .ap_return(ap_return));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------arraya Instantiation--------------

// The input and output of arraya
wire    arraya_ce0, arraya_ce1;
wire    arraya_we0, arraya_we1;
wire    [6 : 0]    arraya_address0, arraya_address1;
wire    [15 : 0]    arraya_din0, arraya_din1;
wire    [15 : 0]    arraya_dout0, arraya_dout1;
wire    arraya_ready;
wire    arraya_done;

`AESL_MEM_a `AESL_MEM_INST_a(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraya_ce0),
    .we0        (arraya_we0),
    .address0   (arraya_address0),
    .din0       (arraya_din0),
    .dout0      (arraya_dout0),
    .ce1        (arraya_ce1),
    .we1        (arraya_we1),
    .address1   (arraya_address1),
    .din1       (arraya_din1),
    .dout1      (arraya_dout1),
    .ready      (arraya_ready),
    .done    (arraya_done)
);

// Assignment between dut and arraya
assign arraya_address0 = a_address0;
assign arraya_ce0 = a_ce0;
assign a_q0 = arraya_dout0;
assign arraya_we0 = 0;
assign arraya_din0 = 0;
assign arraya_we1 = 0;
assign arraya_din1 = 0;
assign arraya_ready=    ready;
assign arraya_done = 0;


//------------------------arrayb Instantiation--------------

// The input and output of arrayb
wire    arrayb_ce0, arrayb_ce1;
wire    arrayb_we0, arrayb_we1;
wire    [6 : 0]    arrayb_address0, arrayb_address1;
wire    [15 : 0]    arrayb_din0, arrayb_din1;
wire    [15 : 0]    arrayb_dout0, arrayb_dout1;
wire    arrayb_ready;
wire    arrayb_done;

`AESL_MEM_b `AESL_MEM_INST_b(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayb_ce0),
    .we0        (arrayb_we0),
    .address0   (arrayb_address0),
    .din0       (arrayb_din0),
    .dout0      (arrayb_dout0),
    .ce1        (arrayb_ce1),
    .we1        (arrayb_we1),
    .address1   (arrayb_address1),
    .din1       (arrayb_din1),
    .dout1      (arrayb_dout1),
    .ready      (arrayb_ready),
    .done    (arrayb_done)
);

// Assignment between dut and arrayb
assign arrayb_address0 = b_address0;
assign arrayb_ce0 = b_ce0;
assign b_q0 = arrayb_dout0;
assign arrayb_we0 = 0;
assign arrayb_din0 = 0;
assign arrayb_we1 = 0;
assign arrayb_din1 = 0;
assign arrayb_ready=    ready;
assign arrayb_done = 0;


//------------------------arrayc Instantiation--------------

// The input and output of arrayc
wire    arrayc_ce0, arrayc_ce1;
wire    arrayc_we0, arrayc_we1;
wire    [6 : 0]    arrayc_address0, arrayc_address1;
wire    [15 : 0]    arrayc_din0, arrayc_din1;
wire    [15 : 0]    arrayc_dout0, arrayc_dout1;
wire    arrayc_ready;
wire    arrayc_done;

`AESL_MEM_c `AESL_MEM_INST_c(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayc_ce0),
    .we0        (arrayc_we0),
    .address0   (arrayc_address0),
    .din0       (arrayc_din0),
    .dout0      (arrayc_dout0),
    .ce1        (arrayc_ce1),
    .we1        (arrayc_we1),
    .address1   (arrayc_address1),
    .din1       (arrayc_din1),
    .dout1      (arrayc_dout1),
    .ready      (arrayc_ready),
    .done    (arrayc_done)
);

// Assignment between dut and arrayc
assign arrayc_address0 = c_address0;
assign arrayc_ce0 = c_ce0;
assign c_q0 = arrayc_dout0;
assign arrayc_we0 = 0;
assign arrayc_din0 = 0;
assign arrayc_we1 = 0;
assign arrayc_din1 = 0;
assign arrayc_ready=    ready;
assign arrayc_done = 0;


//------------------------arrayd Instantiation--------------

// The input and output of arrayd
wire    arrayd_ce0, arrayd_ce1;
wire    arrayd_we0, arrayd_we1;
wire    [6 : 0]    arrayd_address0, arrayd_address1;
wire    [15 : 0]    arrayd_din0, arrayd_din1;
wire    [15 : 0]    arrayd_dout0, arrayd_dout1;
wire    arrayd_ready;
wire    arrayd_done;

// Assignment between dut and arrayd
assign arrayd_done = 0;


//------------------------arraye Instantiation--------------

// The input and output of arraye
wire    arraye_ce0, arraye_ce1;
wire    arraye_we0, arraye_we1;
wire    [6 : 0]    arraye_address0, arraye_address1;
wire    [15 : 0]    arraye_din0, arraye_din1;
wire    [15 : 0]    arraye_dout0, arraye_dout1;
wire    arraye_ready;
wire    arraye_done;

`AESL_MEM_e `AESL_MEM_INST_e(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraye_ce0),
    .we0        (arraye_we0),
    .address0   (arraye_address0),
    .din0       (arraye_din0),
    .dout0      (arraye_dout0),
    .ce1        (arraye_ce1),
    .we1        (arraye_we1),
    .address1   (arraye_address1),
    .din1       (arraye_din1),
    .dout1      (arraye_dout1),
    .ready      (arraye_ready),
    .done    (arraye_done)
);

// Assignment between dut and arraye
assign arraye_address0 = e_address0;
assign arraye_ce0 = e_ce0;
assign e_q0 = arraye_dout0;
assign arraye_we0 = 0;
assign arraye_din0 = 0;
assign arraye_we1 = 0;
assign arraye_din1 = 0;
assign arraye_ready=    ready;
assign arraye_done = 0;


//------------------------arrayf Instantiation--------------

// The input and output of arrayf
wire    arrayf_ce0, arrayf_ce1;
wire    arrayf_we0, arrayf_we1;
wire    [6 : 0]    arrayf_address0, arrayf_address1;
wire    [15 : 0]    arrayf_din0, arrayf_din1;
wire    [15 : 0]    arrayf_dout0, arrayf_dout1;
wire    arrayf_ready;
wire    arrayf_done;

`AESL_MEM_f `AESL_MEM_INST_f(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayf_ce0),
    .we0        (arrayf_we0),
    .address0   (arrayf_address0),
    .din0       (arrayf_din0),
    .dout0      (arrayf_dout0),
    .ce1        (arrayf_ce1),
    .we1        (arrayf_we1),
    .address1   (arrayf_address1),
    .din1       (arrayf_din1),
    .dout1      (arrayf_dout1),
    .ready      (arrayf_ready),
    .done    (arrayf_done)
);

// Assignment between dut and arrayf
assign arrayf_address0 = f_address0;
assign arrayf_ce0 = f_ce0;
assign f_q0 = arrayf_dout0;
assign arrayf_we0 = 0;
assign arrayf_din0 = 0;
assign arrayf_we1 = 0;
assign arrayf_din1 = 0;
assign arrayf_ready=    ready;
assign arrayf_done = 0;


//------------------------arrayg Instantiation--------------

// The input and output of arrayg
wire    arrayg_ce0, arrayg_ce1;
wire    arrayg_we0, arrayg_we1;
wire    [6 : 0]    arrayg_address0, arrayg_address1;
wire    [15 : 0]    arrayg_din0, arrayg_din1;
wire    [15 : 0]    arrayg_dout0, arrayg_dout1;
wire    arrayg_ready;
wire    arrayg_done;

`AESL_MEM_g `AESL_MEM_INST_g(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayg_ce0),
    .we0        (arrayg_we0),
    .address0   (arrayg_address0),
    .din0       (arrayg_din0),
    .dout0      (arrayg_dout0),
    .ce1        (arrayg_ce1),
    .we1        (arrayg_we1),
    .address1   (arrayg_address1),
    .din1       (arrayg_din1),
    .dout1      (arrayg_dout1),
    .ready      (arrayg_ready),
    .done    (arrayg_done)
);

// Assignment between dut and arrayg
assign arrayg_address0 = g_address0;
assign arrayg_ce0 = g_ce0;
assign g_q0 = arrayg_dout0;
assign arrayg_we0 = 0;
assign arrayg_din0 = 0;
assign arrayg_we1 = 0;
assign arrayg_din1 = 0;
assign arrayg_ready=    ready;
assign arrayg_done = 0;


//------------------------arrayout_r Instantiation--------------

// The input and output of arrayout_r
wire    arrayout_r_ce0, arrayout_r_ce1;
wire    arrayout_r_we0, arrayout_r_we1;
wire    [6 : 0]    arrayout_r_address0, arrayout_r_address1;
wire    [31 : 0]    arrayout_r_din0, arrayout_r_din1;
wire    [31 : 0]    arrayout_r_dout0, arrayout_r_dout1;
wire    arrayout_r_ready;
wire    arrayout_r_done;

`AESL_MEM_out_r `AESL_MEM_INST_out_r(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayout_r_ce0),
    .we0        (arrayout_r_we0),
    .address0   (arrayout_r_address0),
    .din0       (arrayout_r_din0),
    .dout0      (arrayout_r_dout0),
    .ce1        (arrayout_r_ce1),
    .we1        (arrayout_r_we1),
    .address1   (arrayout_r_address1),
    .din1       (arrayout_r_din1),
    .dout1      (arrayout_r_dout1),
    .ready      (arrayout_r_ready),
    .done    (arrayout_r_done)
);

// Assignment between dut and arrayout_r
assign arrayout_r_address0 = out_r_address0;
assign arrayout_r_ce0 = out_r_ce0;
assign out_r_q0 = arrayout_r_dout0;
assign arrayout_r_we0 = out_r_we0;
assign arrayout_r_din0 = out_r_d0;
assign arrayout_r_we1 = 0;
assign arrayout_r_din1 = 0;
assign arrayout_r_ready= ready;
assign arrayout_r_done = interface_done;


initial begin : write_file_process_ap_return
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer ap_return_count;
    reg [135:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_ap_return_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ap_return_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
          $fdisplay(fp,"0x%x", ap_return);
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_a;
reg [31:0] size_a;
reg [31:0] size_a_backup;
reg end_b;
reg [31:0] size_b;
reg [31:0] size_b_backup;
reg end_c;
reg [31:0] size_c;
reg [31:0] size_c_backup;
reg end_e;
reg [31:0] size_e;
reg [31:0] size_e_backup;
reg end_f;
reg [31:0] size_f;
reg [31:0] size_f_backup;
reg end_g;
reg [31:0] size_g;
reg [31:0] size_g_backup;
reg end_out_r;
reg [31:0] size_out_r;
reg [31:0] size_out_r_backup;
reg end_ap_return;
reg [31:0] size_ap_return;
reg [31:0] size_ap_return_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_out_r;

initial begin : dump_tvout_runtime_sign_out_r
    integer fp;
    dump_tvout_finish_out_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_r_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_r_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_r = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
