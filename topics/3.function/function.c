#include <stdio.h>

/*
    Funtion prototype:
    -> allows using a function before it's implemented.
*/
int sum(int a, int b);

int main() {

    int a = 100;
    int b = 200;
    int total = sum(a, b);
    printf("%d + %d = %d\n", a, b, total);

    return 0;
}

/*
    Function parts:
        int
            -> return type.
            -> use void if it doesn't return.

        sum
            -> function name.

        (int a, int b)
            -> parameters list.
            -> all types are passed by values except the array that passes its base address only (pointer).
            -> parameter definition for:
                + array:        (int arr[]) or (int *arr)
                + struct        (struct studentT s )
                + pointer       (type *ptr)

        return
            -> must match the return type defined in the function header.
*/
int sum(int a, int b) {
    int total = 0;
    total = a + b;
    return total;
}