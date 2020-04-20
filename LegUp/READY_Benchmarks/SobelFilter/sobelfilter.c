#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)
#define NUM_THREAD (8)
#define SOBEL_OP_SIZE 9
typedef int byte;

byte convolution(byte *X, byte *Y, int c_size) {
    int i;
	byte sum = 0;
    for (i = 0; i < c_size; i++) {
        sum += X[i] * Y[c_size - i - 1];
    }

    return sum;
}

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

void itConv(byte *buffer, int buffer_size, int width, byte *op, byte *res) {
    int i;
	byte op_mem[SOBEL_OP_SIZE];
    for(i=0;i<SOBEL_OP_SIZE;i++){
    	op_mem[i] = 0;
    }
    for (int i = 0; i < buffer_size; i++) {
        makeOpMemCPU(buffer, buffer_size, width, i, op_mem);
        res[i] = (convolution(op_mem, op, SOBEL_OP_SIZE));
    }
}

void contour(const byte *sobel_h, const byte *sobel_v, int gray_size, byte *contour_img) {
    for (int i = 0; i < gray_size; i++) {
        contour_img[i] = 255 - (byte) sqrt(pow(sobel_h[i],2) + pow(sobel_v[i],2));
    }
}

int sobelfilter(int idx) {

    int v = 0, i, j, l;
    int gray_size = DATA_SIZE;
    int width = (int) sqrt(DATA_SIZE);
    byte sobel_h[9] = {-1, 0, 1, -2, 0, 2, -1, 0, 1};
    byte sobel_v[9] = {1, 2, 1, 0, 0, 0, -1, -2, -1};

    byte gray[NUM_THREAD][gray_size];
    byte contour_img_cpu[NUM_THREAD][gray_size];
    byte sobel_h_res[NUM_THREAD][DATA_SIZE];
    byte sobel_v_res[NUM_THREAD][DATA_SIZE];

    for (i = 0; i < NUM_THREAD; ++i) {
        for (j = 0; j < DATA_SIZE; ++j) {
            gray[i][j] = j;
        }
    }
    for (l = 0; l < SAMPLES; ++l) {
        for (i = 0; i < NUM_THREAD; ++i) {
            itConv(gray[i], gray_size, width, sobel_h, sobel_h_res[i]);
            itConv(gray[i], gray_size, width, sobel_v, sobel_v_res[i]);
            contour(sobel_h_res[i], sobel_v_res[i], gray_size, contour_img_cpu[i]);
        }
    }
    v = contour_img_cpu[0][idx];
    return v;
}

int main() {
    int idx = 50;
    int r = sobelfilter(idx);
    printf("%d\n", r);
    return 0;
}
