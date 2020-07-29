# Code testing for HLS

## Example1

There are 4 code, where each code makes small changes to the function's return. They can be viewed below:

 - example1_base.c
  
Code base. It returns a function 'test' of type integer.

```
  int test(int a) {
``` 

 - example1_test1.c

First test. The return is a pointer of type integer.

```
  int *test(int a) {
``` 
 
 - example1_test2.c
 
 Second test. The return is a const and pointer of type integer 
 
 ``` 
 const int *test(int a) {
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
 
