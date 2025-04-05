#include <stdio.h>
#include <string.h>
#include <ctype.h>

/*
    String:
        -> C has no type for string, but has one for char.
        -> The string is implemented in c as an sequence (array) of characters terminated by the null character '\0'.
*/

int main() {
    // An array of 100 char values named stmt.
    // Just remember it's just an array, so I can work on it as an array.
    char stmt[100];
    stmt[0] = 'H';
    stmt[1] = 'i';
    stmt[2] = '!';
    stmt[3] = '\0'; // the null at the end of any string is a must.

    // The type specifier %s is for a c-style string that ends by a null character.
    printf("This is stmt: %s\n", stmt);

    /*
        The string.h library:
            -> provides a set of functions to work with c-style strings.
            -> Need to becareful when using the string functions and check how they work first before use.

            examples:
                strncpy(): copies a number of characters to a destination string from a source string.

        The ctype.h library:
            -> provides a set of functions to work with single characters.

            exampels:
                isalnum(): checks if a character is alphanumeric character.

    */
    char stmt2[10];
    // copy a number of characters from a string to another.
    strncpy(stmt2, stmt, 2);
    printf("This is stmt2: %s\n", stmt2);

    return 0;
}