# This script has the logic to create a summary report
source /opt/altera_pro/19.4/hls/share/lib/tcl/quartus_compile_report.tcl
source /opt/altera_pro/19.4/hls/share/lib/tcl/quartus_html_report.tcl
# These are generated by i++ based on the components
set show_clk2x   0
set components   [list main]
# This is where we'll generate the report
set report_name  "../reports/lib/json/quartus.json"
# These get sent to the script by Quartus
set project_name [lindex $quartus(args) 1]
set project_rev  [lindex $quartus(args) 2]
# This call creates the report
generate_hls_report $project_name $project_rev $report_name $show_clk2x $components
update_html_report_data
