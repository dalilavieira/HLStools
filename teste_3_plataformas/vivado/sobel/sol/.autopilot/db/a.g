#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/teste_3_plataformas/sobel/sol/.autopilot/db/a.g.bc ${1+"$@"}
