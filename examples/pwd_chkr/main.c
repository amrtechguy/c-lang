/*
* Password strength checker
* 1. Takes a password string as input.
* 2. Checks its strength.
*
* Strength measurements:`
* . length 12-50
* . character variety (lowercase letters, uppercase letters, numbers, special characters)
* . not sequential (1234, abcd)
* . not repetitive (e.g., aaaaa)
* + no dictionary words included
* + not leaked before
* + brute-force resistant
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MIN_LENGTH (12)
#define MAX_LENGTH (50)
#define SEQUENCE_STEP (1)
#define REPEAT_STEP (1)

int is_num(char c);
int is_upper(char c);
int is_lower(char c);

int main() {
    // pwd
    char pwd[50];
    strcpy(pwd, "xx123ABBcxyzzPwd@@2025!");

    // the password info
    int pwd_length = strlen(pwd);
    printf("Password info:\n\t[password: %s - length: %llu characters - size: %llu bytes - Address: %p]\n", pwd, (pwd_length / sizeof(char)),strlen(pwd), pwd);

    // check the length
    printf("\nPassword length:\n");
    printf("\t-> Recommended length: (%d-%d)\n", MIN_LENGTH, MAX_LENGTH);
    printf("\t-> Analysis: (%d characters)\n", pwd_length);
    if((pwd_length < 12) | (pwd_length > 50)) {
        printf("\t-> Strength: - (weak)\n");
    } else {
        printf("\t-> Strength: + (good)\n");
    }

    // check character variety
    // . lowercase characters (at least 3)
    // . uppercase characters (at least 3)
    // . numbers (at least 3)
    // . special characters (at least 2)
    int lower_chars = 0;
    int upper_chars = 0;
    int decimal_chars = 0;
    int special_chars = 0;
    int other_chars = 0;

    for(int i = 0; i < pwd_length; i++) {
        if((pwd[i] >= 48) & (pwd[i] <= 57)) {
            decimal_chars++;
        } else if ((pwd[i] >= 65) & (pwd[i] <= 90)) {
            upper_chars++;
        } else if ((pwd[i] >= 97) & (pwd[i] <= 122)) {
            lower_chars++;
        } else if (
            ((pwd[i] >= 32) & (pwd[i] <= 47)) | 
            ((pwd[i] >= 58) & (pwd[i] <= 64)) | 
            ((pwd[i] >= 91) & (pwd[i] <= 96)) |
            ((pwd[i] >= 123) & (pwd[i] <= 126))
        ) {
            special_chars++;
        } else {
            other_chars++;
        }
    }

    printf("\nPassword variety:\n");
    printf("\t-> Recommended variation at least: numbers (3) - uppercase letters (3) - lowercase letters (3) - special characters (2)\n");
    printf("\t-> Analysis: (numbers: %d - uppercase letters: %d - lowercase letters: %d - special characters: %d)\n", decimal_chars, upper_chars, lower_chars, special_chars);
    if((special_chars >= 2) & (decimal_chars >= 3) & (upper_chars >= 3) & (lower_chars >= 3)) {
        printf("\t-> Strength: + (good)\n");
    } else {
        printf("\t-> Strength: - (weak)\n");
    }

    // check sequential characters
    int sequences = 0;
    for(int i = 0; i < pwd_length - 1; i++) {
        char current_chr = pwd[i];
        char next_chr = pwd[i + 1];
        // check the sequence
        if(current_chr + 1 == next_chr) {
            // check if the two characters belong to the same class
            if(is_num(current_chr) & is_num(next_chr)) {
                sequences++;
            } else if(is_upper(current_chr) & is_upper(next_chr)) {
                sequences++;
            } else if (is_lower(current_chr) & is_lower(next_chr)){
                sequences++;
            }
        }
    }

    printf("\nPassword sequence:\n");
    printf("\t-> Recommended not to use sequential characters (e.g., 12)\n");
    printf("\t-> Analysis: (%d sequences)\n", sequences);
    if(sequences) {
        printf("\t-> Strength: - (weak)\n");
    } else {
        printf("\t-> Strength: + (good)\n");
    }


    // check repetitive characters
    int repeats = 0;
    for(int i = 0; i < pwd_length - 1; i++) {
        char current_chr = pwd[i];
        char next_chr = pwd[i + 1];
        if(current_chr == next_chr) {
            repeats++;
        }
    }

    printf("\nPassword repetitive characters:\n");
    printf("\t-> Recommended not to repeat characters (e.g., aa)\n");
    printf("\t-> Analysis: (%d repeats)\n", repeats);
    if(repeats) {
        printf("\t-> Strength: - (weak)\n");
    } else {
        printf("\t-> Strength: + (good)\n");
    }

    return 0;
}

/*
* Checks if a character is a number.
*/
int is_num(char c) {
    int result = 0;
    if((c >= 48) & (c <= 57)) {
        result = 1;
    }
    return result;
}

/*
* Checks if a character is an uppercase letter.
*/
int is_upper(char c) {
    int result = 0;
    if((c >= 65) & (c <= 90)) {
        result = 1;
    }
    return result;
}

/*
* Checks if a character is an lowercase letter.
*/
int is_lower(char c) {
    int result = 0;
    if((c >= 97) & (c <= 122)) {
        result = 1;
    }
    return result;
}