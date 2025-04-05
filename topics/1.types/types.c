#include <stdio.h>

int main()
{
    // All basic types in c are numeric types.
    // Each type has a specific memory size defined by the architecture.

    /*
        Basic types:
            char            -> stores a numeric value of an ascii character.
            short           -> short integer.
            int             -> decimal number without a floating point.
            long            -> long integer.
            long long
            float           -> stores a floating point number.
            double          -> the same as float, but more precised with bigger memory size.

        Notes:
            The c lang is a static programming language:
                -> The variable type in c must be defined before using the variable.
                -> Once the variable type is defined, it can not be changed later.
                -> The default value of any uninitialized variable will be garbage data.
                
            Signed/unsigned:
                -> All types are signed by default, so they can store positive or negative values.
                -> Use `unsigned` before the type name to store only unsigned number in it.
                    e.g unsigned int age = 22;
                -> Can not use unsigned with floating numbers.

        Operations:
            Arithmetic                       : + - / * %
            Logic                            : & |
                -> the result will be 0 for false or any other value for true.
            Comparison                       : == < > != <= >= !< !>
            Pre Increment/Decrement          : ++ --
                -> Increment/decrement first, then use the value.
            Post Increment/Decrement         : ++ --
                -> Use the value first, then increment/decrement.

        Notes:
            Performing arithmetic operations on the same types results in the same type.
            If different types used, then the compiler will perform implicit casting.
    */

    // store the numeric value of the character 'A'.
    char letter = 'A';
    printf("Character %c has the numeric value %d.\n", letter, letter);
    // can perform operations on the numeric value of the character.
    letter++; // increment the value by 1.
    printf("Increased the numeric value of character 'A' by 1 and the result is letter %c which has value of %d.\n", letter, letter);

    // performing operations on different types
    // the int value is converted into float before performing the operation and the result is a float.
    int earnings = 100;
    float expenses = 55.50;
    printf("earnings of %d - expenses of %g = %f\n", earnings, expenses, (earnings - expenses));

    unsigned int age = 99;
    printf("unsigned short age = %d\n", age);
    age = -10; // weird! the compiler didn't shout at me for assigning a negative value.
    printf("after assigning a negative value the age now is %d. Weird!?\n", age);
    
    return 0;
}