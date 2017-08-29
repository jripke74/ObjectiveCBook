//
//  CBTEmployeee.m
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/25/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "CBTEmployee.h"

@implementation CBTEmployee

- (double)yearsOfEmployment {
    // Do I have a non-nil hireDate?
    if (self.hireDate) {
        // NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; // Seconds per year
    } else {
        return 0;
    }
}

- (float)bodyMassIndex {
    return 19.0;
}

@end
