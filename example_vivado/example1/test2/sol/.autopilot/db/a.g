#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/example_vivado/example1/test2/sol/.autopilot/db/a.g.bc ${1+"$@"}
