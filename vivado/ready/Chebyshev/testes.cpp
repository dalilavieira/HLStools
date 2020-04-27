#include "chebyshev.h"

int main(int argc, char *argv[]) {

    int idx = 0;
    int test= 0;

    static int16_t data_in[DATA_SIZE];
    static int32_t data_out[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        data_in[k] = k;
        //data_out[k] = 0;
    }

    chebyshev_openmp(data_in, data_out);

    for (int k = 0; k < DATA_SIZE; ++k) {
        printf("%d\n",data_out[k]);
    }

    return 0;
}
