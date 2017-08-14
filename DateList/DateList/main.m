//
//  main.m
//  DateList
//
//  Created by Jeff Ripke on 8/14/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // Create an array containing all three
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        // Iterate over the array
//        NSUInteger dateCount = [dateList count];
//        for (int i = 0; i < dateCount; i++) {
//            NSDate *d = dateList[i];
//            NSLog(@"Here is a date: %@", d);
//        }

        
        // fast enumeration
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        // Print a couple of dates
//        NSLog(@"The first date is %@", dateList[0]);
//        NSLog(@"The third date is %@", dateList[2]);
        
        // How many dates are in the array?
        //NSLog(@"There are %lu dates", [dateList count]);
        
        //NSLog(@"The fourth date is %@", dateList[3]);  // crash!!!
    }
    return EXIT_SUCCESS;
}
