//
//  main.c
//  HowMuchMemoryChallenge
//
//  Created by Jeff Ripke on 8/9/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <stdio.h>
#import <stdlib.h>

int main(int argc, const char * argn[]) {
    float i = 3.2;
    printf("A float is %zu bytes.\n", sizeof(i));
    return EXIT_SUCCESS;
}
