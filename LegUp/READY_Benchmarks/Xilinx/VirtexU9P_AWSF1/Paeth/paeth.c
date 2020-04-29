#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

int paeth(int idx) {
	int i, k;
    unsigned short a[DATA_SIZE];
    unsigned short b[DATA_SIZE];
    unsigned short c[DATA_SIZE];
    unsigned short out[DATA_SIZE];

    for (k = 0; k < DATA_SIZE; ++k) {
        a[k] = k % 1024;
        b[k] = k % 1024;
        c[k] = k % 1024;
        out[k] = 0;
    }
    for (i = 0; i < 100; i++) {
        for (k = 0; k < DATA_SIZE; ++k) {
            int pas, pbs, pcs;
            int test_1, test_2, test_3, test_4;
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
    return v;
}

int main() {
    int idx = 50;
    int r = paeth(idx);
    printf("%d\n", r);
    return 0;
}
