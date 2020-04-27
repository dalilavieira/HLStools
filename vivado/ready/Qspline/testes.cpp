#include "qspline.h"

int main(int argc, char *argv[]) {

    int idx = 0;
    int test = 0;

    static int16_t data_a[DATA_SIZE];
    static int16_t data_b[DATA_SIZE];
    static int16_t data_c[DATA_SIZE];
    static int16_t data_d[DATA_SIZE];
    static int16_t data_e[DATA_SIZE];
    static int16_t data_f[DATA_SIZE];
    static int16_t data_g[DATA_SIZE];
    static int32_t out[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        data_a[k] = k % 1024;
        data_b[k] = k % 1024;
        data_c[k] = k % 1024;
        data_d[k] = k % 1024;
        data_e[k] = k % 1024;
        data_f[k] = k % 1024;
        data_g[k] = k % 1024;
        //out[k] = 0;
    }

    qspline(data_a,data_b,data_c,data_d,data_e,data_f,data_g,out);

    for (int k = 0; k < DATA_SIZE; ++k) {
	printf("%d\n",out[k]);
    }

    return 0;
}


