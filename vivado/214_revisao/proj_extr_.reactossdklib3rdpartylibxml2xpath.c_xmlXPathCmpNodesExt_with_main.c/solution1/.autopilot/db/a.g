#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.reactossdklib3rdpartylibxml2xpath.c_xmlXPathCmpNodesExt_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
