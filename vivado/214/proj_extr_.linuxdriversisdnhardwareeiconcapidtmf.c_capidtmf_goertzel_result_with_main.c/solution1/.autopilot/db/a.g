#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversisdnhardwareeiconcapidtmf.c_capidtmf_goertzel_result_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
