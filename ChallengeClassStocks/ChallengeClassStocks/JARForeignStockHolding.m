//
//  JARForeignStockHolding.m
//  ChallengeClassStocks
//
//  Created by Jeff Ripke on 8/29/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "JARForeignStockHolding.h"

@implementation JARForeignStockHolding

//float _conversionRate = 1.23;

- (float)costInDollars {
    float purchasePrice = [self purchaseSharePrice];
    float costInDollars = [self numberOfShares] * purchasePrice;
    float costInForeign = costInDollars * [self conversionRate];
    return costInForeign;
}

- (float)valueInDollars {
    float currentPrice = [self currentSharePrice];
    float costInDollars = [self numberOfShares] * currentPrice;
    float costInForeign = costInDollars * [self conversionRate];
    return costInForeign;
}

@end
