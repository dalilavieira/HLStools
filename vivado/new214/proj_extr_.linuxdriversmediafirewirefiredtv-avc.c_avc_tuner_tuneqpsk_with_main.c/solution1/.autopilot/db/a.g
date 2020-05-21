#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversmediafirewirefiredtv-avc.c_avc_tuner_tuneqpsk_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
