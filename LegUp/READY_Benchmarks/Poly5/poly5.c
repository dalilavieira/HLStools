#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

int poly5(int idx) {
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
            out[k] = ((a[k] * (a[k] * (a[k - 432]) + 62208) - 2985984) * b[k] *
                      (a[k] * (78 * a[k] - 9504) + b[k] * (288 * a[k] - 5184)) +
                      c[k] * b[k] * (a[k] * (a[k] - 207) + 3456 - b[k] * (2 * a[k] - c[k] + 144))) * c[k];
        }
    }
    int v = out[idx];
    return v;
}

int main() {
    int idx = 50;
    int r = poly5(idx);
    printf("%d\n", r);
    return 0;
}
