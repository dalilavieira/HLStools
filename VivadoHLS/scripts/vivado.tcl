open_project <project_name>
open_solution <solution_name>
add_files <c_file_name>
add_files -tb <testbench_file_name>
set_top <name_of_top_function>

#For Xilinx Kintex-7 Family
set_part {xc7k160t-fbg484-1}

create_clock -period 5 -name default
create_clock -period 10ns -name default

#Simulate the RTL using C test bench
cosim_design
#Simulate C
csim_design
#Synthesize the design
csynth_design
