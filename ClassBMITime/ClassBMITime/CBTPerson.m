//
//  BNRPerson.m
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/23/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "CBTPerson.h"

@implementation CBTPerson

// No longer need accessor implementations when you use properties
//- (float)heightInMeters {
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h {
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos {
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w {
//    _weightInKilos = w;
//}

- (float)bodyMassIndex {
    // accessing instance variables directly
    // return _weightInKilos / (_heightInMeters * _heightInMeters);
    // Use accessor methods instead of accessing instance variables directly
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
