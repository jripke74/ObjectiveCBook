//
//  main.c
//  Addresses
//
//  Created by Jeff Ripke on 8/9/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <stdio.h>
#import <stdlib.h>

int main(int argc, const char * argv[]) {
    int i = 17;
    // %p is used for memory address and & next to the variable to get the value of the
    // memory address
    printf("i stores its value at %p\n", &i);
    return EXIT_SUCCESS;
}
