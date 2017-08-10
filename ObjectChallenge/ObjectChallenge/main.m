//
//  main.m
//  ObjectChallenge
//
//  Created by Jeff Ripke on 8/10/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *hostName = [host localizedName];
        NSLog(@"This computers name is %@.", hostName);
    }
    return EXIT_SUCCESS;
}
