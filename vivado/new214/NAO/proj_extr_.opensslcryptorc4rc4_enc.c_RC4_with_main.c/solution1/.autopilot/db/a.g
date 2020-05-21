#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.opensslcryptorc4rc4_enc.c_RC4_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
