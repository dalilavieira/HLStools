// Example 3

#include <stdlib.h>
#include <stdio.h>

int main() {

	int *a;
	int n = 5;
	
	a = (int*)malloc(n * sizeof(int)); 

	for(int i = 0; i < n; i++) {
		a[i] = i*2 + n;
	}	

	return a[2];
}
