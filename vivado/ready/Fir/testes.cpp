#include "fir.h"

int main(int argc, char *argv[]){
      
     int idx = 0;
     int test = 0;    
    
     static int16_t coef[100];
     static int16_t data_in[DATA_SIZE+100];
     static int32_t  data_out[DATA_SIZE+100];
     
     for (int k = 0; k < TAPS; ++k){
         coef[k] = k+1;
     } 

     for (int k = 0; k < DATA_SIZE; ++k){
	data_in[k] = k;
	//data_out[k] = 0;
     }

     fir(coef, data_in, data_out);

    for (int k = 0; k < DATA_SIZE; ++k){
	printf("%d\n",data_out[k]);
    }
     
     return 0;
}
