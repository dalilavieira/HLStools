#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversvideofbdevimsttfb.c_imsttfb_check_var_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}