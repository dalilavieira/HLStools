open_project -reset project
add_files example5.c
set_top foo
open_solution -reset "solution"
set_part {xc7k160t-fbg484-1}
csynth_design
export_design -format ip_catalog
exit
