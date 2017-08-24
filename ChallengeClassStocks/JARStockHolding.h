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
- (float)costInDollars;
- (float)valueInDollars;

// Setter method declarations
- (void)setCostInDollars:(float)d;
- (void)setValueInDollars:(float)v;

@end
