#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecxface.c_ff_xface_generate_face_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
