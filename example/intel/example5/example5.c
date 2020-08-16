// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

component int foo(int t) {
	
	int *a;
	
	a = (int*)malloc(t * sizeof(int)); 
	
	for(int i = 0; i < t; i++) {
		a[i] = i*2 + t;
	}
	
	return a[2] + 1;
}

int main() {

	int n = 10;
	
	int a = foo(n);
	
	return a;
}
