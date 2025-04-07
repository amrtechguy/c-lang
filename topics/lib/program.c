#include <stdio.h>
#include "mylib.h"

/**
 * To build the final program using mylib:
 * 
 * Method 1:
 *  -> gcc -o program program.c mylib.c
 * 
 * Method 2:
 *  -> gcc -c mylib.o mylib.c                       "Compile the mylib.c -> mylib.o"
 *  -> gcc -o program program.c mylib.o             "Build the program using mylib.o"
 * 
*/

int main() {

    int a = 5, b = 10;

    int max = get_max(a, b);

    printf("The max number is %d.\n", max);

    return 0;
}