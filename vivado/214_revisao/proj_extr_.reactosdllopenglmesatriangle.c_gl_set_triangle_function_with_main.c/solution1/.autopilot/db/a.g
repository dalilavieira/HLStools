#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.reactosdllopenglmesatriangle.c_gl_set_triangle_function_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
