#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.emscriptensystemliblibcmuslsrccryptcrypt_des.c___do_des_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
