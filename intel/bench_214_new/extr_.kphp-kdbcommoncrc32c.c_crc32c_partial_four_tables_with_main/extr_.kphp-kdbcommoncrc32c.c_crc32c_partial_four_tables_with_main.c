#include "HLS/hls.h"
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned int* crc32c_table ; 
 unsigned int* crc32c_table0 ; 
 unsigned int* crc32c_table1 ; 
 unsigned int* crc32c_table2 ; 

__attribute__((used)) static unsigned crc32c_partial_four_tables (const void *data, int len, unsigned crc) {
  const int *p = (const int *) data;
  int x;
#define DO_ONE(v) crc ^= v; crc = crc32c_table0[crc & 0xff] ^ crc32c_table1[(crc & 0xff00) >> 8] ^ crc32c_table2[(crc & 0xff0000) >> 16] ^ crc32c_table[crc >> 24];
#define DO_FOUR(p) DO_ONE((p)[0]); DO_ONE((p)[1]); DO_ONE((p)[2]); DO_ONE((p)[3]);

  for (x = (len >> 5); x > 0; x--) {
    DO_FOUR (p);
    DO_FOUR (p + 4);
    p += 8;
  }
  if (len & 16) {
    DO_FOUR (p);
    p += 4;
  }
  if (len & 8) {
    DO_ONE (p[0]);
    DO_ONE (p[1]);
    p += 2;
  }
  if (len & 4) {
    DO_ONE (*p++);
  }
#undef DO_ONE
#undef DO_FOUR
  const char *q = (const char *) p;
  if (len & 2) {
    crc = crc32c_table[(crc ^ q[0]) & 0xff] ^ (crc >> 8);
    crc = crc32c_table[(crc ^ q[1]) & 0xff] ^ (crc >> 8);
    q += 2;
  }
  if (len & 1) {
    crc = crc32c_table[(crc ^ *q++) & 0xff] ^ (crc >> 8);
  }
  return crc;
}

/* Main routine for crc32c_partial_four_tables */
component int main() {
  const void * data;
  int len;
  unsigned int crc;
  crc32c_partial_four_tables(data, len, crc);
  return 0;
}