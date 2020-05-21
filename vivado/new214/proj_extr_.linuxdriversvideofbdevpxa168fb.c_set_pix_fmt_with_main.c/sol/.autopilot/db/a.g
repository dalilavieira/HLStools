#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversvideofbdevpxa168fb.c_set_pix_fmt_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
