#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.radare2librmagicascmagic.c_encode_utf8_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
