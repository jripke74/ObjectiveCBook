//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Jeff Ripke on 10/19/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance

- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end
