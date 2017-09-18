//
//  main.m
//  Callbacks
//
//  Created by Jeff Ripke on 9/18/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger = [[BNRLogger alloc] init];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:)
                                                                                    userInfo: nil repeats: YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return EXIT_SUCCESS;
}
