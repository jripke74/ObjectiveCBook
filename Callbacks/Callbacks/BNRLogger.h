//
//  BNRLogger.h
//  Callbacks
//
//  Created by Jeff Ripke on 9/18/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end
