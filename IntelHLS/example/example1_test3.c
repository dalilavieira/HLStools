// Example: return pointer
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

const int *test(int a) {

	int *b;

	return b;
}

component int main() {

	int a = 10;
	int *b;

	b = test(a);	

	return 0;
}
