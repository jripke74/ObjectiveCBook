//
//  main.m
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/23/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
// comment out because CBTEmployee inherits from CBTPerson
//#import "CBTPerson.h"
#import "CBTEmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an instance of CBTEmployee
        CBTPerson *mikey = [[CBTEmployee alloc] init];
        
        // Give the instance variables interesting values using setters
//        [mikey setWeightInKilos:96];
//        [mikey setHeightInMeters:1.8];
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        
        // Log the instance variables using the getters
//        float height = [mikey heightInMeters];
//        int weight = [mikey weightInKilos];
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        // Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
        
    }
    return EXIT_SUCCESS;
}
