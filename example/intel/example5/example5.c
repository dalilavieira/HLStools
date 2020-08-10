// Example 3 // gcc -Wall -pedantic example6_test3.c 
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

/*
	int a0 = 17, a1 = 23, a2 = 31;
	int *b0 = argc > 1 ? &a0 : &a1;
	int *b1 = &a2;
	int **c =  argc > 3 ? &b0 : &b1;	
*/

component int main(int argc, char **argv) {

	int a0 = 17, a1 = 13;
	int *b = argc > 1 ? &a0 : &a1;
	int **c = &b;	

	return **c;
}
