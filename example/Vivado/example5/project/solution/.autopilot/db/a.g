#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/canesche/git/HLStools/example/Vivado/example5/project/solution/.autopilot/db/a.g.bc ${1+"$@"}
