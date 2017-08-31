//
//  JARPortfolio.h
//  ChallengeClassStocks
//
//  Created by Jeff Ripke on 8/31/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>
@class JARStockHolding;

@interface JARPortfolio : NSObject

{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;
- (float) valueOfPorfolio;
- (void) addStock:(JARStockHolding *)stock;

@end
