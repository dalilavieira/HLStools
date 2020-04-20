#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)
#define TAPS 63

component int fir(int idx, int taps){
   
   unsigned short coef[TAPS];

    for (int k = 0; k < TAPS; ++k){
      coef[k] = k+1;
    }

   unsigned short data_in[DATA_SIZE+taps];
   unsigned short data_out[DATA_SIZE+taps];

   for (int k = 0; k < DATA_SIZE; ++k){
      data_in[k] = k;
      data_out[k] = 0;
   }
   
   for(int i = 0; i < SAMPLES;i++){
      
      for (int j = 0; j < DATA_SIZE; j++){
         unsigned short fir = 0;
         for (int k = 0; k < taps; ++k) {
             fir += data_in[j + k] * coef[taps - 1 - k];
         }
         data_out[j] = fir;
      }
      
   }
   
   int v = data_out[idx];  

   return v;

}

int main(int argc, char *argv[]){
      
    int idx = 0;
    
   int r = fir(idx,TAPS);
   printf("%d\n", r);

    return 0;
}