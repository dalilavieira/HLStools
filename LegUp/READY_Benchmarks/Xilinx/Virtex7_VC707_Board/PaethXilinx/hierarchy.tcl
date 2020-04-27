# main_top
# 	main
# 		paeth_inst_0
# 			abs -> abs (line 27 of paeth.c)
# 			abs -> abs (line 27 of paeth.c)
# 			abs -> abs (line 28 of paeth.c)
# 			abs -> abs (line 28 of paeth.c)
# 			abs -> abs (line 29 of paeth.c)
# 			abs -> abs (line 29 of paeth.c)
add wave -hex -group "top" -group "ports"  {*}[lsort [find nets -ports [lindex [find instances -bydu top] 0]/*]]
add wave -hex -group "top" -group "main" -group "ports"  {*}[lsort [find nets -ports [lindex [find instances -r /main_inst] 0]/*]]
add wave -hex -group "main_top" -group "main" -group "paeth_inst_0" -group "abs" -group "ports" {*}[lsort [find nets -ports [lindex [find instances -r /abs_inst] 0]/*]]
add wave -hex -group "main_top" -group "main" -group "paeth_inst_0" -group "abs" -group "ports" {*}[lsort [find nets -ports [lindex [find instances -r /abs_inst] 0]/*]]
add wave -hex -group "main_top" -group "main" -group "paeth_inst_0" -group "abs" -group "ports" {*}[lsort [find nets -ports [lindex [find instances -r /abs_inst] 0]/*]]
add wave -hex -group "main_top" -group "main" -group "paeth_inst_0" -group "abs" -group "ports" {*}[lsort [find nets -ports [lindex [find instances -r /abs_inst] 0]/*]]
add wave -hex -group "main_top" -group "main" -group "paeth_inst_0" -group "abs" -group "ports" {*}[lsort [find nets -ports [lindex [find instances -r /abs_inst] 0]/*]]
add wave -hex -group "main_top" -group "main" -group "paeth_inst_0" -group "abs" -group "ports" {*}[lsort [find nets -ports [lindex [find instances -r /abs_inst] 0]/*]]
