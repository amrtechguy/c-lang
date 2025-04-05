#include <stdio.h>

/*
    Loops in c:
        -> for
        -> while
        -> do while
    
    Control the loop:
        break       -> stop the loop execution and get out of it.
        continue    -> stop the current iteration execution and jump to the next iteration.
*/

int main() {

    /*
        for statement:
            -> Use it if I know the number of iterations in advance.
    */
    printf("The English Alphabet:\n");

    /*
        Note: can initialize multiple variables and use more complex condition.
    */
    for(int i = 65; i <= 90; i++) {
        printf("%c ", i);
    }

    printf("\n");

    /*
        while statement:
            -> Use it if I don't know the number of iterations in advance.
    */
    char letter = 'A';
    int iterations = 0;

    while(letter != 'Z') {
        letter++;
        iterations++;
    }

    printf("Found letter A after %d iterations.\n", iterations);

    /*
        do while statement:
            -> Use it if I don't know the number of iterations in advance.
            -> Use it to execute the block of code at least once.
    */
   do {
        printf("This code executed only once, although the condition is false.\n");
   } while (0);

    return 0;
}