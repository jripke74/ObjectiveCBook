//
//  main.m
//  VowelCounter
//
//  Created by Jeff Ripke on 10/23/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Hello, World";
        NSLog(@"%@ has %d vowels", string, [string vowelCount]);
    }
    return EXIT_SUCCESS;
}
