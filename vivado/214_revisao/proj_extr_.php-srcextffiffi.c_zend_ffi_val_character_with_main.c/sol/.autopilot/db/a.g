#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.php-srcextffiffi.c_zend_ffi_val_character_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
