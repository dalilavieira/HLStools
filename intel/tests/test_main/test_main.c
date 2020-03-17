#include <HLS/hls.h>
#include <stdlib.h>

int func(int a, int b) {
	return a + b;
}

component int main() {
	int a;
	a = func(10, 20);	
	return 0;
}
