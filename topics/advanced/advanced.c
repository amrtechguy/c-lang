#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
    // command line arguments
    // char *argv[] = char **argv (an array of strings) 
    char name[10];
    int age = 0;
    
    if(argv[1] != NULL) {
        strncpy(name, argv[1], 9);
    }

    if(argv[2] != NULL) {
        age = atoi(argv[2]);
    }

    printf("name: %s -> age: %d\n", name, age);


    // switch
    switch(argc) {
        case 2:
            printf("No user's arguments passed.\n");
            break;
        default:
            printf("User passed %d command line arguments.\n", argc);
    }

    // void * or (generic pointer) and type recasting
    char chr = 'P';
    int *nums = (int *)malloc(5 * sizeof(int)); // recasting the returned pointer from type (void *) to (int *).
    nums[0] = 99;

    // void * could be used for function parameters and return types
    void *void_ptr = &nums;

    // pointer arithmetic
    int *iptr = NULL;
    int ids[10];
    iptr = ids; // ids = &(ids[0])

    for(int i = 0; i < 10; i++) {
        *iptr = i * 10;
        // each pointer incrementing moves forward by int size.
        printf("pointer %lld -> %d\n", iptr, i * 10);
        // pointer increment adds a type size (e.g. int -> adds 4) in bytes to the pointer value
        // so it can point to the next element value.
        iptr++;
    }

    return 0;
}

