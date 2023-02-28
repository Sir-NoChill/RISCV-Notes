//
// Created by ayrton on 27/02/23.
//

#include <stdio.h>
#include <stdlib.h>

/**
 * Write modular C-code that can be used to test each part of your RISCV program
 */

/**
 * Driver code for testing
 */
int main(int argc, char *argv[]) {
    /** YOUR CODE HERE **/

    char* rars = malloc(100);
    // Note: RARS command line usage is well documented on their wiki:
    //  https://github.com/TheThirdOne/rars/wiki/Using-the-command-line
    snprintf(rars, 100, "java -jar rars.jar common.s nc pa file.in >> out%d.txt", 3); // output files from rars
    system(rars);


    /** VERIFICATION CODE **/

    // read the lines in out.txt and store each one in a variable to test against in a loop
    FILE* fp = fopen("out3.txt", "r"); // change the name of the file as necessary
    char* line = NULL;
    while( fgets(line, 1000, fp) != NULL) {
        // do stuff with the line
        // compare to your expected output
    }
    return 0;
}