#include "HLS/hls.h"
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ WORD ;

/* Variables and functions */
 scalar_t__ const B = 0 ; 
 scalar_t__ const BN = 0; 
 scalar_t__ const FSI = 0; 
 scalar_t__ const LRE = 0; 
 scalar_t__ const LRI = 0; 
 scalar_t__ const LRO = 0; 
 scalar_t__ const PDF = 0; 
 scalar_t__ const PDI = 0; 
 scalar_t__ const RLE = 0; 
 scalar_t__ const RLI = 0; 
 scalar_t__ const RLO = 0; 
 scalar_t__ const S = 0; 
 scalar_t__ const WS = 0; 

__attribute__((used)) static void resolveResolved(unsigned baselevel, const WORD * pcls, WORD *plevel, int sos, int eos)
{
    int i;

    /* L1 */
    for (i = sos; i <= eos; i++)
    {
        if (pcls[i] == B || pcls[i] == S)
        {
            int j = i -1;
            while (i > sos  && j >= sos &&
                   (pcls[j] == WS || pcls[j] == FSI || pcls[j] == LRI || pcls[j] == RLI ||
                    pcls[j] == PDI || pcls[j] == LRE || pcls[j] == RLE || pcls[j] == LRO ||
                    pcls[j] == RLO || pcls[j] == PDF || pcls[j] == BN))
                plevel[j--] = baselevel;
            plevel[i] = baselevel;
        }
        else if (pcls[i] == LRE || pcls[i] == RLE || pcls[i] == LRO || pcls[i] == RLO ||
                 pcls[i] == PDF || pcls[i] == BN)
        {
            plevel[i] = i ? plevel[i - 1] : baselevel;
        }
        if (i == eos &&
            (pcls[i] == WS || pcls[i] == FSI || pcls[i] == LRI || pcls[i] == RLI ||
             pcls[i] == PDI || pcls[i] == LRE || pcls[i] == RLE || pcls[i] == LRO ||
             pcls[i] == RLO || pcls[i] == PDF || pcls[i] == BN ))
        {
            int j = i;
            while (j >= sos && (pcls[j] == WS || pcls[j] == FSI || pcls[j] == LRI || pcls[j] == RLI ||
                                pcls[j] == PDI || pcls[j] == LRE || pcls[j] == RLE || pcls[j] == LRO ||
                                pcls[j] == RLO || pcls[j] == PDF || pcls[j] == BN))
                plevel[j--] = baselevel;
        }
    }
}

/* Main routine for resolveResolved */
component int main() {
  unsigned int baselevel;
  const WORD * pcls;
  WORD * plevel;
  int sos;
  int eos;
  resolveResolved(baselevel, pcls, plevel, sos, eos);
  return 0;
}
