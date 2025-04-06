#include <stdio.h>
#include <stdlib.h>

/*
    Heap:
        -> It's an area in the program's memory where we can allocate dynamic memory in runtime.

    Functions:
        -> malloc()     : allocate with a spicific size.
        -> realloc()    : reallocate with a different size.
        -> calloc()     : allocate and initialize the storage area to zeros.
        -> free()       : free the allocated memory.
*/

int main() {

    // allocattion:
    // -> allocate memory in the heap by the size of an int type.
    // -> malloc() returns a void pointer that points to the allocated memory. 
    // -> (int *) casts or convert the returned void pointer to int pointer.
    int *ptr = (int *)malloc(sizeof(int));

    // make sure the pointer has a memory address before using it.
    if(ptr == NULL) {
        printf("Error: malloc failed.\n");
        exit(1);
    }

    // the pointer's value
    printf("The pointer's value: %p.\n", ptr);

    // dereference the pointer
    *ptr = 100;
    printf("The pointer is pointing to the value: %d.\n", (*ptr));

    // free
    free(ptr);

    return 0;
}