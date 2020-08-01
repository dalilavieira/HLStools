# Code testing for HLS

## Example1

There are 4 code, where each code makes small changes to the function's return. They can be viewed below:

 - example1_base.c
  
Code base. It returns a function 'test' of type integer.

```
  int test(int a) { ... }
``` 

 - example1_test1.c

First test. The return is a pointer of type integer.

```
  int *test(int a) { ... }
``` 
 
 - example1_test2.c
 
 Second test. The return is a const and pointer of type integer 
 
 ``` 
 const int *test(int a) { ... }
 ```
 
 - example1_test3.c
 
 Third test of Example 1. The return is a pointer of type integer, but the variable is no have allocation on memory.
 
  ``` 
 const int *test(int a) {
   int *b;
   return b;
 }
 ```
 
 ## Example2
 
 This example focus in variable const initialized or not.
 
 - example2_base.c
 
 Code base. The variable const is initialized.
 
 ``` 
   const int a = 10; // const initialized
   int b = test(a);
 ```

- example2_teste1.c
 
 The first test. The variable const is not initialized.

 ``` 
   const int a; // const is not initialized
   int b = test(a);
 ```
 
 ## Example3
 
 This example test diferents type set, such as short and char.  
 
 - example3_base.c
 
 Code base with igual types.
 
 ``` 
   unsigned char r;
   unsigned char c;
   r = (a >> 8);
 ```
 
 - example3_teste1.c
 
 Test 1, differents types (char and short).
 
 ```
   unsigned char r;
   unsigned short c;
   r = (a >> 8);
 ``` 
 
 - example3_teste2.c
 
 Test 2, differents types with one pointer type.
 
 ```
 unsigned char *r;
 unsigned short c;
 r[0] = (a >> 8);
 r[1] = c & 0xff;
 ```
## Example 4

This example goals verify the type of parameter on the function, int *, void *

- example4_test1.c

Test 1, the type of parameter pass to function is a pointer integer type.

 ```
 void test(int *a) { ... }
 ```

- example4_test2.c

Test 2, the type of parameter pass to function is a pointer void type.

 ```
 void test(void *a) { ... }
 ```
 
 - example4_test3.c

Test 3, the type of parameter pass to function is a pointer void type and the return of function is a pointer integer type.

```
 int* test(void *a) { ... }
 ```

## Exemple5

This example test the union type. 

- example5_test1.c

Test 1, test the union type set.

```
 void test(union U1 a, int b) {
	a.dummy = b;
 }
 ```
- example5_test2.c

Test 2, test the union type set and return union type.

```
 union U1 test(union U1 a, int b) {
	a.dummy = b;
	return a;
 }
```

- example5_test3.c

Test 3, test the union type set and return pointer union type.

```
 union U1* test(union U1 a, int b) {
	a.dummy = b;
	return &a;
 }
```

## Example6

This example test pointer to pointer.

- example6_test1.c

Test 1, just declaration of pointers to pointers integer type.

```
 void test(int a) {
   int **b;
 }
```

- example6_test2.c

Test 2, declaration of pointers to pointers integer type and set in other pointer.

```
 void test(int a) {
   int **b;
   int *d = b[a&7];
 }
```

- example6_test3.c

Test 3, declaration of pointers to pointers integer type and set in other const pointer.

```
 void test(int a) {
   int **b;
   const int *d = b[a&7];
 }
```




 
 
 
