//
//  main.c
//  gradeInTheShade
//
//  Created by Jeff Ripke on 10/24/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // malloc(), free()

float averageFloats(float *data, int dataCount) {
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum / dataCount;
}

int main(int argc, const char * argv[]) {
    float *gradeBook = malloc(3 * sizeof(float));
    gradeBook[0] = 60.2;
    gradeBook[1] = 94.5;
    gradeBook[2] = 81.1;
    
    float average = averageFloats(gradeBook, 3);
    
    free(gradeBook);
    gradeBook = NULL;
    printf("Average = %.2f\n", average);
    
    return 0;
}
