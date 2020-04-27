#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

int poly6(int idx) {
	int i, k;
    unsigned short a[DATA_SIZE];
    unsigned short b[DATA_SIZE];
    unsigned short c[DATA_SIZE];
    unsigned short out[DATA_SIZE];
    for (k = 0; k < DATA_SIZE; ++k) {
        a[k] = k;
        b[k] = k;
        c[k] = k;
        out[k] = 0;
    }
    for (i = 0; i < 100; i++) {
        for (k = 0; k < DATA_SIZE; ++k) {
            out[k] = b[k] * (8 * c[k] * (b[k] + 216) + 124416 * c[k]) + 2985984 * c[k] - a[k] * (b[k] * b[k] * c[k] *
                     (6 * b[k] + 4 * b[k] - 432) - c[k] * (414 * c[k] - 20736) - c[k] * (3456 * c[k] - 1492992) -
                     a[k] * ((b[k] * b[k] * (b[k] * (c[k] - 32) + c[k] * (c[k] - 72)) - c[k] * (87 * c[k] + 2592)) +
                     c[k] * (c[k] * (c[k] - 864) - 186624)));
        }
    }
    int v = out[idx];
    return v;
}
int main() {
    int idx = 50;
    int r = poly6(idx);
    printf("%d\n", r);
    return 0;
}
