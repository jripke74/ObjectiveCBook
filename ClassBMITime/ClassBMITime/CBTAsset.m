//
//  CBTAsset.m
//  ClassBMITime
//
//  Created by Jeff Ripke on 8/31/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "CBTAsset.h"

@implementation CBTAsset

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocation %@", self);
}

@end
