#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversinputmiscad714x.c_touchpad_check_endpoint_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
