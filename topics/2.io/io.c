#include <stdio.h>

int main() {
    // c-lang supports different interfaces for I/O.
    // examples: standard I/O, File I/O.

    // Any c running program begins with 3 streams. 2 of them for writing to and 1 for reading from:
    // 1. stdin
    // 2. stdout
    // 3. stderr

    // C supports redirecting the I/O stream from standard to others like file.
    // terminal> a.out < in.txt `This redirects the input stream from standard to file`
    // terminal> a.out > in.txt `This redirects the output stream from standard to file`

    // When reading from a stream or writing to it, the position changes, so when reading or 
    // writing later, it continues from the last position it stopped at.
    // example of input stream -> ['H','e','l','l','o', '!', '\n', 'C', 'L', 'a', 'n', 'g']
    // the position starts at the beginning at offset 0 and moves forward with each byte is read.
    // If used getc() to read a single char from the standard input stream, the position will move to the next
    // offset 1 where the next reading will start from.

    //////////////////////////////////////////////////////////////////////////////////////

    // [1] Standard I/O stream
    
    // [1.1] <- Output: write chars, strings, and format strings to the standard output stream.

    printf("\n<- Writing to the standard output stream:\n");

    // a. write a single character
    putchar('H');

    // b. Write a string
    puts("ello from"); // writes a new line char at the end '\n'

    // c. Write a format string
    // String placeholders support different specifiers for: type (e.g. %s), different representation (e.g. %x), field width (e.g. %.2f). 
    printf(" %s.\n", "c-lang\0 the beatiful"); // %s stops writing at the NULL char '\0'.

    // [1.2] -> Input: read chars, strings, and format strings from the standard input stream.

    printf("\n-> Reading from the standard input stream:\n");

    // a. Read a single character
    char in_char;
    in_char = getchar();
    printf("char: (%d) %c\n", in_char, in_char);

    // b. Read a string
    char in_str[100];
    gets(in_str);
    printf("string: %s\n", in_str);

    // c. Read a format string
    char in_fstr[100];
    scanf("%s", in_fstr); // %s stops reading at the first whitespace.
    printf("format string: %s\n", in_fstr);
    
    //////////////////////////////////////////////////////////////////////////////////////

    // [2] File I/O stream
    
    // fopen() tries to open a file for reading "r", writing "w", or appending "a".
    // supports the relative and absolute file paths.
    // when writing, it overwrites the file if exist or create it if not exist.
    // on success: it returns a pointer to FILE type (FILE *).
    // on failure: it returns NULL.
    // failure causes: missing file to read or unallowed permission to read or write.
    // at the end of file stream there's a EOF char which is equal to -1.
    FILE *out_file = fopen("out.txt", "w");
    FILE *in_file = fopen("in.txt", "r");

    // check if the files are accessible for reading or writing before using them
    if(out_file == NULL) {
        printf("Error: fopen() failed to open for writing.\n");
        return 1;
    }

    if(in_file == NULL) {
        printf("Error: fopen() failed to open for reading.\n");
        return 1;
    }

    // [2.1] <- Output: write chars, strings, and format strings to the standard output stream.

    printf("\n<- Writing to the File output stream:\n");

    // a. write a single character
    fputc('H', out_file);

    // b. Write a string
    fputs("ello from\nThe C Language\0 This part will not be written.", out_file); // stops writing at the NULL char '\0'.

    // c. Write a format string
    // String placeholders support different specifiers for: types (e.g. %s), different representations (e.g. %x), field width (e.g. %.2f). 
    fprintf(out_file, " %s.\n", "THE BEAUTIFUL\0 This part will not be written."); // %s stops writing at the NULL char '\0'.

    // [2.2] -> Input: read chars, strings, and format strings from the file input stream.
    
    printf("\n-> Reading from the File input stream:\n");

    // a. Read a single character
    char in_f_char;
    in_f_char = fgetc(in_file);
    printf("char (%d): %c\n", in_f_char, in_f_char);

    // b. Read a string
    char in_f_str[100];
    fgets(in_f_str, 42, in_file);
    printf("string: %s\n", in_f_str);

    // c. Read a format string
    char in_f_fstr[100];
    fscanf(in_file, "%s", in_f_fstr); // %s stops reading at the first whitespace.
    printf("format string: %s\n", in_f_fstr);

    // File I/O stream position
    // I can change the current file stream position using rewind() and fseek()
    
    printf("\n-> Reading from the File input stream after rewind():\n");
    rewind(in_file); // change the position to the beginning of the stream.
    printf("char: %c\n", fgetc(in_file));

    printf("\n-> Reading from the File input stream after fseek():\n");
    fseek(in_file, 2, SEEK_SET); // change the position to a specific offset from the beginning of the stream.
    printf("char: %c\n", fgetc(in_file));

    fseek(in_file, 6, SEEK_CUR); // change the position to a specific offset from the current position.
    printf("char: %c\n", fgetc(in_file));

    fseek(in_file, -3, SEEK_END); // change the position to a specific offset from the end.
    printf("char: %c\n", fgetc(in_file));

    // close the open files
    fclose(out_file);
    fclose(in_file);

    return 0;
}