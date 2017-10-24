//
//  main.c
//  bitwise
//
//  Created by Jeff Ripke on 10/23/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    unsigned char c = a | b;
    printf("Hex: %x | %x = %x\n", a, b, c);
    printf("Decimal: %d | %d = %d\n", a, b, c);
    
    unsigned char d = a & b;
    printf("Hex: %x & %x = %x\n", a, b, d);
    printf("Decimal: %d & %d = %d\n", a, b, d);
    
    unsigned char e = a ^ b;
    printf("Hex: %x ^ %x = %x\n", a, b, e);
    printf("Decimal: %d ^ %d = %d\n", a, b, c);
    
    unsigned char f = ~b;
    printf("Hex: The compliment of %x is %x\n", b, f);
    printf("Decimal: The comliment of %d is %d\n", b, f);
    
    
    return 0;
}
