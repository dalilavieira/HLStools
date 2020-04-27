onerror {abort all; exit -code 1;}
set VSIM_VERSION_STR "Model Technology ModelSim ALTERA vsim 10.5b Simulator 2016.10 Oct  5 2016"
set QSYS_SIMDIR .
source mentor/msim_setup.tcl
set USER_DEFINED_VERILOG_COMPILE_OPTIONS "+incdir+."
dev_com
com
if {$tcl_platform(platform) == "windows"} {
  set fname_svlib "/opt/altera_pro/19.4/hls/windows64/bin/hls_cosim_msim32"
  set fname_svlib [string map { "\\" "/"} $fname_svlib]
} else {
  set fname_svlib "/opt/altera_pro/19.4/hls/host/linux64/lib/libhls_cosim_msim32"
}
set USER_DEFINED_ELAB_OPTIONS "-dpioutoftheblue 1 -sv_lib $fname_svlib"
elab
exit -code 0
