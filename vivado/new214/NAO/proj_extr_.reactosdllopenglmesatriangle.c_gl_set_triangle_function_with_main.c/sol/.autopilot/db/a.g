#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.reactosdllopenglmesatriangle.c_gl_set_triangle_function_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
