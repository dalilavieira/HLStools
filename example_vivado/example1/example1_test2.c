// Example: return constant pointer 

#include <stdlib.h>
#include <stdio.h>

const int *test(int a) {

	int b[a];

	for (int i = 0; i < a; i++) {
		b[i] = i + a;
	}

	return b;
}

int main() {

	int a = 10;
	int *b;

	b = test(a);	

	return 0;
}
