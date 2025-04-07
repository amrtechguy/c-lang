/**
 * The Library Implementation
 */

 // include the interface for using defined constants and types (structs).
#include "mylib.h"

// static means its scope is limited to this module (file) only.
// this is an internal function that the user of the library can not use directly.
static int max(int a, int b) {
    if(a > b) {
        return a;
    }
    return b;
}

// implement the function defined in the interface
int get_max(int a, int b) {
    return max(a, b);
}