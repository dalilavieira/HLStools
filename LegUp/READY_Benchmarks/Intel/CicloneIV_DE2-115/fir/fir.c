#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)
#define TAPS 63

int fir(int idx, unsigned short *coef, int taps){
   int i, j, k;
   unsigned short data_in[DATA_SIZE + taps];
   unsigned short data_out[DATA_SIZE + taps];
   for (k = 0; k < DATA_SIZE; ++k){
      data_in[k] = k;
      data_out[k] = 0;
   }
   for(i = 0; i < SAMPLES;i++){
      for (j = 0; j < DATA_SIZE; j++){
         unsigned short fir = 0;
         for (k = 0; k < taps; ++k) {
             fir += data_in[j + k] * coef[taps - 1 - k];
         }
         data_out[j] = fir;
      }
   }
   int v = data_out[idx];
   return v;
}

int main() {
    int idx = 50, k;
    unsigned short coef[TAPS];
    for (k = 0; k < TAPS; ++k){
       coef[k] = k+1;
    }
    int r = fir(idx, coef, TAPS);
    printf("%d\n", r);
    return 0;
}
