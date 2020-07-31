// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

int *test(void *a) {

	int *b = a;

	return b;
}

component int main() {

	int *a, *b;

	b = test(a);	

	return 0;
}
