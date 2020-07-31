// Example simple const not initialized
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

int test(int a) {

	a = a + 5;

	return a;
}

component int main() {

	const int a;  // const not initialized
	int b = test(a);	

	return 0;
}
