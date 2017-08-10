//
//  main.c
//  PassByReferenceFunctions
//
//  Created by Jeff Ripke on 8/9/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *feetPointer, double *inchPointer) {
    // assume meters is non-negative
    
    // convert the number of meters into a floating-point number of feet
    double rawFeet = meters * 3.281;
    double feet = 0;
    
    // How many complete feet as an unsigned int?
    double fractionPart = modf(rawFeet, &feet);
    
    // Store the number of feet at the supplied address
    if (feetPointer) {
        printf("Storing %u to the address %p.\n", (unsigned int)feet, feetPointer);
        *feetPointer = feet;
    }
    
    // Calculate inches
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    // Store the number of inches at the supplied address
    if (inchPointer) {
        printf("Storing %.2f to the address %p\n", inches, inchPointer);
        *inchPointer = inches;
    }
    
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    return EXIT_SUCCESS;
}
