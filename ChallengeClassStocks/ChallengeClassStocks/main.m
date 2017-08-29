//
//  main.m
//  ChallengeClassStocks
//
//  Created by Jeff Ripke on 8/24/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JARStockHolding.h"
#import "JARForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an instance of JARStockHolding and JARForeignStockHolding
        JARStockHolding *stockOne = [[JARStockHolding alloc] init];
        JARStockHolding *stockTwo = [[JARStockHolding alloc] init];
        JARStockHolding *stockThree = [[JARStockHolding alloc] init];
        JARForeignStockHolding *stockFour = [[JARForeignStockHolding alloc] init];
        JARForeignStockHolding *stockFive = [[JARForeignStockHolding alloc] init];
        
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
        [stockFour setPurchaseSharePrice:44.4];
        [stockFour setCurrentSharePrice:84.2];
        [stockFour setNumberOfShares:12];
        [stockFour setConversionRate:1.5];
        [stockFive setPurchaseSharePrice:29.0];
        [stockFive setCurrentSharePrice:120.3];
        [stockFive setNumberOfShares:40];
        [stockFive setConversionRate:1.6];
        
        // create empty mutable array called stocks
        NSMutableArray *stocks = [NSMutableArray array];
        
        // add stocks to array
        [stocks addObject:stockOne];
        [stocks addObject:stockTwo];
        [stocks addObject:stockThree];
        [stocks addObject:stockFour];
        [stocks addObject:stockFive];
        
        // iterate throgh the stocks array, logging each stock
        for (JARStockHolding *stock in stocks) {
            NSLog(@"Curent stock value: $%.2f", stock.valueInDollars);
        }
    }
    return EXIT_SUCCESS;
}
