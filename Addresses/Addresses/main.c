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
    printf("i stores its value at %p\n", main);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    return EXIT_SUCCESS;
}
