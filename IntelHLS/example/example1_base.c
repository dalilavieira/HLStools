// Example simple
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

int test(int a) {

	a = a + 5;

	return a;
}

component int main() {

	int a = 10;
	int b = test(a);	

	return 0;
}
