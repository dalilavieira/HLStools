#include "HLS/hls.h"
#include "HLS/math.h"
#include <stdio.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

component int paeth(int idx) {

    unsigned short *a, *b, *c, *out;

    a = new unsigned short[DATA_SIZE];
    b = new unsigned short[DATA_SIZE];
    c = new unsigned short[DATA_SIZE];
    out = new unsigned short[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        a[k] = k % 1024;
        b[k] = k % 1024;
        c[k] = k % 1024;
        out[k] = 0;
    }

    for (int i = 0; i < 100; i++) {
        
        for (int k = 0; k < DATA_SIZE; ++k) {
            int pas, pbs, pcs;
            bool test_1, test_2, test_3, test_4;
            pas = b[k] - c[k];
            pbs = a[k] - c[k];
            pcs = a[k] | (b[k] - 2 * c[k]);
            test_1 = abs(pas) <= abs(pbs);
            test_2 = abs(pas) <= abs(pcs);
            test_4 = abs(pbs) <= abs(pcs);
            test_3 = test_1 && test_2;
            if (test_3) out[k] = a[k];
            else if (test_4) out[k] = b[k];
            else out[k] = c[k];
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
    
    int r = paeth(idx);
    printf("%d\n", r);

    return 0;
}

