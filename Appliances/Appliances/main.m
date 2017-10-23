//
//  main.m
//  Appliances
//
//  Created by Jeff Ripke on 10/19/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Appliance *a = [[Appliance alloc] init];
        NSLog(@"a is %@", a);
        //[a setProductName:@"Washing Machine"];
        [a setValue:@"Washing Machine" forKey:@"productName"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
    }
    return EXIT_SUCCESS;
}