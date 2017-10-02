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
        NSURL *url = [NSURL URLWithString:@"https://www.gutenberg.org/cache/epub/205/pg205.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger startImmediately: YES];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:)
                                                                                    userInfo: nil repeats: YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return EXIT_SUCCESS;
}