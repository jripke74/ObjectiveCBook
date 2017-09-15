//
//  main.m
//  Stringz
//
//  Created by Jeff Ripke on 9/15/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Jeff is cool!\n"];
        }
        
        // Declare a pointer to an NSError object, but do not instantiate it
        // The NSError instance will only be created if there is, in fact, an error.
        NSError *error;
        
        // Pass the NSEoror pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/tmph/cool.txt" atomically: YES encoding: NSUTF8StringEncoding error: &error];
        
        // Test the returned BOOL, and query the NSError if the write failed
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
    }
    return EXIT_SUCCESS;
}
