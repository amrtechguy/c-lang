#include <stdio.h>

/*
    Conditional statements in c:
        -> if
        -> switch
*/

int main() {
    /*
        if a condition evaluates to true, then the if or else if block will be executed.
            -> in c any value evaluates to true, except 0.
    */
   int temprature = 23; // in Celsius
   printf("The temprature is (%d).\n", temprature);

   if(temprature < 18) {
        printf("The temprature is cold.\n");
   } else if ((temprature >= 18) & (temprature <= 25)) {
        printf("The temprature is warm.\n");
   } else {
        printf("The temprature is hot.\n");
   }

   // The evaluation of a comparison expression is 1 for true or 0 for false.
   printf("The expression (temprature < 18) evaluates to (%d).\n", (temprature < 18));
   printf("The expression (temprature > 18) evaluates to (%d).\n", (temprature > 18));

   /*
        switch statement is limited, but more efficient than if statement.
            -> it takes an expression and compare it to a literal value.
   */
   int user_activity_status = 0; // 0 for inactive and 1 for active.
   switch(user_activity_status) { // the switch accepts expressions
        case 0: // the case must be a literal value
            printf("User is not active.\n");
            break;
        case 1:
            printf("User is active.\n");
            break;
        default:
            printf("User activity status is not recognized.\n");
   }

    return 0;
}
