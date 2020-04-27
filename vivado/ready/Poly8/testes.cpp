#include "poly8.h"

int main(int argc, char *argv[]) {

    int idx = 0;
    int test = 0;
     
    static int16_t data_a[DATA_SIZE];
    static int16_t data_b[DATA_SIZE];
    static int16_t data_c[DATA_SIZE];
    static int32_t out[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        data_a[k] = k;
        data_b[k] = k;
        data_c[k] = k;
        out[k] = 0;
    }
        
    poly8(data_a,data_b,data_c,out);

    for (int k = 0; k < DATA_SIZE; ++k) {
        printf("%d\n",out[k]);
    }
    return 0;
}
