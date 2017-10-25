//
//  main.c
//  Affirmation
//
//  Created by Jeff Ripke on 10/25/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    for (int i = 0; i < argc; i++) {
        printf("arg %d = %s\n", i, argv[i]);
    }
    return 0;
}
