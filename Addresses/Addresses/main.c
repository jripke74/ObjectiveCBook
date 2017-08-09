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
    // %p is used for memory address and & next to the variable to get the value of the
    // memory address
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    *addressOfI = 92;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n", sizeof(i));
    // if your pointer is 4 bytes long, your program is running in 32-bit mode
    // if your pointer is 8 bytes long, your program is running in 64-bit mode
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    return EXIT_SUCCESS;
}
