//
//  main.m
//  Constants
//
//  Created by Jeff Ripke on 9/13/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));
    }
    return EXIT_SUCCESS;
}
