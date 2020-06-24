
/opt/xilinx/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_draw_box_top glbl -prj draw_box.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/opt/xilinx/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s draw_box 
/opt/xilinx/Vivado/2019.1/bin/xsim --noieeewarnings draw_box -tclbatch draw_box.tcl

