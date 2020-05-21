#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.php-srcextstandardcrypt_freesec.c_des_setkey_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
