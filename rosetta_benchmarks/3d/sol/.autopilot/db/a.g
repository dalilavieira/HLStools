#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/rosetta_benchmarks/3d/sol/.autopilot/db/a.g.bc ${1+"$@"}
