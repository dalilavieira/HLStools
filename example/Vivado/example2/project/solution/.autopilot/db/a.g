#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/canesche/HLStools/example/Vivado/example2/project/solution/.autopilot/db/a.g.bc ${1+"$@"}
