#include <stdlib.h>
#include <float.h>
#include <math.h>
#include <iostream>
#include <chrono>
#include <omp.h>
#define d_size 500

using namespace std::chrono;

void sobel(int image1[][], int image2[][]){
	for (j = 1; j < d_size- 1; j++) {
		for (i = 1; i < d_size - 1; i++) {
 
			image2[j][i] = (int)sqrt((image1[j-1][i-1] + 2*image1[j][i-1] + image1[j+1][i-1] - image1[j-1][i+1] - 2*image1[j][i+1] - image1[j+1][i+1])  
* (image1[j-1][i-1] + 2*image1[j][i-1] + image1[j+1][i-1] - image1[j-1][i+1] - 2*image1[j][i+1] - image1[j+1][i+1]) 
+ (image1[j-1][i-1] + 2*image1[j-1][i] + image1[j-1][i+1] - image1[j+1][i-1] - 2*image1[j+1][i] - image1[j+1][i+1]) * (image1[j-1][i-1] + 2*image1[j-1][i] + image1[j-1][i+1] - image1[j+1][i-1] - 2*image1[j+1][i] - image1[j+1][i+1])); 

		}
	}
	
}

int main(){

    double pixel_value;
    double pixel_value2;
    double valor;
    int x, y, i, j;
    double total = 0;

    int image1[d_size][d_size];
    //int image2[d_size][d_size];

    for(int i=0; i<d_size; i++){
        for(int j=0; j<d_size; j++){
            image1[i][j] = (int) (random() % 255);
        }
    }

	sobel(image1,image2);

    return 0;
}
