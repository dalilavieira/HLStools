#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/canesche/HLStools/example/Vivado/example4/project/solution/.autopilot/db/a.g.bc ${1+"$@"}
