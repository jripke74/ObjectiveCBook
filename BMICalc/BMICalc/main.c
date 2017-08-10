//
//  main.c
//  BMICalc
//
//  Created by Jeff Ripke on 8/10/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// replace this with typedef
//struct Person {
//    float heightInMeters;
//    int weightInKilos;
//};

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;


float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    //struct Person mikey;
    Person mikey;
    mikey.heightInMeters = 1.97;
    mikey.weightInKilos = 110;
    
    //struct Person aaron;
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
//    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
//    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
//    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
//    printf("aaron weighs %d kilograms\n", aaron.weightInKilos);
    // BMI - Body Mass Index
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("mikey has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(aaron);
    printf("aaron has a BMI of %.2f\n", bmi);
    
    return EXIT_SUCCESS;
}
