//
//  main.m
//  ChallengeNSArrayInterestingNames
//
//  Created by Jeff Ripke on 8/23/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Read in a file as a huge string (ignoring the posibility of an error)
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSString *nameWordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [nameWordString componentsSeparatedByString:@"\n"];
        
        // Go through the array one string at a time
        for (NSString *n in names) {
            for (NSString *w in words) {
                if (n.lowercaseString == w) {
                    NSLog(@"%@ = %@", n, w);
                }
            }
        }
    }
    return EXIT_SUCCESS;
}
