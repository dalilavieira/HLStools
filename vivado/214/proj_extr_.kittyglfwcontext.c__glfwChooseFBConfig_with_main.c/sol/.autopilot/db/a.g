#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214/proj_extr_.kittyglfwcontext.c__glfwChooseFBConfig_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
