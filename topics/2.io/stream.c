#include <stdio.h>

/*
    scanf("%d") -> scan for decimal value.
    scanf("%f") -> scan for float value.
    scanf("%s") -> scan for one word.

    Note: All these type specifiers with scanf() are not looking for whitespaces, so leading whitespaces are ignored and discarded.

    Whitespace characters:
        space ' '
        tab \t
        newline \n
        vertical tab \v
        carriage return \r
        form feed \f
    
    scanf(" ") -> read any whitespace.
*/

int main() {
    // single char
    char ch; 
    // string       -> a sequence of non-whitespace characters (one word).
    char s[100];
    // sentence     -> ends by a newline.
    char sen[100];

    // initialize
    ch = '\0';
    s[0] = '\0';
    sen[0] = '\0';

    // %c read a single character
    scanf("%c", &ch);
    // read a newline from the input stream
    scanf("\n");
    
    // scanf("%s") read a word (a sequence of non-whitespace characters) (stop at the first whitespace).
    // scanf("%s") scanf("%d") scanf("%f") skip and discard leading whitespace.
    // %s add a null at the end
    scanf("%s", &s);
    scanf("\n");

    // %[] add a null at the end.
    scanf("%[^\n]%*c", &sen);
    scanf("\n");

    // print
    printf("%c\n", ch);
    // printf("%s") print all characters and astop at the '\0'.
    printf("%s\n", s);
    printf("%s\n", sen);

    return 0;
}