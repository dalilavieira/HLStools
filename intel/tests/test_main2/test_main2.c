#include <HLS/hls.h>
#include <stdlib.h>

int func(int a,int b) {
	return a + b;
}

component void cmain() {
	int a = func(10,20);
}

int main() {
	// nothing to here...	
	return 0;
}
