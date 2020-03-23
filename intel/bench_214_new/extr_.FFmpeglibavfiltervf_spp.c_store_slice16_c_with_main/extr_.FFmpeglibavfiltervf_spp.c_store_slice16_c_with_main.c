#include "HLS/hls.h"
typedef unsigned long size_t;  // Customize by platform.
typedef int scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int int16_t ;

/* Variables and functions */

__attribute__((used)) static void store_slice16_c(uint16_t *dst, const int16_t *src,
                            int dst_linesize, int src_linesize,
                            int width, int height, int log2_scale,
                            const uint8_t dither[8][8], int depth)
{
    int y, x;
    unsigned int mask = -1<<depth;

#define STORE16(pos) do {                                                   \
    temp = ((src[x + y*src_linesize + pos] << log2_scale) + (d[pos]>>1)) >> 5;   \
    if (temp & mask )                                                       \
        temp = ~(temp >> 31);                                               \
    dst[x + y*dst_linesize + pos] = temp;                                   \
} while (0)

    for (y = 0; y < height; y++) {
        const uint8_t *d = dither[y];
        for (x = 0; x < width; x += 8) {
            int temp;
            STORE16(0);
            STORE16(1);
            STORE16(2);
            STORE16(3);
            STORE16(4);
            STORE16(5);
            STORE16(6);
            STORE16(7);
        }
    }
}

/* Main routine for store_slice16_c */
component int main() {
  uint16_t * dst;
  const int16_t * src;
  int dst_linesize;
  int src_linesize;
  int width;
  int height;
  int log2_scale;
  const uint8_t (*)[8] dither;
  int depth;
  store_slice16_c(dst, src, dst_linesize, src_linesize, width, height, log2_scale, dither, depth);
  return 0;
}
