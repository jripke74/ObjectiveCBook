//
//  main.m
//  MoreMessagesChallenge
//
//  Created by Jeff Ripke on 8/11/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
        [dateComponents setYear:1974];
        [dateComponents setMonth:3];
        [dateComponents setDay:11];
        [dateComponents setHour:12];
        [dateComponents setMinute:10];
        [dateComponents setSecond:0];
        NSCalendar *gregorianCalender = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [gregorianCalender dateFromComponents:dateComponents];
        NSDate *currentTime = [NSDate date];
        double secondsAlive = [currentTime timeIntervalSinceDate:dateOfBirth];
        NSLog(@"I have been alive for %f seconds.", secondsAlive);
    }
    return EXIT_SUCCESS;
}
