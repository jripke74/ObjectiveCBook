//
//  main.c
//  yostring
//
//  Created by Jeff Ripke on 10/24/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main (int argc, const char * argv[]) {
    char x = '!'; // '!'
    while (x <= 0x7e) { // '~'
        printf("%x is %c\n", x, x);
        x++;
    }
    // Get a pointer to 5 bytes of memory on the heap
    char *start = malloc(5);
    
    // Put 'L' in the first byte
    start[0] = 'L';
    
    // Put 'o' in the second byte
    start[1] = 'o';
    
    // Put 'v' in the third byte
    *(start + 2) = 'v';
    
    // Put 'e' in the fourth byte
    *(start + 3) = 'e';
    
    // Put zero in the fifth byte
    *(start + 5) = '\0';
    
    printf("%s has %zu characters\n", start, strlen(start));
    printf("The second letter is %c\n", start[1]);
    free(start);
    start = NULL;
    
    return 0;
}
