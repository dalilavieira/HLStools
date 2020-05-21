#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.reactosdllopenglmesadlist.c_gl_init_lists_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
