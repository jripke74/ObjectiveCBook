//
//  main.c
//  objectiveCBook
//
//  Created by Jeff Ripke on 8/7/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argn[]) {
    int i;
    for (i = 99; i > 0; i -= 3) {
        if (i % 5 == 0) {
            printf("Found one!\n");
        } else {
            printf("%d\n", i);
        }
    }
    return EXIT_SUCCESS;
}
