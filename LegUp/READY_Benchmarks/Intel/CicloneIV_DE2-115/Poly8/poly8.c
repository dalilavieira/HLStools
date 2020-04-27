#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

int poly8(int idx) {
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
    for (i = 0; i < SAMPLES; i++) {
        for (k = 0; k < DATA_SIZE; ++k) {
            out[k] = a[k] * (c[k] * (432 * b[k] - 13824) +
                     a[k] * a[k] * (c[k] * (6 * c[k] - 4312) + 55296 - (464 * c[k] - 13824))) + a[k];
        }
    }
    int v = out[idx];
    return v;
}

int main() {
    int idx = 50;
    int r = poly8(idx);
    printf("%d\n", r);
    return 0;
}
