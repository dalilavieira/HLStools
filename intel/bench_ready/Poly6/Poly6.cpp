//#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

int poly6(int idx) {

    unsigned short *a, *b, *c, *out;

    a = new unsigned short[DATA_SIZE];
    b = new unsigned short[DATA_SIZE];
    c = new unsigned short[DATA_SIZE];
    out = new unsigned short[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        a[k] = k;
        b[k] = k;
        c[k] = k;
        out[k] = 0;
    }

    for (int i = 0; i < 100; i++) {
        for (int k = 0; k < DATA_SIZE; ++k) {
            out[k] = b[k] * (8 * c[k] * (b[k] + 216) + 124416 * c[k]) + 2985984 * c[k] - a[k] * (b[k] * b[k] * c[k] *
                                                                                                 (6 * b[k] + 4 * b[k] -
                                                                                                  432) - c[k] *
                                                                                                         (414 * c[k] -
                                                                                                          20736) -
                                                                                                 c[k] * (3456 * c[k] -
                                                                                                         1492992) -
                                                                                                 a[k] * ((b[k] * b[k] *
                                                                                                          (b[k] *
                                                                                                           (c[k] - 32) +
                                                                                                           c[k] *
                                                                                                           (c[k] -
                                                                                                            72)) -
                                                                                                          c[k] *
                                                                                                          (87 * c[k] +
                                                                                                           2592)) +
                                                                                                         c[k] * (c[k] *
                                                                                                                 (c[k] -
                                                                                                                  864) -
                                                                                                                 186624)));
        }
    }

    int v = out[idx];

    delete a;
    delete b;
    delete c;
    delete out;

    return v;
}

int main(int argc, char *argv[]) {

    int idx = 0;

    int r = poly6(idx);
    printf("%d\n", r);

    return 0;
}

