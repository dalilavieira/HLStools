#define DATA_SIZE (1333*1333)
#define SAMPLES (100)
#define SOBEL_OP_SIZE 9
#define pow2(x) (x)*(x)

int main(int argc, char *argv[]) {

    int r = sobel_filter(idx);
    

    return 0;
}

int sobel_filter(int idx) {

    int v = 0;
    int gray_size = DATA_SIZE;
    int width = (int) sqrt(DATA_SIZE);
    byte sobel_h[] = {-1, 0, 1, -2, 0, 2, -1, 0, 1};
    byte sobel_v[] = {1, 2, 1, 0, 0, 0, -1, -2, -1};

    byte **gray;
    byte **contour_img_cpu;
    gray = new byte *[NUM_THREAD];
    contour_img_cpu = new byte *[NUM_THREAD];
    auto **sobel_h_res = new byte *[NUM_THREAD];
    auto **sobel_v_res = new byte *[NUM_THREAD];

    for (int i = 0; i < NUM_THREAD; ++i) {
        gray[i] = new byte[gray_size];
        contour_img_cpu[i] = new byte[gray_size];
        sobel_h_res[i] = new byte[DATA_SIZE];
        sobel_v_res[i] = new byte[DATA_SIZE];

        for (int j = 0; j < DATA_SIZE; ++j) {
            gray[i][j] = j;
        }
    }

    for (int l = 0; l < SAMPLES; ++l) {
        s = high_resolution_clock::now();
        for (int i = 0; i < NUM_THREAD; ++i) {
            itConv(gray[i], gray_size, width, sobel_h, sobel_h_res[i]);
            itConv(gray[i], gray_size, width, sobel_v, sobel_v_res[i]);
            contour(sobel_h_res[i], sobel_v_res[i], gray_size, contour_img_cpu[i]);
        }
        diff += high_resolution_clock::now() - s;
    }

    double cpuExecTime = (diff.count() * 1000) / SAMPLES;

    printf("Time(ms) CPU 1 Thread: %5.2lf\n", cpuExecTime);

    v = contour_img_cpu[0][idx];

    for (int k = 0; k < NUM_THREAD; ++k) {
        delete gray[k];
        delete contour_img_cpu[k];
        delete sobel_h_res[k];
        delete sobel_v_res[k];
    }

    delete gray;
    delete contour_img_cpu;
    delete[]sobel_h_res;
    delete[]sobel_v_res;

    return v;

}

void itConv(byte *buffer, int buffer_size, int width, byte *op, byte *res) {
    byte op_mem[SOBEL_OP_SIZE];
    memset(op_mem, 0, SOBEL_OP_SIZE);
    for (int i = 0; i < buffer_size; i++) {
        makeOpMemCPU(buffer, buffer_size, width, i, op_mem);
        res[i] = (convolution(op_mem, op, SOBEL_OP_SIZE));
    }
}

byte convolution(byte *X, byte *Y, int c_size) {
    byte sum = 0;
    for (int i = 0; i < c_size; i++) {
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

void makeOpMemCGRA(byte *buffer, int buffer_size, int width, short **op_mem) {
    for (int cindex = 0; cindex < buffer_size; cindex++) {
        int bottom = cindex - width < 0;
        int top = cindex + width >= buffer_size;
        int left = cindex % width == 0;
        int right = (cindex + 1) % width == 0;
        short zero = 0;

        op_mem[0][cindex] = !bottom && !left ? (short) buffer[cindex - width - 1] : zero;
        op_mem[1][cindex] = !bottom ? (short) buffer[cindex - width] : zero;
        op_mem[2][cindex] = !bottom && !right ? (short) buffer[cindex - width + 1] : zero;

        op_mem[3][cindex] = !left ? (short) buffer[cindex - 1] : zero;
        //op_mem[4][cindex] = buffer[cindex];
        op_mem[4][cindex] = !right ? (short) buffer[cindex + 1] : zero;

        op_mem[5][cindex] = !top && !left ? (short) buffer[cindex + width - 1] : zero;
        op_mem[6][cindex] = !top ? (short) buffer[cindex + width] : zero;
        op_mem[7][cindex] = !top && !right ? (short) buffer[cindex + width + 1] : zero;
    }
}

void contour(const byte *sobel_h, const byte *sobel_v, int gray_size, byte *contour_img) {
    for (int i = 0; i < gray_size; i++) {
        contour_img[i] = 255 - (byte) sqrt(pow2(sobel_h[i]) + pow2(sobel_v[i]));
    }
}
