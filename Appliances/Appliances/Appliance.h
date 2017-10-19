//
//  Appliance.h
//  Appliances
//
//  Created by Jeff Ripke on 10/19/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject

@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;
- (instancetype)initWithProductName:(NSString *)pn;

@end
