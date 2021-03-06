//
//  CBTEmployeee.m
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/25/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "CBTEmployee.h"
#import "CBTAsset.h"

// class extension
@interface CBTEmployee ()

{
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation CBTEmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAssets:(CBTAsset *)a {
    // Is assets nil?
    if (!_assets) {
        // create the array
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets {
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (CBTAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

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
    //return 19.0;
    float normalBMI = [super bodyMassIndex];
    return normalBMI;
}

- (NSString *)description {
    //return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
