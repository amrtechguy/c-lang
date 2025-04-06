#include <stdio.h>

/*
    Pointer

        What is it?
            -> a variable that stores a memory address.

        What is its type?
            -> it has the same type of the value it points to.
            -> it can have a void type?

        Does it support arithmetic operations?
            -> yes.
            -> e.g. ++ -- 
            -> the pointer is increased or decreased by the size of data type it points to.
*/

void init_arr(int *arr, int size, int value);

int main() {
    int nums[10];

    init_arr(nums, 10, 0);
    nums[0] = 100;
    nums[1] = 200;

    // int *num_ptr    : decalre apointer to an int value and initialize its value to NULL.
    int *ptr = NULL;

    // num_ptr         : is the pointer variable that stores a memory address.
    //                 : it's an lvalue that accepts a memory address value. 
    ptr = nums; // nums has the base address of the array (the memory address of the first value in the array).

    printf("Pointer Info:\n");
    printf("The pointer variable value: %p\n", ptr); // this prints the memory address of the value that the pointer points to in memory.
    printf("The pointer points to the value: %d\n", (*ptr));

    // move the pointer forward by 1 value.
    // the address is increased by a size of the value's type it points to.
    ptr++;
    printf("Increased the pointer by 1 value to get the next value: %d\n", *ptr);
    
    return 0;
}

void init_arr(int *arr, int size, int value) {
    for(int i = 0; i < size; i++) {
        arr[i] = value;
    }
}