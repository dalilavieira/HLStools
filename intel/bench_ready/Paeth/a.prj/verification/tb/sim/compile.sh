#!/bin/sh

# Identify the directory to run from
rundir=$PWD
scripthome=$(dirname $0)
cd ${scripthome}
# Compile and elaborate the testbench
vsim -batch -do "msim_compile.tcl"
retval=$?
cd ${rundir}
exit ${retval}
