// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>


void test(int a) {

	int **b;
	const int *d = b[a&7];
}

component int main() {

	int a = 10;

	test(a);	

	return 0;
}
