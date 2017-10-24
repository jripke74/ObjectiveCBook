//
//  main.c
//  gradeInTheShade
//
//  Created by Jeff Ripke on 10/24/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>

float averageFloats(float *data, int dataCount) {
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum / dataCount;
}

int main(int argc, const char * argv[]) {
    float gradeBook[3];
    gradeBook[0] = 60.2;
    gradeBook[1] = 94.5;
    gradeBook[2] = 81.1;
    
    float average = averageFloats(gradeBook, 3);
    
    printf("Average = %.2f\n", average);
    
    return 0;
}
