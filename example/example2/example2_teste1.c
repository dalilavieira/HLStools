// Example simple const not initialized

#include <stdlib.h>
#include <stdio.h>

int test(int a) {

	a = a + 5;

	return a;
}

int main() {

	const int a;  // const not initialized
	int b = test(a);	

	return b;
}
