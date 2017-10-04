//
//  main.m
//  VowelMovement
//
//  Created by Jeff Ripke on 10/3/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * arg[]) {
    @autoreleasepool {
        // create array of strings and a container for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        // create a list of characters to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // decalare the block variable
        //void (^devowelizer)(id, NSUInteger, BOOL *);
        ArrayEnumerationBlock devowelizer;
        
        // Compose a block and assign it to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            // Did I find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES; // prevents further iterations
                return; // ends this iteration
            }
            NSMutableString *newString = [NSMutableString stringWithString:string];
            // iterate over the array of vowels, replacing occurrences of each
            // with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        }; // End of block assignment
        
        // Iterate over the array with your block
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized string: %@", devowelizedStrings);
    }
    return EXIT_SUCCESS;
}
