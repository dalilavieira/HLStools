#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_benchmakrs/proj_extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_setObjQ1Q2_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
