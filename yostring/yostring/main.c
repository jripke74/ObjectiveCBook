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
    
    const char *start = "Love";
    printf("%s has %zu characters\n", start, strlen(start));
    printf("The second letter is %c\n", start[1]);
    start = NULL;
    
    return 0;
}
