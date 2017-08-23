//
//  main.m
//  Groceries
//
//  Created by Jeff Ripke on 8/14/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *groceryList = [NSMutableArray array];
        [groceryList addObject:@"Loaf of bread"];
        [groceryList addObject:@"Container of milk"];
        [groceryList addObject:@"Stick of butter"];
        NSLog(@"My grocery list is:");
        for (NSString *item in groceryList) {
            NSLog(@"%@", item);
        }
    }
    return EXIT_SUCCESS;
}
