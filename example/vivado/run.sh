# Configurate enviroment
source /opt/xilinx/Vivado/2019.1/settings64.sh

# Execute interface Vivado
#/opt/xilinx/Vivado/2019.1/bin/vivado &

BENCH=(
	#example1 example2 example3 example4 example5
	example6
)

for ((i=0; i < ${#BENCH[@]}; i++)) do
	mkdir ${BENCH[i]}/project
	mkdir ${BENCH[i]}/project/solution

	echo "Creating script TCL for fir"
	echo "open_project -reset project" > ${BENCH[i]}/run_hls.tcl
	echo "add_files "${BENCH[i]}".c" >> ${BENCH[i]}/run_hls.tcl
	echo "set_top foo" >> ${BENCH[i]}/run_hls.tcl
	
	#echo "add_files -tb result.golden.dat -cflags '-Wno-unknown-pragmas' -csimflags '-Wno-unknown-pragmas'" >> $DIR_PROJECT/script.tcl
	#echo "add_files -tb fir.inc -cflags '-Wno-unknown-pragmas' -csimflags '-Wno-unknown-pragmas'" >> $DIR_PROJECT/script.tcl
	#echo "add_files -tb fir_test.cpp -cflags '-Wno-unknown-pragmas' -csimflags '-Wno-unknown-pragmas'" >> $DIR_PROJECT/script.tcl
	
	echo "open_solution -reset \"solution\"" >> ${BENCH[i]}/run_hls.tcl
	echo "set_part {xc7k160t-fbg484-1}" >> ${BENCH[i]}/run_hls.tcl
	#echo "create_clock -period 5 -name default" >> ${BENCH[i]}/run_hls.tcl
	echo "csynth_design" >> ${BENCH[i]}/run_hls.tcl
	#echo "csim_design" >> $DIR_PROJECT/script.tcl
	#echo "cosim_design" >> $DIR_PROJECT/script.tcl
	echo "export_design -format ip_catalog" >> ${BENCH[i]}/run_hls.tcl
	echo "exit" >> ${BENCH[i]}/run_hls.tcl
	# Execute vivado_hls using script tcl
	echo "Executing project on Vivado"
	
	cd ${BENCH[i]}
	/opt/xilinx/Vivado/2019.1/bin/vivado_hls -f run_hls.tcl
	
	cd ..
	echo "done"
done
