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
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
    }
    return EXIT_SUCCESS;
}
