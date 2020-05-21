#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.openpilotselfdrivecontrolsliblateral_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
