// Example: return pointer
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

int *test(int a) {

	int b[a];

	for (int i = 0; i < a; i++) {
		b[i] = i + a;
	}

	return b;
}

component int main() {

	int a = 10;
	int *b;

	b = test(a);	

	return 0;
}
