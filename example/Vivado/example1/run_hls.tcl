open_project -reset project
add_files example1.c
set_top main
open_solution -reset "solution"
set_part {xc7k160t-fbg484-1}
csynth_design
export_design -format ip_catalog
exit
