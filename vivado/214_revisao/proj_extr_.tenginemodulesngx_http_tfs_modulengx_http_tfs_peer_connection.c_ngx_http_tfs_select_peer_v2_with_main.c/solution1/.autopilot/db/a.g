#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.tenginemodulesngx_http_tfs_modulengx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
