#include "mibench.h"

int main(int argc, char *argv[]) {

    int idx = 0;
    int test = 0;

    static int16_t A[DATA_SIZE];
    static int16_t B[DATA_SIZE];
    static int16_t C[DATA_SIZE];
    static int32_t OUT[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        A[k] = k;
        B[k] = k;
        C[k] = k;
        OUT[k] = 0;
    }
   
    mibench(A,B,C,OUT);

    for (int k = 0; k < DATA_SIZE; ++k) {
        printf("%d\n",OUT[k]);
    }

    return 0;
}

