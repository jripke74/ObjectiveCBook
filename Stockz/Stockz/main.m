//
//  main.m
//  Stockz
//
//  Created by Jeff Ripke on 10/4/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        NSMutableDictionary *stock;
        NSArray *anArray = @[@"string1", @"string2", @"string3"];
        NSDictionary *aDictionary = @{@"aFloat": @1.2,
                                      @"anInteger1": [NSNumber numberWithInt:122],
                                      @"anInteger2": @65,
                                      @"aString": @"Hello World",
                                      @"anArray": @[@"Yellow", @"Red", @"Blue"]
                                      };
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
    }
    return EXIT_SUCCESS;
}
