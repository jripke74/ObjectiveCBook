//
//  main.m
//  VowelMovement
//
//  Created by Jeff Ripke on 10/3/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * arg[]) {
    @autoreleasepool {
        // create array of strings and a container for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
        NSMutableArray *dovowelizedStrings = [NSMutableArray array];
        // create a list of characters to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    }
    return EXIT_SUCCESS;
}
