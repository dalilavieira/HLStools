#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

component int qspline(int idx) {

    unsigned short *a, *b, *c, *d, *e, *f, *g, *out;

    a = new unsigned short[DATA_SIZE];
    b = new unsigned short[DATA_SIZE];
    c = new unsigned short[DATA_SIZE];
    d = new unsigned short[DATA_SIZE];
    e = new unsigned short[DATA_SIZE];
    f = new unsigned short[DATA_SIZE];
    g = new unsigned short[DATA_SIZE];
    out = new unsigned short[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        a[k] = k % 1024;
        b[k] = k % 1024;
        c[k] = k % 1024;
        d[k] = k % 1024;
        e[k] = k % 1024;
        f[k] = k % 1024;
        g[k] = k % 1024;
        out[k] = 0;
    }

    for (int i = 0; i < SAMPLES; i++) {
        for (int k = 0; k < DATA_SIZE; ++k) {
            out[k] = b[k] * a[k] * b[k] * b[k] * b[k] + b[k] * b[k] + b[k] * f[k] * 6 * c[k] * b[k] * f[k] +
                     e[k] * f[k] * f[k] * f[k] + b[k] * f[k] * f[k] * 4 * g[k] * f[k];
        }
    }

    int v = out[idx];

    delete a;
    delete b;
    delete c;
    delete d;
    delete e;
    delete f;
    delete g;
    delete out;

    return v;
}

int main(int argc, char *argv[]) {

    int idx = 0;
    
    int r = qspline(idx);
    printf("%d\n", r);

    return 0;
}