//
//  BNRPerson.h
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/23/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject


{
    // BNPerson has two instance variables
    float _heightInMeters;
    int _weightInKilos;
}

// BNPerson has methods to read and set its instance variables

// Getter method declarations
- (float)heightInMeters;
- (int)weightInKilos;

// Setter method declarations
- (void)setHeightInMeters:(float)h;
- (void)setWeightInKilos:(int)w;

// BNPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;

@end
