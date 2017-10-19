//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Jeff Ripke on 10/19/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "OwnedAppliance.h"

@interface OwnedAppliance() {
    NSMutableSet *_ownerNames;
}
@end

@implementation OwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn {
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n {
    if (self = [super initWithProductName:pn]) {
        _ownerNames = [[NSMutableSet alloc] init];
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    return self;
}

- (void)addOwnerName:(NSString *)n {
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n {
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames {
    return [_ownerNames copy];
}

@end
