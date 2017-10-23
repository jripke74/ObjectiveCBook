//
//  Appliance.m
//  Appliances
//
//  Created by Jeff Ripke on 10/19/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

- (instancetype)init {
    return [self initWithProductName:@"Unknown"];
}

- (instancetype)initWithProductName:(NSString *)pn {
    self = [super init];
    if (self) {
        _productName = [pn copy];
        _voltage = 120;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%d: %d volts>", self.voltage];
}



@end
