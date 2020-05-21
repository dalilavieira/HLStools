#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversvideofbdevsisinit.c_SiS_Generic_ConvertCRData_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
