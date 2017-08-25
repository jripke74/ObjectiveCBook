//
//  BNRPerson.h
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/23/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBTPerson : NSObject

// CBTPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// Use properties instead
//{
//    // CBTPerson has two instance variables
//    float _heightInMeters;
//    int _weightInKilos;
//}

// CBTPerson has methods to read and set its instance variables

// Getter method declarations
//- (float)heightInMeters;
//- (int)weightInKilos;
//
//// Setter method declarations
//- (void)setHeightInMeters:(float)h;
//- (void)setWeightInKilos:(int)w;

// CBTPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;

@end
