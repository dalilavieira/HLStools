#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.openpilotselfdrivecontrolsliblongitudinal_mpclib_mpc_exportacado_solver.c_acado_setObjQN1QN2_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
