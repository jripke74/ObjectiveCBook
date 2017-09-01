//
//  JARPortfolio.m
//  ChallengeClassStocks
//
//  Created by Jeff Ripke on 8/31/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "JARPortfolio.h"
#import "JARStockHolding.h"
#import "JARForeignStockHolding.h"

@implementation JARPortfolio

- (void)setHoldings:(NSArray *)h {
    _holdings = [h mutableCopy];
}

- (NSArray *)holdings {
    return [_holdings copy];
}

- (void)addStock:(JARStockHolding *)stock {
    if (_holdings == nil) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:stock];
}

- (float)valueOfPorfolio {
    float sum = 0;
    for (JARStockHolding *stock in self.holdings) {
        sum += [stock valueInDollars];
    }
    return sum;
}

@end
