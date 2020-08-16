// Example 3 // gcc -Wall -pedantic example6_test3.c 

#include <stdlib.h>
#include <stdio.h>

/*
	int a0 = 17, a1 = 23, a2 = 31;
	int *b0 = argc > 1 ? &a0 : &a1;
	int *b1 = &a2;
	int **c =  argc > 3 ? &b0 : &b1;	
*/

int main() {

	int t;
	
	scanf("%d", &t);

	int a0 = 17, a1 = 13;
	int *b = t > 1 ? &a0 : &a1;
	int **c = &b;	

	return **c;
}
