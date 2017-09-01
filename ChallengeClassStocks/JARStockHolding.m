//
//  JARStockHolding.m
//  ChallengeClassStocks
//
//  Created by Jeff Ripke on 8/24/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "JARStockHolding.h"

@implementation JARStockHolding



// calculate the total cost of shares when purchased
- (float)costInDollars {
    float purchasePrice = [self purchaseSharePrice];
    return [self numberOfShares] * purchasePrice;
}

// calculates the value of your total share on the current price per share
- (float)valueInDollars {
    float currentPrice = [self currentSharePrice];
    return [self numberOfShares] * currentPrice;
}
@end
