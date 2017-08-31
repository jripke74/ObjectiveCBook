//
//  main.m
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/23/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CBTEmployee.h"
#import "CBTAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an array of CBTEmployee objects
        NSMutableArray *emplyees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of CBTEmployee
            CBTEmployee *mikey = [[CBTEmployee alloc] init];
            
            // Give the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 / i/10.0;
            mikey.employeeID = i;
            
            // Put the employees in the employees array
            [emplyees addObject:mikey];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            // Create an asset
            CBTAsset *asset = [[CBTAsset alloc] init];
            
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [emplyees count];
            
            // Find that employee
            CBTEmployee *randomEmplyee = [emplyees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmplyee addAssets:asset];
        }
        
        NSLog(@"Employees: %@", emplyees);
        NSLog(@"Giving up ownership of one employee");
        
        [emplyees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of arrays");
        
        emplyees = nil;
    }
    
    return EXIT_SUCCESS;
}
