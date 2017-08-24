//
//  JARStockHolding.h
//  ChallengeClassStocks
//
//  Created by Jeff Ripke on 8/24/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JARStockHolding : NSObject

{
    // three instance variables
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

// Getter method declarations
- (float)purchaseSharePrice;
- (float)currentSharePrice;
- (int)numberOfShares;

// Setter method declarations
- (void)setPurchaseSharePrice:(float)purchasePrice;
- (void)setCurrentSharePrice:(float)currentPrice;
- (void)setNumberOfShares:(int)numberShares;

// JARStockHolding has two methods that calculate cost and value of stock
// What did we/you pay for the stock
- (float)costInDollars;
// What is the current value
- (float)valueInDollars;
@end
