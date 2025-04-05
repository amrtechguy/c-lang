#include <stdio.h>

/*
    Array:
        -> A data structure used for storing multiple values of the same type and size under a single variable name.
        -> Values are stored in a contiguous memory (one chunck of memory).
        -> Can access the values using indexing or the offset of the value from the beginning.
        -> The access to any value in the array is so efficient, because it uses the offset on fixed size elements stored in sequence.
        -> The type of values and size of the array must be defined.
        -> The type and size are static and can not be changed later.
        -> The values are not initialized by default, so the values will store garbage data.
    
    Types:
        -> Single dimentional array.
        -> Multi dimentional array.

    Becareful:
        -> I can access values out of the array boundries.
*/

void init_array(int arr[], int size, int value);
void print_array(int *arr, int size);

int main() {
    // array of `100` `int` values named `nums`
    int nums[10];

    printf(("The array values before the initialization:\n"));
    print_array(nums, 10);

    // initialize the values to 0
    init_array(nums, 10, 0);

    printf(("The array values after the initialization:\n"));
    print_array(nums, 10);

    // a two dimentional array of 3 rows and 4 columns
    int nums_2d[3][4];
    
    printf(("The 2d array values before the initialization:\n"));
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 4; j++) {
            printf("%d ", nums_2d[i][j]);
        }
        printf("\n");
    }
    printf("\n");


    return 0;
}

/*
    The array parameter could be one of the following:
        -> int arr[]    -> array of int values
        -> int *arr     -> pointer to int value
    Both are valid, because the array's variable name stores the base address of the array which points to the memory address of the first value in the array.
*/
void init_array(int arr[], int size, int value) {
    for(int i = 0; i < size; i++) {
        arr[i] = value;
    }
}

void print_array(int *arr, int size) {
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}