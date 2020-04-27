# main_top
# 	main
# 		sobelfilter_inst_0
# 			itConv -> itConv (line 80 of sobelfilter.c)
# 			itConv -> itConv (line 81 of sobelfilter.c)
add wave -hex -group "top" -group "ports"  {*}[lsort [find nets -ports [lindex [find instances -bydu top] 0]/*]]
add wave -hex -group "top" -group "main" -group "ports"  {*}[lsort [find nets -ports [lindex [find instances -r /main_inst] 0]/*]]
add wave -hex -group "main_top" -group "main" -group "sobelfilter_inst_0" -group "itConv" -group "ports" {*}[lsort [find nets -ports [lindex [find instances -r /itConv_inst] 0]/*]]
add wave -hex -group "main_top" -group "main" -group "sobelfilter_inst_0" -group "itConv" -group "ports" {*}[lsort [find nets -ports [lindex [find instances -r /itConv_inst] 0]/*]]
