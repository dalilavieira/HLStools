// Example 2
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

component int *foo(int a) {

	int *b = 0;

	return b;
}

int main() {

	int a = 10;
	int *b;

	b = foo(a);	

	return *b;
}
