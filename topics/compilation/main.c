/**
 * Compilation steps:
 * 
 * # c code (*.c) -> assembly IA32 (*.s)
 * -> gcc -Wall -m32 -S main.s main.c
 * 
 * # assembly IA32 (*.s) -> object binary file (*.o)
 * -> gcc -Wall -m32 -c main.o main.s
 * 
 * # object binary file (*.o) -> 32-bit executable file
 * -> gcc -Wall -m32 -o main main.o
 */

int main() {
    int x, y;
    x = 100;
    y = 200;
    
    return 0;
}