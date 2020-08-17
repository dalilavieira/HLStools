// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

component static int foo(int t) {
	return t;
}

int main() {

	int n = 5, t;

	t = foo(n);		

	return t;
}
