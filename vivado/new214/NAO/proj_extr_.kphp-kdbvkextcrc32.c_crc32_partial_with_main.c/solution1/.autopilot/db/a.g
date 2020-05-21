#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.kphp-kdbvkextcrc32.c_crc32_partial_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
