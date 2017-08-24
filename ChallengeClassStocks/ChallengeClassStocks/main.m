//
//  main.m
//  ChallengeClassStocks
//
//  Created by Jeff Ripke on 8/24/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JARStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an instance of JARStockHolding
        JARStockHolding *stockOne = [[JARStockHolding alloc] init];
        JARStockHolding *stockTwo = [[JARStockHolding alloc] init];
        JARStockHolding *stockThree = [[JARStockHolding alloc] init];
        
        // Give the instance variables values using setters
        [stockOne setPurchaseSharePrice:1.2];
        [stockOne setCurrentSharePrice:2.22];
        [stockOne setNumberOfShares:30];
        [stockTwo setPurchaseSharePrice:44.4];
        [stockTwo setCurrentSharePrice:84.2];
        [stockTwo setNumberOfShares:12];
        [stockThree setPurchaseSharePrice:29.0];
        [stockThree setCurrentSharePrice:120.3];
        [stockThree setNumberOfShares:40];
        
        // create empty mutable array called stocks
        NSMutableArray *stocks = [NSMutableArray array];
        
        // add stocks to array
        [stocks addObject:stockOne];
        [stocks addObject:stockTwo];
        [stocks addObject:stockThree];
        
        // iterate throgh the stocks array, logging each stock
        for (JARStockHolding *stock in stocks) {
            NSLog(@"Curent stock value: $%.2f", stock.valueInDollars);
        }
    }
    return EXIT_SUCCESS;
}
