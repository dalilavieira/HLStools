// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

void test(void *a) {

	int *b = a;
}

component int main() {

	int *a;

	test(a);	

	return 0;
}
