#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.FFmpeglibavcodecxface.c_ff_xface_generate_face_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}