//
//  main.m
//  TimesTwo
//
//  Created by Jeff Ripke on 8/11/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSDate *currentTime = nil; // even though this is nil it still creates a heap
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
    }
    return EXIT_SUCCESS;
}
