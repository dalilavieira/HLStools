#include "HLS/hls.h"
#include "HLS/math.h"
#include <stdio.h>
//#include <stdlib.h>
//#include <math.h>

#define DATA_SIZE (320*320)
#define SAMPLES (100)
#define SOBEL_OP_SIZE 9
#define pow2(x) (x)*(x)
#define byte int

void makeOpMemCPU(const byte *buffer, int buffer_size, int width, int cindex, byte *op_mem) {

    int bottom = cindex - width < 0;
    int top = cindex + width >= buffer_size;
    int left = cindex % width == 0;
    int right = (cindex + 1) % width == 0;
    byte zero = 0;

    op_mem[0] = !bottom && !left ? buffer[cindex - width - 1] : zero;
    op_mem[1] = !bottom ? buffer[cindex - width] : zero;
    op_mem[2] = !bottom && !right ? buffer[cindex - width + 1] : zero;

    op_mem[3] = !left ? buffer[cindex - 1] : zero;
    op_mem[4] = buffer[cindex];
    op_mem[5] = !right ? buffer[cindex + 1] : zero;

    op_mem[6] = !top && !left ? buffer[cindex + width - 1] : zero;
    op_mem[7] = !top ? buffer[cindex + width] : zero;
    op_mem[8] = !top && !right ? buffer[cindex + width + 1] : zero;
}

byte convolution(byte *X, byte *Y, int c_size) {
    byte sum = 0;
    for (int i = 0; i < c_size; i++) {
        sum += X[i] * Y[c_size - i - 1];
    }

    return sum;
}

void itConv(byte *buffer, int buffer_size, int width, byte *op, byte *res) {
    byte op_mem[SOBEL_OP_SIZE];
    for (int i = 0; i < SOBEL_OP_SIZE; ++i) op_mem[i] = 0;
    for (int i = 0; i < buffer_size; i++) {
        makeOpMemCPU(buffer, buffer_size, width, i, op_mem);
        res[i] = (convolution(op_mem, op, SOBEL_OP_SIZE));
    }
}

void contour(const byte *sobel_h, const byte *sobel_v, int gray_size, byte *contour_img) {
    for (int i = 0; i < gray_size; i++) {
        contour_img[i] = 255 - (byte) sqrt(pow2(sobel_h[i]) + pow2(sobel_v[i]));
    }
}

component int sobel_filter(int idx) {

    int v = 0;
    int width = (int) sqrt(DATA_SIZE);
    
    byte sobel_h[9] = {-1, 0, 1, -2, 0, 2, -1, 0, 1};
    byte sobel_v[9] = {1, 2, 1, 0, 0, 0, -1, -2, -1};

    byte gray[DATA_SIZE];
    byte contour_img_cpu[DATA_SIZE];

    byte sobel_h_res[DATA_SIZE];
    byte sobel_v_res[DATA_SIZE];

    for (int i = 0; i < DATA_SIZE; ++i) {
        gray[i] = i;
    }

    for (int l = 0; l < SAMPLES; ++l) {
        itConv(gray, DATA_SIZE, width, sobel_h, sobel_h_res);
        itConv(gray, DATA_SIZE, width, sobel_v, sobel_v_res);
        contour(sobel_h_res, sobel_v_res, DATA_SIZE, contour_img_cpu);
    }

    v = contour_img_cpu[idx];

    return v;
}

int main(int argc, char *argv[]) {

    int idx = 0;
    int r = sobel_filter(idx);
    printf("%d\n", r);

    return 0;
}
