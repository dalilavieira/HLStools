#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversvideofbdevcyber2000fb.c_cyber2000fb_decode_crtc_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
