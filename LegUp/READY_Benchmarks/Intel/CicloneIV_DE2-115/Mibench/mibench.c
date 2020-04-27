#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

int mibench(int idx) {
	int i, k;
    unsigned short A[DATA_SIZE];
    unsigned short B[DATA_SIZE];
    unsigned short C[DATA_SIZE];
    unsigned short OUT[DATA_SIZE];
    for (k = 0; k < DATA_SIZE; ++k) {
        A[k] = k;
        B[k] = k;
        C[k] = k;
        OUT[k] = 0;
    }
    for (i = 0; i < 100; i++) {
        for (k = 0; k < DATA_SIZE; ++k) {
            OUT[k] = (unsigned short) (A[k] * (6 * A[k] + 43 + B[k]) + C[k] * (6 * A[k] + 43 + 2 * B[k] + C[k]) +
                                       A[k] * (9 * A[k] + 1));
        }
    }
    int v = OUT[idx];
    return v;
}


int main() {
    int idx = 50;
    int r = mibench(idx);
    printf("%d\n", r);
    return 0;
}
