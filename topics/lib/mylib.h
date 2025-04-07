/**
 * The Library Interface
 * 
 * What are defined here are the only that the user can use in his program.
 * Other stuff are defined and implemented internally and specific only to the implementaion module.
 */

// this to prevent duplicate includes
#ifndef _MYLIB_
#define _MYLIB_

// constant
#define MAX_LETTERS 10

// type
struct userT {
    char name[50];
    int age;
};

// global variable
extern char letter[MAX_LETTERS];

// function prototype
extern int get_max(int a, int b);

#endif