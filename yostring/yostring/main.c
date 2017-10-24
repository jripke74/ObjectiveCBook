//
//  main.c
//  yostring
//
//  Created by Jeff Ripke on 10/24/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[]) {
    char x = 0x21; // '!'
    while (x <= 0x7e) { // '~'
        printf("%x is %c\n", x, x);
        x++;
    }
    return 0;
}
