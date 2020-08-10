// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

int *test(void *a) {

	int *b = a;

	return b;
}

component int main() {

	int c = 0; 

	int *b;
	int *a = &c;

	b = test(a);	

	return (unsigned long) b;
}
