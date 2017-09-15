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
        [str writeToFile:@"/tmp/cool.txt" atomically: YES encoding: NSUTF8StringEncoding error: NULL];
        NSLog(@"done writing /tmp/cool.txt");
    }
    return EXIT_SUCCESS;
}
