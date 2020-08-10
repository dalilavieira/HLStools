// Example: return pointer
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

int *test(int a) {

	int *b = 0;

	return b;
}

component int main(int argc, char **argv) {

	int a = 10;
	int *b;

	b = test(a);	

	return *b;
}
