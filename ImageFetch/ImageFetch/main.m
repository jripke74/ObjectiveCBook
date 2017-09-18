//
//  main.m
//  ImageFetch
//
//  Created by Jeff Ripke on 9/15/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"https://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:nil];
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return EXIT_FAILURE;
        }
        
        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google.png" options: NSDataWritingAtomic error: &error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return EXIT_FAILURE;
        }
        
        NSLog(@"Success!");
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes", (unsigned long)[readData length]);
    }
    return EXIT_SUCCESS;
}
