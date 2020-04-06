#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/teste_3_plataformas/prod_matrix/sol/.autopilot/db/a.g.bc ${1+"$@"}
