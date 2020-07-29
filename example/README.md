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
 
