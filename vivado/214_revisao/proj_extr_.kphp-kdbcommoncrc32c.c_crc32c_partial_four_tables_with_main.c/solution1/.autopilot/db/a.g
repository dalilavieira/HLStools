#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.kphp-kdbcommoncrc32c.c_crc32c_partial_four_tables_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
